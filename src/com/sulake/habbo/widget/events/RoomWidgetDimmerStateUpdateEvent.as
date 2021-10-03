package com.sulake.habbo.widget.events
{
   public class RoomWidgetDimmerStateUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_62:String = "RWDSUE_DIMMER_STATE";
       
      
      private var var_934:int;
      
      private var _color:uint;
      
      private var var_935:int;
      
      private var var_1935:int;
      
      private var _state:int;
      
      public function RoomWidgetDimmerStateUpdateEvent(param1:int, param2:int, param3:int, param4:uint, param5:uint, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_62,param6,param7);
         _state = param1;
         var_1935 = param2;
         var_934 = param3;
         _color = param4;
         var_935 = param5;
      }
      
      public function get brightness() : uint
      {
         return var_935;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectId() : int
      {
         return var_934;
      }
      
      public function get state() : int
      {
         return _state;
      }
      
      public function get presetId() : int
      {
         return var_1935;
      }
   }
}
