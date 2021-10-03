package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_108:int = 0;
      
      public static const const_109:int = 1;
      
      public static const const_98:int = 2;
      
      public static const const_665:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1152:int = 0;
      
      private var var_1639:String = "";
      
      private var var_193:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_193 = param2;
         var_1152 = param3;
         var_1639 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_1639;
      }
      
      public function get chatType() : int
      {
         return var_1152;
      }
      
      public function get text() : String
      {
         return var_193;
      }
   }
}
