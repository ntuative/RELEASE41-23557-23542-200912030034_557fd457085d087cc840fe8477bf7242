package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1064:int = 1;
      
      private static const const_1022:int = 3;
      
      private static const const_1066:int = 2;
      
      private static const const_1065:int = 15;
       
      
      private var var_818:int;
      
      private var var_235:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_235 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1066)
         {
            var_235 = new Array();
            var_235.push(const_1064);
            var_818 = const_1065;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_818 > 0)
         {
            --var_818;
         }
         if(var_818 == 0)
         {
            if(false)
            {
               super.setAnimation(var_235.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
