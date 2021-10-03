package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_2028:Boolean = false;
      
      private var var_2027:Boolean = false;
      
      private var var_1650:String = "";
      
      private var _type:String = "";
      
      private var var_2025:Boolean = false;
      
      private var var_2036:Number = 0;
      
      private var var_2033:Number = 0;
      
      private var var_2035:Number = 0;
      
      private var var_2037:String = "";
      
      private var var_2034:Number = 0;
      
      private var var_2026:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_2037 = param2;
         var_1650 = param3;
         var_2033 = param4;
         var_2035 = param5;
         var_2036 = param6;
         var_2034 = param7;
         var_2026 = param8;
         var_2027 = param9;
         var_2025 = param10;
         var_2028 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_2026;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_2028;
      }
      
      public function get localX() : Number
      {
         return var_2036;
      }
      
      public function get localY() : Number
      {
         return var_2034;
      }
      
      public function get canvasId() : String
      {
         return var_2037;
      }
      
      public function get altKey() : Boolean
      {
         return var_2027;
      }
      
      public function get spriteTag() : String
      {
         return var_1650;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_2033;
      }
      
      public function get screenY() : Number
      {
         return var_2035;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_2025;
      }
   }
}
