package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRedeemClubPromoMessage extends RoomWidgetMessage
   {
      
      public static const const_551:String = "rwrcp_redeem_club_promo";
       
      
      private var var_1717:String;
      
      private var var_1716:Boolean;
      
      public function RoomWidgetRedeemClubPromoMessage(param1:String, param2:String, param3:Boolean)
      {
         super(param1);
         var_1717 = param2;
         var_1716 = param3;
      }
      
      public function get code() : String
      {
         return var_1717;
      }
      
      public function get isTrial() : Boolean
      {
         return var_1716;
      }
   }
}
