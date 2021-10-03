package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1013:int;
      
      private var var_1276:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_1013 = param1;
         var_1276 = param2;
      }
      
      public function get itemType() : int
      {
         return var_1013;
      }
      
      public function get method_6() : String
      {
         return var_1276;
      }
   }
}
