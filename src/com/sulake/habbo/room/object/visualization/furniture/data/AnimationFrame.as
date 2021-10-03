package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_682:int = -1;
      
      public static const const_926:int = -1;
       
      
      private var _y:int = 0;
      
      private var var_2135:int = -1;
      
      private var var_90:int = 0;
      
      private var var_1282:int = 1;
      
      private var var_853:int = 1;
      
      private var var_2133:Boolean = false;
      
      private var var_2134:int = 0;
      
      private var _id:int = 0;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:int = -1, param7:int = 0)
      {
         super();
         _id = param1;
         var_90 = param2;
         _y = param3;
         var_2133 = param5;
         if(param4 < 0)
         {
            param4 = const_682;
         }
         var_853 = param4;
         var_1282 = param4;
         if(param6 >= 0)
         {
            var_2135 = param6;
            var_2134 = param7;
         }
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(var_853 > 0 && param1 > var_853)
         {
            param1 = var_853;
         }
         var_1282 = param1;
      }
      
      public function get frameRepeats() : int
      {
         return var_853;
      }
      
      public function get activeSequenceOffset() : int
      {
         return var_2134;
      }
      
      public function get id() : int
      {
         if(_id >= 0)
         {
            return _id;
         }
         return -_id * Math.random();
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(var_853 < 0)
         {
            return const_682;
         }
         return var_1282;
      }
      
      public function get activeSequence() : int
      {
         return var_2135;
      }
      
      public function get isLastFrame() : Boolean
      {
         return var_2133;
      }
      
      public function get x() : int
      {
         return var_90;
      }
   }
}
