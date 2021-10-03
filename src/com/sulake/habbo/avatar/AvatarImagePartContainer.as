package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_1603:int;
      
      private var var_1598:String;
      
      private var var_1501:IActionDefinition;
      
      private var var_1604:Boolean;
      
      private var _color:IPartColor;
      
      private var var_1601:String;
      
      private var var_1599:String;
      
      private var var_1600:Boolean;
      
      private var var_1597:ColorTransform;
      
      private var var_1602:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_1598 = param1;
         var_1601 = param2;
         var_1603 = param3;
         _color = param4;
         _frames = param5;
         var_1501 = param6;
         var_1600 = param7;
         var_1602 = param8;
         var_1599 = param9;
         var_1604 = param10;
         var_1597 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1600;
      }
      
      public function get partType() : String
      {
         return var_1601;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_1602;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_1604;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_1603;
      }
      
      public function get flippedPartType() : String
      {
         return var_1599;
      }
      
      public function get bodyPartId() : String
      {
         return var_1598;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1501;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_1597;
      }
   }
}