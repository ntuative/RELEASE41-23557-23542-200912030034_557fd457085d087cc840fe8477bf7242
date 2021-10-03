package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_1615:Number = 0;
      
      private var var_1612:Number = 0;
      
      private var var_1613:Number = 0;
      
      private var var_1614:Number = 0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1612 = param1;
         var_1613 = param2;
         var_1615 = param3;
         var_1614 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1612;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1615;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1613;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1614;
      }
   }
}
