package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1325:String = "WN_CREATED";
      
      public static const const_894:String = "WN_DISABLE";
      
      public static const const_870:String = "WN_DEACTIVATED";
      
      public static const const_918:String = "WN_OPENED";
      
      public static const const_882:String = "WN_CLOSED";
      
      public static const const_896:String = "WN_DESTROY";
      
      public static const const_1534:String = "WN_ARRANGED";
      
      public static const const_473:String = "WN_PARENT_RESIZED";
      
      public static const const_892:String = "WN_ENABLE";
      
      public static const const_853:String = "WN_RELOCATE";
      
      public static const const_977:String = "WN_FOCUS";
      
      public static const const_797:String = "WN_PARENT_RELOCATED";
      
      public static const const_455:String = "WN_PARAM_UPDATED";
      
      public static const const_670:String = "WN_PARENT_ACTIVATED";
      
      public static const const_239:String = "WN_RESIZED";
      
      public static const const_891:String = "WN_CLOSE";
      
      public static const const_822:String = "WN_PARENT_REMOVED";
      
      public static const const_256:String = "WN_CHILD_RELOCATED";
      
      public static const const_592:String = "WN_ENABLED";
      
      public static const const_236:String = "WN_CHILD_RESIZED";
      
      public static const const_983:String = "WN_MINIMIZED";
      
      public static const const_644:String = "WN_DISABLED";
      
      public static const const_204:String = "WN_CHILD_ACTIVATED";
      
      public static const const_367:String = "WN_STATE_UPDATED";
      
      public static const const_567:String = "WN_UNSELECTED";
      
      public static const const_465:String = "WN_STYLE_UPDATED";
      
      public static const const_1532:String = "WN_UPDATE";
      
      public static const const_409:String = "WN_PARENT_ADDED";
      
      public static const const_632:String = "WN_RESIZE";
      
      public static const const_550:String = "WN_CHILD_REMOVED";
      
      public static const const_1523:String = "";
      
      public static const const_917:String = "WN_RESTORED";
      
      public static const const_284:String = "WN_SELECTED";
      
      public static const const_833:String = "WN_MINIMIZE";
      
      public static const const_823:String = "WN_FOCUSED";
      
      public static const const_1299:String = "WN_LOCK";
      
      public static const const_318:String = "WN_CHILD_ADDED";
      
      public static const const_841:String = "WN_UNFOCUSED";
      
      public static const const_392:String = "WN_RELOCATED";
      
      public static const const_782:String = "WN_DEACTIVATE";
      
      public static const const_1330:String = "WN_CRETAE";
      
      public static const const_836:String = "WN_RESTORE";
      
      public static const const_276:String = "WN_ACTVATED";
      
      public static const const_1133:String = "WN_LOCKED";
      
      public static const const_433:String = "WN_SELECT";
      
      public static const const_851:String = "WN_MAXIMIZE";
      
      public static const const_949:String = "WN_OPEN";
      
      public static const const_599:String = "WN_UNSELECT";
      
      public static const const_1423:String = "WN_ARRANGE";
      
      public static const const_1225:String = "WN_UNLOCKED";
      
      public static const const_1441:String = "WN_UPDATED";
      
      public static const const_984:String = "WN_ACTIVATE";
      
      public static const const_1197:String = "WN_UNLOCK";
      
      public static const const_973:String = "WN_MAXIMIZED";
      
      public static const const_908:String = "WN_DESTROYED";
      
      public static const const_846:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1512,cancelable);
      }
   }
}
