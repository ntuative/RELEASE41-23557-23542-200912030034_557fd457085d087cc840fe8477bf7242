package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeDetailsMessage extends RoomWidgetMessage
   {
      
      public static const const_700:String = "RWGOI_MESSAGE_GET_BADGE_DETAILS";
       
      
      private var var_893:int = 0;
      
      public function RoomWidgetGetBadgeDetailsMessage(param1:int)
      {
         super(const_700);
         var_893 = param1;
      }
      
      public function get groupId() : int
      {
         return var_893;
      }
   }
}
