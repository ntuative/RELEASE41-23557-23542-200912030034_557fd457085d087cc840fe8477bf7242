package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1789:int;
      
      private var var_2019:String;
      
      private var var_2020:int;
      
      private var var_2021:int;
      
      private var var_604:Boolean;
      
      private var var_1658:Boolean;
      
      private var var_372:int;
      
      private var var_1076:String;
      
      private var var_1655:int;
      
      private var var_1207:int;
      
      private var _ownerName:String;
      
      private var var_603:String;
      
      private var var_2023:int;
      
      private var var_2022:RoomThumbnailData;
      
      private var var_1662:Boolean;
      
      private var var_580:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_580 = new Array();
         super();
         var_372 = param1.readInteger();
         var_604 = param1.readBoolean();
         var_603 = param1.readString();
         _ownerName = param1.readString();
         var_1655 = param1.readInteger();
         var_1789 = param1.readInteger();
         var_2023 = param1.readInteger();
         var_1076 = param1.readString();
         var_2020 = param1.readInteger();
         var_1662 = param1.readBoolean();
         var_2021 = param1.readInteger();
         var_1207 = param1.readInteger();
         var_2019 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_580.push(_loc4_);
            _loc3_++;
         }
         var_2022 = new RoomThumbnailData(param1);
         var_1658 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_2023;
      }
      
      public function get roomName() : String
      {
         return var_603;
      }
      
      public function get userCount() : int
      {
         return var_1789;
      }
      
      public function get score() : int
      {
         return var_2021;
      }
      
      public function get eventCreationTime() : String
      {
         return var_2019;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1662;
      }
      
      public function get tags() : Array
      {
         return var_580;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1658;
      }
      
      public function get event() : Boolean
      {
         return var_604;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_580 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1207;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_2020;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_2022;
      }
      
      public function get doorMode() : int
      {
         return var_1655;
      }
      
      public function get flatId() : int
      {
         return var_372;
      }
      
      public function get description() : String
      {
         return var_1076;
      }
   }
}
