package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1718:Array;
      
      private var var_1720:String;
      
      private var var_1721:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1720 = param1;
         var_1718 = param2;
         var_1721 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1720;
      }
      
      public function get yieldList() : Array
      {
         return var_1718;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_1721;
      }
   }
}
