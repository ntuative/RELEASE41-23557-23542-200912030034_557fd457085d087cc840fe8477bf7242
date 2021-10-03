package com.sulake.habbo.help
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.help.cfh.data.CallForHelpData;
   import com.sulake.habbo.help.cfh.data.UserRegistry;
   import com.sulake.habbo.help.enum.HabboHelpViewEnum;
   import com.sulake.habbo.help.help.HelpUI;
   import com.sulake.habbo.help.help.data.FaqIndex;
   import com.sulake.habbo.help.tutorial.TutorialUI;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboToolbar;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboHelp extends Component implements IHabboHelp
   {
       
      
      private var var_2032:UserRegistry;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_140:TutorialUI;
      
      private var var_1479:IHabboLocalizationManager;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_63:HelpUI;
      
      private var var_1480:IHabboConfigurationManager;
      
      private var var_198:IHabboToolbar;
      
      private var var_619:IHabboCommunicationManager;
      
      private var var_813:FaqIndex;
      
      private var var_1524:String = "";
      
      private var var_1435:IncomingMessages;
      
      private var var_1249:CallForHelpData;
      
      public function HabboHelp(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         var_1249 = new CallForHelpData();
         var_2032 = new UserRegistry();
         super(param1,param2,param3);
         _assetLibrary = param3;
         var_813 = new FaqIndex();
         queueInterface(new IIDHabboWindowManager(),onWindowManagerReady);
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return var_198;
      }
      
      public function tellUI(param1:String, param2:* = null) : void
      {
         if(var_63 != null)
         {
            var_63.tellUI(param1,param2);
         }
      }
      
      private function toggleHelpUI() : void
      {
         if(var_63 == null)
         {
            if(!createHelpUI())
            {
               return;
            }
         }
         var_63.toggleUI();
      }
      
      private function removeTutorialUI() : void
      {
         if(var_140 != null)
         {
            var_140.dispose();
            var_140 = null;
         }
      }
      
      public function get ownUserName() : String
      {
         return var_1524;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return _windowManager;
      }
      
      public function reportUser(param1:int, param2:String) : void
      {
         var_1249.reportedUserId = param1;
         var_1249.reportedUserName = param2;
         var_63.showUI(HabboHelpViewEnum.const_320);
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return var_1479;
      }
      
      private function onRoomSessionEvent(param1:RoomSessionEvent) : void
      {
         switch(param1.type)
         {
            case RoomSessionEvent.const_89:
               if(var_63 != null)
               {
                  var_63.setRoomSessionStatus(true);
               }
               if(var_140 != null)
               {
                  var_140.setRoomSessionStatus(true);
               }
               break;
            case RoomSessionEvent.const_94:
               if(var_63 != null)
               {
                  var_63.setRoomSessionStatus(false);
               }
               if(var_140 != null)
               {
                  var_140.setRoomSessionStatus(false);
               }
               userRegistry.unregisterRoom();
         }
      }
      
      public function enableCallForGuideBotUI() : void
      {
         if(var_63 != null)
         {
            var_63.updateCallForGuideBotUI(true);
         }
      }
      
      public function get userRegistry() : UserRegistry
      {
         return var_2032;
      }
      
      public function showCallForHelpResult(param1:String) : void
      {
         if(var_63 != null)
         {
            var_63.showCallForHelpResult(param1);
         }
      }
      
      override public function dispose() : void
      {
         if(var_63 != null)
         {
            var_63.dispose();
            var_63 = null;
         }
         if(var_140 != null)
         {
            var_140.dispose();
            var_140 = null;
         }
         var_1435 = null;
         if(var_813 != null)
         {
            var_813.dispose();
            var_813 = null;
         }
         if(_windowManager)
         {
            _windowManager.release(new IIDHabboWindowManager());
            _windowManager = null;
         }
         super.dispose();
      }
      
      private function setHabboToolbarIcon() : void
      {
         if(var_198 != null)
         {
            var_198.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_110,HabboToolbarIconEnum.HELP));
         }
      }
      
      private function createTutorialUI() : Boolean
      {
         if(var_140 == null && _assetLibrary != null && _windowManager != null)
         {
            var_140 = new TutorialUI(this);
         }
         return var_140 != null;
      }
      
      private function createHelpUI() : Boolean
      {
         if(var_63 == null && _assetLibrary != null && _windowManager != null)
         {
            var_63 = new HelpUI(this,_assetLibrary,_windowManager,var_1479,var_198);
         }
         return var_63 != null;
      }
      
      public function set ownUserName(param1:String) : void
      {
         var_1524 = param1;
      }
      
      public function get callForHelpData() : CallForHelpData
      {
         return var_1249;
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         _windowManager = IHabboWindowManager(param2);
         queueInterface(new IIDHabboCommunicationManager(),onCommunicationManagerReady);
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_1479 = IHabboLocalizationManager(param2);
         queueInterface(new IIDHabboConfigurationManager(),onConfigurationManagerReady);
      }
      
      public function updateTutorial(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         if(param1 && param2 && param3)
         {
            removeTutorialUI();
            return;
         }
         if(var_140 == null)
         {
            if(!createTutorialUI())
            {
               return;
            }
         }
         var_140.update(param1,param2,param3);
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_619 = IHabboCommunicationManager(param2);
         var_1435 = new IncomingMessages(this,var_619);
         queueInterface(new IIDHabboToolbar(),onToolbarReady);
      }
      
      public function showUI(param1:String = null) : void
      {
         if(var_63 != null)
         {
            var_63.showUI(param1);
         }
      }
      
      public function sendMessage(param1:IMessageComposer) : void
      {
         if(var_619 != null && param1 != null)
         {
            var_619.getHabboMainConnection(null).send(param1);
         }
      }
      
      public function getFaq() : FaqIndex
      {
         return var_813;
      }
      
      public function disableCallForGuideBotUI() : void
      {
         if(var_63 != null)
         {
            var_63.updateCallForGuideBotUI(false);
         }
      }
      
      public function hideUI() : void
      {
         if(var_63 != null)
         {
            var_63.hideUI();
         }
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_198 = IHabboToolbar(param2);
         queueInterface(new IIDHabboLocalizationManager(),onLocalizationManagerReady);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_1480 = IHabboConfigurationManager(param2);
         queueInterface(new IIDHabboRoomSessionManager(),onRoomSessionManagerReady);
      }
      
      public function get tutorialUI() : TutorialUI
      {
         return var_140;
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_77)
         {
            setHabboToolbarIcon();
            return;
         }
         if(param1.type == HabboToolbarEvent.const_56)
         {
            if(param1.iconId == HabboToolbarIconEnum.HELP)
            {
               toggleHelpUI();
               return;
            }
         }
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:IRoomSessionManager = IRoomSessionManager(param2);
         _loc3_.events.addEventListener(RoomSessionEvent.const_89,onRoomSessionEvent);
         _loc3_.events.addEventListener(RoomSessionEvent.const_94,onRoomSessionEvent);
         var_198.events.addEventListener(HabboToolbarEvent.const_77,onHabboToolbarEvent);
         var_198.events.addEventListener(HabboToolbarEvent.const_56,onHabboToolbarEvent);
         createHelpUI();
         setHabboToolbarIcon();
      }
      
      public function showCallForHelpReply(param1:String) : void
      {
         if(var_63 != null)
         {
            var_63.showCallForHelpReply(param1);
         }
      }
      
      public function getConfigurationKey(param1:String, param2:String = null, param3:Dictionary = null) : String
      {
         if(var_1480 == null)
         {
            return param1;
         }
         return var_1480.getKey(param1,param2,param3);
      }
   }
}
