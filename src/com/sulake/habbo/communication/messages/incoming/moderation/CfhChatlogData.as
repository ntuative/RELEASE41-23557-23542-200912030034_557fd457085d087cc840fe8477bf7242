package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_875:int;
      
      private var var_1813:int;
      
      private var var_1403:int;
      
      private var var_116:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1403 = param1.readInteger();
         var_1813 = param1.readInteger();
         var_875 = param1.readInteger();
         var_116 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1403);
      }
      
      public function get reportedUserId() : int
      {
         return var_875;
      }
      
      public function get callerUserId() : int
      {
         return var_1813;
      }
      
      public function get callId() : int
      {
         return var_1403;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_116;
      }
   }
}
