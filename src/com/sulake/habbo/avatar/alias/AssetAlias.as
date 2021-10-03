package com.sulake.habbo.avatar.alias
{
   public class AssetAlias
   {
       
      
      private var var_891:Boolean;
      
      private var _name:String;
      
      private var var_2013:String;
      
      private var var_890:Boolean;
      
      public function AssetAlias(param1:XML)
      {
         super();
         _name = String(param1.@name);
         var_2013 = String(param1.@link);
         var_890 = Boolean(parseInt(param1.@fliph));
         var_891 = Boolean(parseInt(param1.@flipv));
      }
      
      public function get flipH() : Boolean
      {
         return var_890;
      }
      
      public function get flipV() : Boolean
      {
         return var_891;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get link() : String
      {
         return var_2013;
      }
   }
}
