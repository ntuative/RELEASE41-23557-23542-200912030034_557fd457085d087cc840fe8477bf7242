package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_554:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_484:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_554);
         var_484 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return var_484;
      }
   }
}
