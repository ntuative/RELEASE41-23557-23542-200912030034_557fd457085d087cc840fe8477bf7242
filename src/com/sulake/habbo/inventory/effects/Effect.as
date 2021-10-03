package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1826:Date;
      
      private var var_1156:Boolean = false;
      
      private var _type:int;
      
      private var var_351:BitmapData;
      
      private var var_254:Boolean = false;
      
      private var var_1161:int;
      
      private var var_530:int = 1;
      
      private var var_943:int;
      
      public function Effect()
      {
         super();
      }
      
      public function get icon() : BitmapData
      {
         return var_351;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --var_530;
         if(var_530 < 0)
         {
            var_530 = 0;
         }
         var_943 = var_1161;
         var_254 = false;
         var_1156 = false;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         var_943 = param1;
      }
      
      public function get isActive() : Boolean
      {
         return var_254;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         var_351 = param1;
      }
      
      public function get duration() : int
      {
         return var_1161;
      }
      
      public function get isInUse() : Boolean
      {
         return var_1156;
      }
      
      public function get effectsInInventory() : int
      {
         return var_530;
      }
      
      public function get iconImage() : BitmapData
      {
         return var_351;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !var_254)
         {
            var_1826 = new Date();
         }
         var_254 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         var_530 = param1;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(var_254)
         {
            _loc1_ = var_943 - (new Date().valueOf() - var_1826.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return var_943;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         var_1156 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1161 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
