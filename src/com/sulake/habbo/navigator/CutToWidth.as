package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToWidth implements BinarySearchTest
   {
       
      
      private var var_366:int;
      
      private var var_174:String;
      
      private var var_193:ITextWindow;
      
      public function CutToWidth()
      {
         super();
      }
      
      public function beforeSearch(param1:String, param2:ITextWindow, param3:int) : void
      {
         var_174 = param1;
         var_193 = param2;
         var_366 = param3;
      }
      
      public function test(param1:int) : Boolean
      {
         var_193.text = var_174.substring(0,param1) + "...";
         return var_193.textWidth > var_366;
      }
   }
}
