package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_294:String = "WE_CHILD_RESIZED";
      
      public static const const_1122:String = "WE_CLOSE";
      
      public static const const_1196:String = "WE_DESTROY";
      
      public static const const_228:String = "WE_CHANGE";
      
      public static const const_1161:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1406:String = "WE_PARENT_RESIZE";
      
      public static const const_85:String = "WE_UPDATE";
      
      public static const const_1326:String = "WE_MAXIMIZE";
      
      public static const const_452:String = "WE_DESTROYED";
      
      public static const const_842:String = "WE_UNSELECT";
      
      public static const const_1121:String = "WE_MAXIMIZED";
      
      public static const const_1454:String = "WE_UNLOCKED";
      
      public static const const_451:String = "WE_CHILD_REMOVED";
      
      public static const const_206:String = "WE_OK";
      
      public static const const_43:String = "WE_RESIZED";
      
      public static const const_1118:String = "WE_ACTIVATE";
      
      public static const const_250:String = "WE_ENABLED";
      
      public static const const_424:String = "WE_CHILD_RELOCATED";
      
      public static const const_1219:String = "WE_CREATE";
      
      public static const const_652:String = "WE_SELECT";
      
      public static const const_155:String = "";
      
      public static const const_1443:String = "WE_LOCKED";
      
      public static const const_1401:String = "WE_PARENT_RELOCATE";
      
      public static const const_1519:String = "WE_CHILD_REMOVE";
      
      public static const const_1509:String = "WE_CHILD_RELOCATE";
      
      public static const const_1506:String = "WE_LOCK";
      
      public static const const_306:String = "WE_FOCUSED";
      
      public static const const_698:String = "WE_UNSELECTED";
      
      public static const const_929:String = "WE_DEACTIVATED";
      
      public static const const_1279:String = "WE_MINIMIZED";
      
      public static const const_1535:String = "WE_ARRANGED";
      
      public static const const_1392:String = "WE_UNLOCK";
      
      public static const const_1379:String = "WE_ATTACH";
      
      public static const const_1336:String = "WE_OPEN";
      
      public static const const_1141:String = "WE_RESTORE";
      
      public static const const_1496:String = "WE_PARENT_RELOCATED";
      
      public static const const_1185:String = "WE_RELOCATE";
      
      public static const const_1393:String = "WE_CHILD_RESIZE";
      
      public static const const_1513:String = "WE_ARRANGE";
      
      public static const const_1208:String = "WE_OPENED";
      
      public static const const_1105:String = "WE_CLOSED";
      
      public static const const_1433:String = "WE_DETACHED";
      
      public static const const_1439:String = "WE_UPDATED";
      
      public static const const_1153:String = "WE_UNFOCUSED";
      
      public static const const_350:String = "WE_RELOCATED";
      
      public static const const_1211:String = "WE_DEACTIVATE";
      
      public static const const_208:String = "WE_DISABLED";
      
      public static const const_678:String = "WE_CANCEL";
      
      public static const const_637:String = "WE_ENABLE";
      
      public static const const_1206:String = "WE_ACTIVATED";
      
      public static const const_1294:String = "WE_FOCUS";
      
      public static const const_1517:String = "WE_DETACH";
      
      public static const const_1177:String = "WE_RESTORED";
      
      public static const const_1112:String = "WE_UNFOCUS";
      
      public static const const_55:String = "WE_SELECTED";
      
      public static const const_1136:String = "WE_PARENT_RESIZED";
      
      public static const const_1311:String = "WE_CREATED";
      
      public static const const_1487:String = "WE_ATTACHED";
      
      public static const const_1253:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1512:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1288:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1512 = param3;
         var_1288 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1288;
      }
      
      public function get related() : IWindow
      {
         return var_1512;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1288 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
