package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2113:String;
      
      private var var_761:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_2113 = param1;
         var_761 = param2;
      }
      
      public function get postureType() : String
      {
         return var_2113;
      }
      
      public function get parameter() : String
      {
         return var_761;
      }
   }
}
