package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1936:String;
      
      private var var_543:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_543 = param1;
         var_1936 = param2;
      }
      
      public function get race() : String
      {
         return var_1936;
      }
      
      public function get figure() : String
      {
         return var_543;
      }
   }
}
