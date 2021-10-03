package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      private static const const_1085:int = 100;
      
      private static const const_1086:int = 200;
      
      private static const const_1088:int = 180;
      
      public static const const_972:int = 1;
      
      public static const const_471:int = 2;
      
      private static const const_1087:int = 250;
      
      private static const const_766:int = 5;
       
      
      private var var_571:BitmapData;
      
      private var var_300:Timer;
      
      private var var_23:IWindowContainer;
      
      private var var_689:BitmapData;
      
      private var var_299:Timer;
      
      private var var_81:IWindowContainer;
      
      private var var_1496:int = 2;
      
      private var _assets:IAssetLibrary;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         var_299 = new Timer(const_1087,1);
         var_300 = new Timer(const_1085,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         var_81 = param1;
         var_81.visible = false;
         _assets = param2;
         var_299.addEventListener(TimerEvent.TIMER,onDisplayTimer);
         var_300.addEventListener(TimerEvent.TIMER,onHideTimer);
         var _loc3_:BitmapDataAsset = _assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_689 = _loc3_.content as BitmapData;
         }
         _loc3_ = _assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_571 = _loc3_.content as BitmapData;
         }
      }
      
      public function hide() : void
      {
         var_81.visible = false;
         var_300.reset();
         var_299.reset();
         if(var_23 != null)
         {
            var_23.removeChild(var_81);
         }
      }
      
      public function hideDelayed() : void
      {
         var_300.reset();
         var_299.reset();
         var_300.start();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         hide();
      }
      
      public function dispose() : void
      {
         if(var_299 != null)
         {
            var_299.removeEventListener(TimerEvent.TIMER,onDisplayTimer);
            var_299.stop();
            var_299 = null;
         }
         if(var_300 != null)
         {
            var_300.removeEventListener(TimerEvent.TIMER,onHideTimer);
            var_300.stop();
            var_300 = null;
         }
         _assets = null;
         var_81 = null;
         var_23 = null;
         var_571 = null;
         var_689 = null;
      }
      
      public function showDelayed() : void
      {
         var_300.reset();
         var_299.reset();
         var_299.start();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         show();
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(var_81 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(var_23 != null)
         {
            var_23.removeChild(var_81);
         }
         var_23 = param1;
         var_1496 = param4;
         var _loc5_:ITextWindow = ITextWindow(var_81.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = var_81.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1088,param3.width),Math.min(const_1086,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (0 - _loc6_.width) / 2;
            var_81.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(var_81 == null || false)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(var_81.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_972:
               _loc2_.bitmap = var_689.clone();
               _loc2_.width = var_689.width;
               _loc2_.height = var_689.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = -1;
               break;
            case const_471:
               _loc2_.bitmap = var_571.clone();
               _loc2_.width = var_571.width;
               _loc2_.height = var_571.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = 1;
         }
         _loc2_.invalidate();
      }
      
      public function show() : void
      {
         var_300.reset();
         var_299.reset();
         if(var_23 == null)
         {
            return;
         }
         var_81.visible = true;
         var_23.addChild(var_81);
         refreshArrow(var_1496);
         switch(var_1496)
         {
            case const_972:
               var_81.x = 0 - const_766;
               break;
            case const_471:
               var_81.x = var_23.width + const_766;
         }
         var_81.y = (0 - 0) / 2;
      }
   }
}
