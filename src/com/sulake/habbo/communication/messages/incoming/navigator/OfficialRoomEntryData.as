package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_834:int = 4;
      
      public static const TYPE_PUBLIC_SPACE:int = 3;
      
      public static const const_653:int = 2;
      
      public static const const_909:int = 1;
       
      
      private var var_2080:String;
      
      private var _disposed:Boolean;
      
      private var var_1789:int;
      
      private var var_2081:Boolean;
      
      private var var_815:String;
      
      private var var_822:PublicRoomData;
      
      private var _index:int;
      
      private var var_2084:String;
      
      private var _type:int;
      
      private var var_1616:String;
      
      private var var_823:GuestRoomData;
      
      private var var_2082:String;
      
      private var var_2083:int;
      
      public function OfficialRoomEntryData(param1:int, param2:IMessageDataWrapper)
      {
         super();
         _index = param1;
         var_2080 = param2.readString();
         var_2082 = param2.readString();
         var_2081 = param2.readInteger() == 1;
         var_2084 = param2.readString();
         var_815 = param2.readString();
         var_1789 = param2.readInteger();
         _type = param2.readInteger();
         if(_type == const_909)
         {
            var_1616 = param2.readString();
         }
         else if(_type == TYPE_PUBLIC_SPACE)
         {
            var_822 = new PublicRoomData(param2);
         }
         else if(_type == const_653)
         {
            var_823 = new GuestRoomData(param2);
         }
         else if(_type == const_834)
         {
            var_2083 = param2.readInteger();
         }
      }
      
      public function get tag() : String
      {
         return var_1616;
      }
      
      public function get userCount() : int
      {
         return var_1789;
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get showDetails() : Boolean
      {
         return var_2081;
      }
      
      public function get picText() : String
      {
         return var_2084;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_909)
         {
            return 0;
         }
         if(this.type == const_653)
         {
            return this.var_823.maxUserCount;
         }
         if(this.type == TYPE_PUBLIC_SPACE)
         {
            return this.var_822.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_2082;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_823 != null)
         {
            this.var_823.dispose();
            this.var_823 = null;
         }
         if(this.var_822 != null)
         {
            this.var_822.dispose();
            this.var_822 = null;
         }
      }
      
      public function get popupCaption() : String
      {
         return var_2080;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_823;
      }
      
      public function get picRef() : String
      {
         return var_815;
      }
      
      public function get flatCategoryId() : int
      {
         return var_2083;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_822;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
