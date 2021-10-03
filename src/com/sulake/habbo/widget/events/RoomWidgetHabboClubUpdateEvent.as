package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_191:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_1994:Boolean = false;
      
      private var var_1996:int = 0;
      
      private var var_1995:int = 0;
      
      private var var_1997:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:Boolean = false, param6:Boolean = false)
      {
         super(const_191,param5,param6);
         var_1997 = param1;
         var_1995 = param2;
         var_1996 = param3;
         var_1994 = param4;
      }
      
      public function get pastPeriods() : int
      {
         return var_1996;
      }
      
      public function get periodsLeft() : int
      {
         return var_1995;
      }
      
      public function get daysLeft() : int
      {
         return var_1997;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_1994;
      }
   }
}
