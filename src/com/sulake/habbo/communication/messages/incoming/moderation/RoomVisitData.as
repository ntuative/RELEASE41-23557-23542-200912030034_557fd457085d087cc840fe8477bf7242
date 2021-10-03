package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_603:String;
      
      private var var_2046:int;
      
      private var var_1344:Boolean;
      
      private var _roomId:int;
      
      private var var_2045:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1344 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_603 = param1.readString();
         var_2045 = param1.readInteger();
         var_2046 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1344;
      }
      
      public function get roomName() : String
      {
         return var_603;
      }
      
      public function get enterMinute() : int
      {
         return var_2046;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_2045;
      }
   }
}
