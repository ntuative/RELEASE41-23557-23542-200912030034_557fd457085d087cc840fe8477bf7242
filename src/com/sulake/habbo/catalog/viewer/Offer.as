package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer
   {
      
      public static const const_818:String = "price_type_none";
      
      public static const const_428:String = "pricing_model_multi";
      
      public static const const_308:String = "price_type_credits";
      
      public static const const_467:String = "price_type_credits_and_pixels";
      
      public static const const_349:String = "pricing_model_bundle";
      
      public static const const_373:String = "pricing_model_single";
      
      public static const const_502:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1267:String = "pricing_model_unknown";
      
      public static const const_366:String = "price_type_pixels";
       
      
      private var var_785:int;
      
      private var var_1195:int;
      
      private var var_784:int;
      
      private var var_388:String;
      
      private var var_545:String;
      
      private var var_1918:int;
      
      private var var_642:ICatalogPage;
      
      private var var_1194:String;
      
      private var var_387:IProductContainer;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         var_1195 = param1.offerId;
         var_1194 = param1.localizationId;
         var_785 = param1.priceInCredits;
         var_784 = param1.priceInPixels;
         var_642 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(_loc4_.productType);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_388;
      }
      
      public function get page() : ICatalogPage
      {
         return var_642;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1918 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_387;
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
      
      public function dispose() : void
      {
         var_1195 = 0;
         var_1194 = "";
         var_785 = 0;
         var_784 = 0;
         var_642 = null;
         if(var_387 != null)
         {
            var_387.dispose();
            var_387 = null;
         }
      }
      
      public function get priceType() : String
      {
         return var_545;
      }
      
      public function get previewCallbackId() : int
      {
         return var_1918;
      }
      
      public function get priceInCredits() : int
      {
         return var_785;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_388 = const_373;
            }
            else
            {
               var_388 = const_428;
            }
         }
         else if(param1.length > 1)
         {
            var_388 = const_349;
         }
         else
         {
            var_388 = const_1267;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_388)
         {
            case const_373:
               var_387 = new SingleProductContainer(this,param1);
               break;
            case const_428:
               var_387 = new MultiProductContainer(this,param1);
               break;
            case const_349:
               var_387 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_388);
         }
      }
      
      private function analyzePriceType() : void
      {
         if(var_785 > 0 && var_784 > 0)
         {
            var_545 = const_467;
         }
         else if(var_785 > 0)
         {
            var_545 = const_308;
         }
         else if(var_784 > 0)
         {
            var_545 = const_366;
         }
         else
         {
            var_545 = const_818;
         }
      }
   }
}
