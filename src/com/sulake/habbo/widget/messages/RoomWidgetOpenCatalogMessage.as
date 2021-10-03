package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_561:String = "RWOCM_CLUB_MAIN";
      
      public static const const_593:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_2130:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_593);
         var_2130 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_2130;
      }
   }
}
