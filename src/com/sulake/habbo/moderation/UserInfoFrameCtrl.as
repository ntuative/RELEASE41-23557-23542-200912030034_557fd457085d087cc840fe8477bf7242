package com.sulake.habbo.moderation
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   
   public class UserInfoFrameCtrl implements IDisposable, TrackedWindow
   {
       
      
      private var var_728:UserInfoCtrl;
      
      private var _disposed:Boolean;
      
      private var _userId:int;
      
      private var var_57:IFrameWindow;
      
      private var var_55:ModerationManager;
      
      public function UserInfoFrameCtrl(param1:ModerationManager, param2:int)
      {
         super();
         var_55 = param1;
         _userId = param2;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_57 != null)
         {
            var_57.destroy();
            var_57 = null;
         }
         if(var_728 != null)
         {
            var_728.dispose();
            var_728 = null;
         }
         var_55 = null;
      }
      
      public function getId() : String
      {
         return "" + _userId;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function getType() : int
      {
         return WindowTracker.const_1134;
      }
      
      private function onClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         dispose();
      }
      
      public function show() : void
      {
         var_57 = IFrameWindow(var_55.getXmlWindow("user_info_frame"));
         var_57.caption = "User Info";
         var _loc1_:IWindow = var_57.findChildByTag("close");
         _loc1_.procedure = onClose;
         var_728 = new UserInfoCtrl(var_57,var_55,true);
         var_728.load(var_57.content,_userId);
         var_57.visible = true;
      }
      
      public function getFrame() : IFrameWindow
      {
         return var_57;
      }
   }
}
