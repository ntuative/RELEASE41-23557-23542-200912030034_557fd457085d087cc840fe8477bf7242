package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_669:IWindowContainer;
      
      private var var_983:ITextWindow;
      
      private var var_202:RoomSettingsCtrl;
      
      private var var_1238:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var var_476:Timer;
      
      private var var_1235:ITextWindow;
      
      private var var_333:IWindowContainer;
      
      private var var_2016:IWindowContainer;
      
      private var var_2015:ITextWindow;
      
      private var var_809:IWindowContainer;
      
      private var var_1477:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_603:ITextWindow;
      
      private var var_1476:IWindowContainer;
      
      private var var_1237:IWindowContainer;
      
      private var var_807:ITextWindow;
      
      private var var_984:ITextFieldWindow;
      
      private var var_294:IWindowContainer;
      
      private var var_808:ITextWindow;
      
      private var var_1474:IButtonWindow;
      
      private var var_982:ITextWindow;
      
      private var var_2205:int;
      
      private var var_1236:IContainerButtonWindow;
      
      private var var_810:IWindowContainer;
      
      private var var_1240:ITextWindow;
      
      private var var_1239:IContainerButtonWindow;
      
      private var var_1475:ITextWindow;
      
      private var var_1473:IButtonWindow;
      
      private var var_964:TagRenderer;
      
      private var var_2017:ITextWindow;
      
      private var var_334:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_670:ITextWindow;
      
      private var var_268:RoomThumbnailCtrl;
      
      private var var_1241:IContainerButtonWindow;
      
      private var var_2014:IWindowContainer;
      
      private var var_269:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_334 = new RoomEventViewCtrl(_navigator);
         var_202 = new RoomSettingsCtrl(_navigator,this,true);
         var_268 = new RoomThumbnailCtrl(_navigator);
         var_964 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_202);
         var_476 = new Timer(6000,1);
         var_476.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_202.active = true;
         this.var_334.active = false;
         this.var_268.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1477.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1473.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1476.visible = Util.hasVisibleChildren(var_1476);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_603.text = param1.roomName;
         var_603.height = NaN;
         _ownerName.text = param1.ownerName;
         var_807.text = param1.description;
         var_964.refreshTags(var_333,param1.tags);
         var_807.visible = false;
         if(param1.description != "")
         {
            var_807.height = NaN;
            var_807.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_333,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_333,"thumb_down",_loc3_,onThumbDown,0);
         var_2015.visible = _loc3_;
         var_808.visible = !_loc3_;
         var_1475.visible = !_loc3_;
         var_1475.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_333,"home",param2,null,0);
         _navigator.refreshButton(var_333,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_333,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_603.y,0);
         var_333.visible = true;
         var_333.height = Util.getLowestPoint(var_333);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_400,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(0,_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false)
         {
            return;
         }
         var_1474.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1238.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1241.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1236.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1239.visible = _navigator.data.canEditRoomSettings && param1;
         var_1237.visible = Util.hasVisibleChildren(var_1237);
      }
      
      public function open(param1:Boolean) : void
      {
         this.var_476.reset();
         this.var_334.active = false;
         this.var_202.active = false;
         this.var_268.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_47,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this.var_476.start();
         }
      }
      
      public function toggle() : void
      {
         this.var_476.reset();
         this.var_334.active = false;
         this.var_202.active = false;
         this.var_268.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_47,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_400,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_294);
         var_294.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _navigator.data.settings != null && _loc1_ != null && _loc1_.flatId == _navigator.data.settings.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_202.refresh(var_294);
         this.var_268.refresh(var_294);
         Util.moveChildrenToColumn(var_294,["room_details","room_buttons"],0,2);
         var_294.height = Util.getLowestPoint(var_294);
         var_294.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_984.setSelection(0,var_984.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_269);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_334.refresh(var_269);
         if(Util.hasVisibleChildren(var_269) && !this.var_268.active)
         {
            Util.moveChildrenToColumn(var_269,["event_details","event_buttons"],0,2);
            var_269.height = Util.getLowestPoint(var_269);
            var_269.visible = true;
         }
         else
         {
            var_269.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this.var_476.reset();
         this.var_334.active = true;
         this.var_202.active = false;
         this.var_268.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(0,_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         var_476.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_983.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_983.height = NaN;
         var_1235.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1235.height = NaN;
         Util.moveChildrenToColumn(var_669,["public_space_name","public_space_desc"],var_983.y,0);
         var_669.visible = true;
         var_669.height = Math.max(86,Util.getLowestPoint(var_669));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         if(_loc1_ && true && true && true)
         {
            var_810.visible = true;
            var_984.text = this.getEmbedData();
         }
         else
         {
            var_810.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_476.reset();
         this.var_202.load(param1);
         this.var_202.active = true;
         this.var_334.active = false;
         this.var_268.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_476.reset();
         this.var_202.active = false;
         this.var_334.active = false;
         this.var_268.active = true;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_68,false);
         _window.setParamFlag(HabboWindowParam.const_1157,true);
         var_294 = IWindowContainer(find("room_info"));
         var_333 = IWindowContainer(find("room_details"));
         var_669 = IWindowContainer(find("public_space_details"));
         var_2014 = IWindowContainer(find("owner_name_cont"));
         var_2016 = IWindowContainer(find("rating_cont"));
         var_1237 = IWindowContainer(find("room_buttons"));
         var_603 = ITextWindow(find("room_name"));
         var_983 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_807 = ITextWindow(find("room_desc"));
         var_1235 = ITextWindow(find("public_space_desc"));
         var_982 = ITextWindow(find("owner_caption"));
         var_808 = ITextWindow(find("rating_caption"));
         var_2015 = ITextWindow(find("rate_caption"));
         var_1475 = ITextWindow(find("rating_txt"));
         var_269 = IWindowContainer(find("event_info"));
         var_809 = IWindowContainer(find("event_details"));
         var_1476 = IWindowContainer(find("event_buttons"));
         var_2017 = ITextWindow(find("event_name"));
         var_670 = ITextWindow(find("event_desc"));
         var_1238 = IContainerButtonWindow(find("add_favourite_button"));
         var_1241 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1236 = IContainerButtonWindow(find("make_home_button"));
         var_1239 = IContainerButtonWindow(find("unmake_home_button"));
         var_1474 = IButtonWindow(find("room_settings_button"));
         var_1477 = IButtonWindow(find("create_event_button"));
         var_1473 = IButtonWindow(find("edit_event_button"));
         var_810 = IWindowContainer(find("embed_info"));
         var_1240 = ITextWindow(find("embed_info_txt"));
         var_984 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1238,onAddFavouriteClick);
         Util.setProcDirectly(var_1241,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1474,onRoomSettingsClick);
         Util.setProcDirectly(var_1236,onMakeHomeClick);
         Util.setProcDirectly(var_1239,onUnmakeHomeClick);
         Util.setProcDirectly(var_1477,onEventSettingsClick);
         Util.setProcDirectly(var_1473,onEventSettingsClick);
         Util.setProcDirectly(var_984,onEmbedSrcClick);
         _navigator.refreshButton(var_1238,"favourite",true,null,0);
         _navigator.refreshButton(var_1241,"favourite",true,null,0);
         _navigator.refreshButton(var_1236,"home",true,null,0);
         _navigator.refreshButton(var_1239,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_294,onHover);
         Util.setProcDirectly(var_269,onHover);
         var_982.width = var_982.textWidth;
         Util.moveChildrenToRow(var_2014,["owner_caption","owner_name"],var_982.x,var_982.y,3);
         var_808.width = var_808.textWidth;
         Util.moveChildrenToRow(var_2016,["rating_caption","rating_txt"],var_808.x,var_808.y,3);
         var_1240.height = NaN;
         Util.moveChildrenToColumn(var_810,["embed_info_txt","embed_src_txt"],var_1240.y,2);
         var_810.height = Util.getLowestPoint(var_810) + 5;
         var_2205 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_2017.text = param1.eventName;
         var_670.text = param1.eventDescription;
         var_964.refreshTags(var_809,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_670.visible = false;
         if(param1.eventDescription != "")
         {
            var_670.height = NaN;
            var_670.y = Util.getLowestPoint(var_809) + 2;
            var_670.visible = true;
         }
         var_809.visible = true;
         var_809.height = Util.getLowestPoint(var_809);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_898,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
