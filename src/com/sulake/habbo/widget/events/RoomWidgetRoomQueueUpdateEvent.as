package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_427:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
      
      public static const const_295:String = "RWRQUE_VISITOR_QUEUE_STATUS";
       
      
      private var var_715:int;
      
      private var var_254:Boolean;
      
      private var var_1819:Boolean;
      
      private var var_1392:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_715 = param2;
         var_1819 = param3;
         var_254 = param4;
         var_1392 = param5;
      }
      
      public function get position() : int
      {
         return var_715;
      }
      
      public function get isActive() : Boolean
      {
         return var_254;
      }
      
      public function get isClubQueue() : Boolean
      {
         return var_1392;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return var_1819;
      }
   }
}
