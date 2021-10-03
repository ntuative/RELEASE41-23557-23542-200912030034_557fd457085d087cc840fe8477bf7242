package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_116:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_1789:int;
      
      private var var_372:int;
      
      private var var_604:RoomData;
      
      private var var_1553:int;
      
      private var _ownerName:String;
      
      private var var_1800:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_372 = param1.readInteger();
         var_1789 = param1.readInteger();
         var_1800 = param1.readBoolean();
         var_1553 = param1.readInteger();
         _ownerName = param1.readString();
         var_116 = new RoomData(param1);
         var_604 = new RoomData(param1);
      }
      
      public function get userCount() : int
      {
         return var_1789;
      }
      
      public function get event() : RoomData
      {
         return var_604;
      }
      
      public function get room() : RoomData
      {
         return var_116;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_116 != null)
         {
            var_116.dispose();
            var_116 = null;
         }
         if(var_604 != null)
         {
            var_604.dispose();
            var_604 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_372;
      }
      
      public function get ownerId() : int
      {
         return var_1553;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_1800;
      }
   }
}
