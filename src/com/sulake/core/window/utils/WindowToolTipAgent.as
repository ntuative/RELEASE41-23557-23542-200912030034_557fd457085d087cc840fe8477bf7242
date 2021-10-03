package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IInteractiveWindow;
   import com.sulake.core.window.components.IToolTipWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowType;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class WindowToolTipAgent extends WindowMouseOperator implements IWindowToolTipAgentService
   {
       
      
      protected var var_305:Timer;
      
      protected var var_863:String;
      
      protected var var_862:uint;
      
      protected var var_1036:Point;
      
      protected var var_237:IToolTipWindow;
      
      protected var var_1037:Point;
      
      public function WindowToolTipAgent(param1:DisplayObject)
      {
         var_1036 = new Point();
         var_1037 = new Point(20,20);
         var_862 = 500;
         super(param1);
      }
      
      override public function end(param1:IWindow) : IWindow
      {
         if(var_305 != null)
         {
            var_305.stop();
            var_305.removeEventListener(TimerEvent.TIMER,showToolTip);
            var_305 = null;
         }
         hideToolTip();
         return super.end(param1);
      }
      
      override public function operate(param1:int, param2:int) : void
      {
         if(_window && true)
         {
            _mouse.x = param1;
            _mouse.y = param2;
            getMousePositionRelativeTo(_window,_mouse,var_1036);
            if(var_237 != null && true)
            {
               var_237.x = param1 + var_1037.x;
               var_237.y = param2 + var_1037.y;
            }
         }
      }
      
      protected function showToolTip(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         if(var_305 != null)
         {
            var_305.reset();
         }
         if(_window && true)
         {
            if(var_237 == null || false)
            {
               var_237 = _window.context.create("undefined::ToolTip",var_863,WindowType.WINDOW_TYPE_TOOLTIP,_window.style,0 | 0,null,null,null,0,null,null) as IToolTipWindow;
            }
            _loc2_ = new Point();
            _window.getGlobalPosition(_loc2_);
            var_237.x = _loc2_.x + var_1036.x + var_1037.x;
            var_237.y = _loc2_.y + var_1036.y + var_1037.y;
         }
      }
      
      override public function begin(param1:IWindow, param2:uint = 0) : IWindow
      {
         if(param1 && !param1.disposed)
         {
            if(param1 is IInteractiveWindow)
            {
               var_863 = IInteractiveWindow(param1).toolTipCaption;
               var_862 = IInteractiveWindow(param1).toolTipDelay;
            }
            else
            {
               var_863 = param1.caption;
               var_862 = 500;
            }
            _mouse.x = var_122.mouseX;
            _mouse.y = var_122.mouseY;
            getMousePositionRelativeTo(param1,_mouse,var_1036);
            if(var_863 != null && var_863 != "")
            {
               if(var_305 == null)
               {
                  var_305 = new Timer(var_862,1);
                  var_305.addEventListener(TimerEvent.TIMER,showToolTip);
               }
               var_305.reset();
               var_305.start();
            }
         }
         return super.begin(param1,param2);
      }
      
      protected function hideToolTip() : void
      {
         if(var_237 != null && true)
         {
            var_237.destroy();
            var_237 = null;
         }
      }
   }
}
