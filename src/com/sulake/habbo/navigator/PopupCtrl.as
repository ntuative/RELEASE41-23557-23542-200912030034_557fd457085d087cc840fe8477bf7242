package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class PopupCtrl
   {
       
      
      private var var_711:Timer;
      
      private var _navigator:HabboNavigator;
      
      private var var_1137:String;
      
      private var var_1606:int;
      
      private var var_1605:int;
      
      private var var_597:Timer;
      
      private var var_54:IWindowContainer;
      
      public function PopupCtrl(param1:HabboNavigator, param2:int, param3:int, param4:String)
      {
         var_711 = new Timer(500,1);
         var_597 = new Timer(100,1);
         super();
         _navigator = param1;
         var_1137 = param4;
         var_1605 = param2;
         var_1606 = param3;
         var_711.addEventListener(TimerEvent.TIMER,onDisplayTimer);
         var_597.addEventListener(TimerEvent.TIMER,onHideTimer);
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         if(var_54 != null)
         {
            var_54.visible = false;
         }
      }
      
      public function hideInstantly() : void
      {
         if(var_54 != null)
         {
            var_54.visible = false;
         }
         this.var_711.reset();
         this.var_597.reset();
      }
      
      private function onPopup(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1 as WindowMouseEvent == null)
         {
            return;
         }
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            this.var_597.reset();
         }
         else if(param1.type == WindowMouseEvent.const_28)
         {
            if(!Util.containsMouse(var_54))
            {
               this.closePopup();
            }
         }
      }
      
      public function closePopup() : void
      {
         var_597.reset();
         var_711.reset();
         var_597.start();
      }
      
      public function get navigator() : HabboNavigator
      {
         return _navigator;
      }
      
      public function refreshContent(param1:IWindowContainer) : void
      {
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         this.var_54.visible = true;
         this.var_54.activate();
      }
      
      public function showPopup(param1:IWindow) : void
      {
         if(var_54 == null)
         {
            var_54 = IWindowContainer(_navigator.getXmlWindow(var_1137));
            var_54.visible = false;
            var_54.setParamFlag(HabboWindowParam.const_34,true);
            var_54.procedure = onPopup;
         }
         Util.hideChildren(var_54);
         refreshContent(var_54);
         var_54.height = Util.getLowestPoint(var_54) + 5;
         var _loc2_:Point = new Point();
         param1.getGlobalPosition(_loc2_);
         var_54.x = _loc2_.x + var_1605 + param1.width;
         var_54.y = _loc2_.y - 0 + param1.height * 0.5;
         var _loc3_:Point = new Point();
         var_54.getGlobalPosition(_loc3_);
         if(_loc3_.x + var_54.width > var_54.desktop.width)
         {
            var_54.x = 0 + _loc2_.x + var_1606;
            refreshPopupArrows(var_54,false);
         }
         else
         {
            refreshPopupArrows(var_54,true);
         }
         if(true)
         {
            var_711.reset();
            var_711.start();
         }
         var_597.reset();
         var_54.activate();
      }
      
      public function get visible() : Boolean
      {
         return this.var_54 != null && this.var_54.visible;
      }
      
      private function refreshPopupArrow(param1:IWindowContainer, param2:Boolean, param3:Boolean) : void
      {
         var _loc4_:String = "popup_arrow_" + (!!param2 ? "left" : "right");
         var _loc5_:IBitmapWrapperWindow = IBitmapWrapperWindow(param1.findChildByName(_loc4_));
         if(!param3)
         {
            if(_loc5_ != null)
            {
               _loc5_.visible = false;
            }
         }
         else
         {
            if(_loc5_ == null)
            {
               _loc5_ = _navigator.getButton(_loc4_,_loc4_,null);
               _loc5_.setParamFlag(HabboWindowParam.const_68,false);
               param1.addChild(_loc5_);
            }
            _loc5_.visible = true;
            _loc5_.y = param1.height * 0.5 - _loc5_.height * 0.5;
            _loc5_.x = !!param2 ? int(1 - _loc5_.width) : int(param1.width - 1);
         }
      }
      
      private function refreshPopupArrows(param1:IWindowContainer, param2:Boolean) : void
      {
         refreshPopupArrow(param1,true,param2);
         refreshPopupArrow(param1,false,!param2);
      }
   }
}
