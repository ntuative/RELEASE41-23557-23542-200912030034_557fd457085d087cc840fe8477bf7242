package com.sulake.habbo.moderation
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IDropMenuWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.moderator.ModMessageMessageComposer;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.events.Event;
   
   public class SendMsgsCtrl implements IDisposable, TrackedWindow
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1439:String;
      
      private var var_1221:int;
      
      private var var_769:IDropMenuWindow;
      
      private var var_55:ModerationManager;
      
      private var var_396:ITextFieldWindow;
      
      private var var_57:IFrameWindow;
      
      private var var_289:Boolean = true;
      
      public function SendMsgsCtrl(param1:ModerationManager, param2:int, param3:String)
      {
         super();
         var_55 = param1;
         var_1221 = param2;
         var_1439 = param3;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_306)
         {
            return;
         }
         if(!var_289)
         {
            return;
         }
         var_396.text = "";
         var_289 = false;
      }
      
      public function getFrame() : IFrameWindow
      {
         return var_57;
      }
      
      private function onSendMessageButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Sending message...");
         if(var_289 || false)
         {
            var_55.windowManager.alert("Alert","You must input a message to the user",0,onAlertClose);
            return;
         }
         var_55.connection.send(new ModMessageMessageComposer(var_1221,var_396.text));
         this.dispose();
      }
      
      public function getId() : String
      {
         return var_1439;
      }
      
      private function prepareMsgSelect(param1:IDropMenuWindow) : void
      {
         Logger.log("MSG TEMPLATES: " + var_55.initMsg.messageTemplates.length);
         param1.populate(var_55.initMsg.messageTemplates);
      }
      
      private function onClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         dispose();
      }
      
      private function onSelectTemplate(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_55)
         {
            return;
         }
         var _loc3_:String = var_55.initMsg.messageTemplates["null"];
         if(_loc3_ != null)
         {
            var_289 = false;
            var_396.text = _loc3_;
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
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
         var_769 = null;
         var_396 = null;
         var_55 = null;
      }
      
      private function onAlertClose(param1:IAlertDialog, param2:Event) : void
      {
         param1.dispose();
      }
      
      public function show() : void
      {
         var_57 = IFrameWindow(var_55.getXmlWindow("send_msgs"));
         var_57.caption = "Msg To: " + var_1439;
         var_57.findChildByName("send_message_but").procedure = onSendMessageButton;
         var_396 = ITextFieldWindow(var_57.findChildByName("message_input"));
         var_396.procedure = onInputClick;
         var_769 = IDropMenuWindow(var_57.findChildByName("msgTemplatesSelect"));
         prepareMsgSelect(var_769);
         var_769.procedure = onSelectTemplate;
         var _loc1_:IWindow = var_57.findChildByTag("close");
         _loc1_.procedure = onClose;
         var_57.visible = true;
      }
      
      public function getType() : int
      {
         return WindowTracker.const_1221;
      }
   }
}
