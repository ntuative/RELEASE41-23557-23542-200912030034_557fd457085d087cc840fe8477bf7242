package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_723:Array;
      
      private var var_785:int;
      
      private var var_1194:String;
      
      private var var_1195:int;
      
      private var var_784:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         var_1195 = param1.readInteger();
         var_1194 = param1.readString();
         var_785 = param1.readInteger();
         var_784 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_723 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_723.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_723;
      }
      
      public function get priceInCredits() : int
      {
         return var_785;
      }
      
      public function get localizationId() : String
      {
         return var_1194;
      }
      
      public function get offerId() : int
      {
         return var_1195;
      }
      
      public function get priceInPixels() : int
      {
         return var_784;
      }
   }
}
