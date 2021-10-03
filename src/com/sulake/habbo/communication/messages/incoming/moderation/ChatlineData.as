package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1426:String;
      
      private var var_1575:int;
      
      private var var_1574:int;
      
      private var var_1576:int;
      
      private var var_1577:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_1575 = param1.readInteger();
         var_1576 = param1.readInteger();
         var_1574 = param1.readInteger();
         var_1577 = param1.readString();
         var_1426 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1426;
      }
      
      public function get hour() : int
      {
         return var_1575;
      }
      
      public function get minute() : int
      {
         return var_1576;
      }
      
      public function get chatterName() : String
      {
         return var_1577;
      }
      
      public function get chatterId() : int
      {
         return var_1574;
      }
   }
}
