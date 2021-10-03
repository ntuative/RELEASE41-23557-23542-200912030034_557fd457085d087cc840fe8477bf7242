package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_1868:int;
      
      private var var_1865:int;
      
      private var var_1869:Boolean;
      
      private var var_1867:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1866:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_1865 = param1;
         var_1868 = param2;
         var_1867 = param3;
         var_1866 = param4;
         var_1869 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1865,var_1868,var_1867,var_1866,int(var_1869)];
      }
      
      public function dispose() : void
      {
      }
   }
}
