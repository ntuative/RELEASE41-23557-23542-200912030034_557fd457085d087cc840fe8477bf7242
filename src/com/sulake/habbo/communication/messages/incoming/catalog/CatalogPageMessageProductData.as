package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_300:String = "e";
      
      public static const const_149:String = "i";
      
      public static const const_156:String = "s";
       
      
      private var var_880:String;
      
      private var var_1050:String;
      
      private var var_1052:int;
      
      private var var_1944:int;
      
      private var var_881:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1050 = param1.readString();
         var_1944 = param1.readInteger();
         var_880 = param1.readString();
         var_881 = param1.readInteger();
         var_1052 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_881;
      }
      
      public function get productType() : String
      {
         return var_1050;
      }
      
      public function get expiration() : int
      {
         return var_1052;
      }
      
      public function get furniClassId() : int
      {
         return var_1944;
      }
      
      public function get extraParam() : String
      {
         return var_880;
      }
   }
}
