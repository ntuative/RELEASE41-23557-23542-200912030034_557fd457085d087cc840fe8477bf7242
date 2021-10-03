package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1045:int = 31;
      
      private static const const_1022:int = 32;
      
      private static const const_753:int = 10;
      
      private static const const_489:int = 20;
       
      
      private var var_565:Boolean = false;
      
      private var var_235:Array;
      
      public function FurnitureHabboWheelVisualization()
      {
         var_235 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_565 = true;
            var_235 = new Array();
            var_235.push(const_1045);
            var_235.push(const_1022);
            return;
         }
         if(param1 > 0 && param1 <= const_753)
         {
            if(var_565)
            {
               var_565 = false;
               var_235 = new Array();
               var_235.push(const_753 + param1);
               var_235.push(const_489 + param1);
               var_235.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
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
