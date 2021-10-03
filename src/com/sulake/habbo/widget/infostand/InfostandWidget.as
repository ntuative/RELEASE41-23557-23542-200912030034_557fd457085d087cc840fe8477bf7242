package com.sulake.habbo.widget.infostand
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetBadgeImageUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFurniInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetPetCommandsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserBadgesUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserFigureUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserTagsUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRoomObjectMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetUserActionMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class InfostandWidget extends RoomWidgetBase
   {
       
      
      private var var_1534:Array;
      
      private const const_1351:String = "infostand_user_view";
      
      private var var_277:InfoStandPetView;
      
      private var var_1098:InfoStandPetData;
      
      private var var_123:Timer;
      
      private var var_703:InfoStandFurniView;
      
      private var var_386:InfostandFurniData;
      
      private var var_310:InfoStandBotView;
      
      private var _mainContainer:IWindowContainer;
      
      private const const_1349:String = "infostand_bot_view";
      
      private var _config:IHabboConfigurationManager;
      
      private const const_1352:String = "infostand_pet_view";
      
      private const const_1350:String = "infostand_furni_view";
      
      private const const_1546:int = 3000;
      
      private var var_186:InfoStandUserView;
      
      private var var_402:InfostandUserData;
      
      public function InfostandWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IHabboConfigurationManager)
      {
         super(param1,param2,param3);
         _config = param4;
         var_703 = new InfoStandFurniView(this,const_1350);
         var_186 = new InfoStandUserView(this,const_1351);
         var_277 = new InfoStandPetView(this,const_1352);
         var_310 = new InfoStandBotView(this,const_1349);
         var_402 = new InfostandUserData();
         var_386 = new InfostandFurniData();
         var_1098 = new InfoStandPetData();
         var_123 = new Timer(const_1546);
         var_123.addEventListener(TimerEvent.TIMER,onUpdateTimer);
         mainContainer.visible = false;
      }
      
      private function onUserTags(param1:RoomWidgetUserTagsUpdateEvent) : void
      {
         if(param1.isOwnUser)
         {
            var_1534 = param1.tags;
         }
         if(param1.userId != userData.userId)
         {
            return;
         }
         if(param1.isOwnUser)
         {
            var_186.setTags(param1.tags);
         }
         else
         {
            var_186.setTags(param1.tags,var_1534);
         }
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_316,onRoomObjectSelected);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_207,onClose);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_225,onRoomObjectRemoved);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_118,onRoomObjectRemoved);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_199,onUserInfo);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_196,onUserInfo);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.BOT,onBotInfo);
         param1.addEventListener(RoomWidgetFurniInfoUpdateEvent.const_572,onFurniInfo);
         param1.addEventListener(RoomWidgetUserTagsUpdateEvent.const_137,onUserTags);
         param1.addEventListener(RoomWidgetUserFigureUpdateEvent.const_145,onUserFigureUpdate);
         param1.addEventListener(RoomWidgetUserBadgesUpdateEvent.const_106,onUserBadges);
         param1.addEventListener(RoomWidgetBadgeImageUpdateEvent.const_664,onBadgeImage);
         param1.addEventListener(RoomWidgetPetInfoUpdateEvent.const_147,onPetInfo);
         param1.addEventListener(RoomWidgetPetCommandsUpdateEvent.const_140,onPetCommands);
         super.registerUpdateEvents(param1);
      }
      
      override public function get mainWindow() : IWindow
      {
         return mainContainer;
      }
      
      private function onPetInfo(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         petData.setData(param1);
         userData.petRespectLeft = param1.petRespectLeft;
         var_277.update(petData);
         selectView(const_1352);
         if(var_123)
         {
            var_123.start();
         }
      }
      
      public function get userData() : InfostandUserData
      {
         return var_402;
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         userData.setData(param1);
         var_186.update(param1);
         selectView(const_1351);
         if(var_123)
         {
            var_123.stop();
         }
      }
      
      private function onUpdateTimer(param1:TimerEvent) : void
      {
         if(var_277 == null)
         {
            return;
         }
         messageListener.processWidgetMessage(new RoomWidgetUserActionMessage(RoomWidgetUserActionMessage.const_401,var_277.getCurrentPetId()));
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_316,onRoomObjectSelected);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_207,onClose);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_225,onRoomObjectRemoved);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_118,onRoomObjectRemoved);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_199,onUserInfo);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_196,onUserInfo);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.BOT,onBotInfo);
         param1.removeEventListener(RoomWidgetFurniInfoUpdateEvent.const_572,onFurniInfo);
         param1.removeEventListener(RoomWidgetUserTagsUpdateEvent.const_137,onUserTags);
         param1.removeEventListener(RoomWidgetUserFigureUpdateEvent.const_145,onUserFigureUpdate);
         param1.removeEventListener(RoomWidgetUserBadgesUpdateEvent.const_106,onUserBadges);
         param1.removeEventListener(RoomWidgetBadgeImageUpdateEvent.const_664,onBadgeImage);
         param1.removeEventListener(RoomWidgetPetInfoUpdateEvent.const_147,onPetInfo);
         param1.removeEventListener(RoomWidgetPetCommandsUpdateEvent.const_140,onPetCommands);
      }
      
      override public function dispose() : void
      {
         if(var_123)
         {
            var_123.stop();
         }
         var_123 = null;
         if(var_186)
         {
            var_186.dispose();
         }
         var_186 = null;
         if(var_703)
         {
            var_703.dispose();
         }
         var_703 = null;
         if(var_310)
         {
            var_310.dispose();
         }
         var_310 = null;
         if(var_277)
         {
            var_277.dispose();
         }
         var_277 = null;
         super.dispose();
      }
      
      private function onUserBadges(param1:RoomWidgetUserBadgesUpdateEvent) : void
      {
         if(param1.userId != userData.userId)
         {
            return;
         }
         userData.badges = param1.badges;
         var_186.clearBadges();
      }
      
      private function onFurniInfo(param1:RoomWidgetFurniInfoUpdateEvent) : void
      {
         furniData.setData(param1);
         var_703.update(param1);
         selectView(const_1350);
         if(var_123)
         {
            var_123.stop();
         }
      }
      
      private function onBotInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         userData.setData(param1);
         var_310.update(param1);
         selectView(const_1349);
         if(var_123)
         {
            var_123.stop();
         }
      }
      
      private function onUserFigureUpdate(param1:RoomWidgetUserFigureUpdateEvent) : void
      {
         if(!param1.isOwnUser)
         {
         }
         if(param1.userId != userData.userId)
         {
            return;
         }
         if(userData.isBot())
         {
            var_310.image = param1.image;
         }
         else
         {
            var_186.image = param1.image;
         }
      }
      
      private function onBadgeImage(param1:RoomWidgetBadgeImageUpdateEvent) : void
      {
         var _loc2_:int = userData.badges.indexOf(param1.badgeID);
         if(_loc2_ >= 0)
         {
            if(userData.isBot())
            {
               var_310.setBadgeImage(_loc2_,param1.badgeImage);
            }
            else
            {
               var_186.setBadgeImage(_loc2_,param1.badgeImage);
            }
            return;
         }
         if(param1.badgeID == userData.groupBadgeId)
         {
            var_186.setGroupBadgeImage(param1.badgeImage);
         }
      }
      
      private function selectView(param1:String) : void
      {
         hideChildren();
         var _loc2_:IWindow = mainContainer.getChildByName(param1) as IWindow;
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.visible = true;
         mainContainer.visible = true;
         mainContainer.width = _loc2_.width;
         mainContainer.height = _loc2_.height;
      }
      
      public function get mainContainer() : IWindowContainer
      {
         if(_mainContainer == null)
         {
            _mainContainer = windowManager.createWindow("infostand_main_container","",HabboWindowType.const_54,HabboWindowStyle.const_40,HabboWindowParam.const_40,new Rectangle(0,0,50,100)) as IWindowContainer;
            _mainContainer.tags.push("room_widget_infostand");
            _mainContainer.background = true;
            _mainContainer.color = 0;
         }
         return _mainContainer;
      }
      
      public function get furniData() : InfostandFurniData
      {
         return var_386;
      }
      
      private function onClose(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         close();
         if(var_123)
         {
            var_123.stop();
         }
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return _config;
      }
      
      private function onRoomObjectRemoved(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         var _loc2_:* = false;
         switch(param1.type)
         {
            case RoomWidgetRoomObjectUpdateEvent.const_118:
               _loc2_ = param1.id == var_386.id;
               break;
            case RoomWidgetRoomObjectUpdateEvent.const_225:
               if(var_186 != null && false && var_186.window.visible)
               {
                  _loc2_ = param1.id == var_402.userRoomId;
                  break;
               }
               if(var_277 != null && false && var_277.window.visible)
               {
                  _loc2_ = param1.id == var_1098.roomIndex;
                  break;
               }
               if(var_310 != null && false && var_310.window.visible)
               {
                  _loc2_ = param1.id == var_402.userRoomId;
                  break;
               }
         }
         if(_loc2_)
         {
            close();
         }
      }
      
      public function get petData() : InfoStandPetData
      {
         return var_1098;
      }
      
      public function refreshContainer() : void
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         while(_loc2_ < mainContainer.numChildren)
         {
            _loc1_ = mainContainer.getChildAt(_loc2_);
            if(_loc1_.visible)
            {
               mainContainer.width = _loc1_.width;
               mainContainer.height = _loc1_.height;
            }
            _loc2_++;
         }
      }
      
      private function hideChildren() : void
      {
         var _loc1_:int = 0;
         if(_mainContainer != null)
         {
            _loc1_ = 0;
            while(_loc1_ < _mainContainer.numChildren)
            {
               _mainContainer.getChildAt(_loc1_).visible = false;
               _loc1_++;
            }
         }
      }
      
      private function onPetCommands(param1:RoomWidgetPetCommandsUpdateEvent) : void
      {
         var_277.updateEnabledTrainingCommands(param1.id,param1.enabledCommands);
      }
      
      public function close() : void
      {
         hideChildren();
         if(var_123)
         {
            var_123.stop();
         }
      }
      
      private function onRoomObjectSelected(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         var _loc2_:RoomWidgetRoomObjectMessage = new RoomWidgetRoomObjectMessage(RoomWidgetRoomObjectMessage.const_312,param1.id,param1.category);
         messageListener.processWidgetMessage(_loc2_);
      }
   }
}
