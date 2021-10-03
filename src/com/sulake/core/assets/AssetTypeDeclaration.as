package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_1591:Class;
      
      private var var_1592:Class;
      
      private var var_1593:String;
      
      private var var_1065:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_1593 = param1;
         var_1592 = param2;
         var_1591 = param3;
         if(rest == null)
         {
            var_1065 = new Array();
         }
         else
         {
            var_1065 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_1591;
      }
      
      public function get assetClass() : Class
      {
         return var_1592;
      }
      
      public function get mimeType() : String
      {
         return var_1593;
      }
      
      public function get fileTypes() : Array
      {
         return var_1065;
      }
   }
}
