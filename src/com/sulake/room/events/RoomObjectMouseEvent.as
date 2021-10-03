package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1467:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1414:String = "ROE_MOUSE_ENTER";
      
      public static const const_391:String = "ROE_MOUSE_MOVE";
      
      public static const const_1507:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_216:String = "ROE_MOUSE_CLICK";
      
      public static const const_395:String = "ROE_MOUSE_DOWN";
       
      
      private var var_2025:Boolean;
      
      private var var_2028:Boolean;
      
      private var var_2027:Boolean;
      
      private var var_2026:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_2027 = param4;
         var_2026 = param5;
         var_2025 = param6;
         var_2028 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_2028;
      }
      
      public function get altKey() : Boolean
      {
         return var_2027;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_2026;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_2025;
      }
   }
}
