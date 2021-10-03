package com.sulake.core.window.graphics.renderer
{
   import flash.geom.Rectangle;
   
   public class SkinLayoutEntity implements ISkinLayoutEntity
   {
      
      public static const const_248:uint = 1;
      
      public static const const_426:uint = 0;
      
      public static const const_784:uint = 8;
      
      public static const const_241:uint = 4;
      
      public static const const_470:uint = 2;
       
      
      private var var_385:uint;
      
      private var var_1761:uint;
      
      private var _color:uint;
      
      private var _name:String;
      
      private var var_1760:uint;
      
      private var var_104:Rectangle;
      
      private var var_580:Array;
      
      private var _id:uint;
      
      public function SkinLayoutEntity(param1:uint, param2:String, param3:Rectangle, param4:uint = 4.294967295E9, param5:uint = 100, param6:uint = 0, param7:uint = 0)
      {
         super();
         _id = param1;
         _name = param2;
         var_104 = param3;
         _color = param4;
         var_385 = param5;
         var_1761 = param6;
         var_1760 = param7;
         var_580 = new Array();
      }
      
      public function get scaleH() : uint
      {
         return var_1761;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get blend() : uint
      {
         return var_385;
      }
      
      public function get scaleV() : uint
      {
         return var_1760;
      }
      
      public function get tags() : Array
      {
         return var_580;
      }
      
      public function get id() : uint
      {
         return _id;
      }
      
      public function dispose() : void
      {
         var_104 = null;
         var_580 = null;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get region() : Rectangle
      {
         return var_104;
      }
   }
}
