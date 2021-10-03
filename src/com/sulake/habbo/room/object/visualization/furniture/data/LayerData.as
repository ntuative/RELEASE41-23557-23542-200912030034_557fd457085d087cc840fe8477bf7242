package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_416:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_546:int = 0;
      
      public static const const_796:int = 2;
      
      public static const const_808:int = 1;
      
      public static const const_585:Boolean = false;
      
      public static const const_577:String = "";
      
      public static const const_364:int = 0;
      
      public static const const_348:int = 0;
      
      public static const const_365:int = 0;
       
      
      private var var_1967:int = 0;
      
      private var var_1616:String = "";
      
      private var var_1330:int = 0;
      
      private var var_1969:int = 0;
      
      private var var_1968:Number = 0;
      
      private var var_1617:int = 255;
      
      private var var_1970:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_1967;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1330 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_1968;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_1969 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_1967 = param1;
      }
      
      public function get tag() : String
      {
         return var_1616;
      }
      
      public function get alpha() : int
      {
         return var_1617;
      }
      
      public function get ink() : int
      {
         return var_1330;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_1968 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_1969;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_1970 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_1970;
      }
      
      public function set tag(param1:String) : void
      {
         var_1616 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1617 = param1;
      }
   }
}
