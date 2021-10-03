package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1357:int = 10;
       
      
      private var var_1360:NavigatorSettingsMessageParser;
      
      private var var_1099:int;
      
      private var var_1711:Boolean;
      
      private var var_1707:int;
      
      private var var_724:Dictionary;
      
      private var var_2174:int;
      
      private var var_1709:int;
      
      private var var_1706:int;
      
      private var var_337:Array;
      
      private var var_1710:int;
      
      private var var_1072:Array;
      
      private var var_517:PublicRoomShortData;
      
      private var var_374:RoomEventData;
      
      private var var_130:MsgWithRequestId;
      
      private var var_1563:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_1708:Boolean;
      
      private var var_187:GuestRoomData;
      
      private var var_607:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_337 = new Array();
         var_724 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_1707;
      }
      
      public function get eventMod() : Boolean
      {
         return var_1708;
      }
      
      public function startLoading() : void
      {
         this.var_607 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_1708 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_374 != null)
         {
            var_374.dispose();
         }
         var_374 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_130 != null && var_130 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_130 != null && var_130 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_130 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_187;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_517 = null;
         var_187 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_517 = param1.publicSpace;
            var_374 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(var_374 != null)
         {
            var_374.dispose();
            var_374 = null;
         }
         if(var_517 != null)
         {
            var_517.dispose();
            var_517 = null;
         }
         if(var_187 != null)
         {
            var_187.dispose();
            var_187 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_130 = param1;
         var_607 = false;
         if(var_1072 == null)
         {
            var_1072 = param1.topLevelNodes;
         }
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1360;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_130 = param1;
         var_607 = false;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function getCategoryByIndex(param1:int) : FlatCategory
      {
         if(var_337.length > param1)
         {
            return var_337[param1] as FlatCategory;
         }
         return null;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2174 = param1.limit;
         this.var_1099 = param1.favouriteRoomIds.length;
         this.var_724 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_724[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_130 as PopularRoomTagsData;
      }
      
      public function get categories() : Array
      {
         return var_337;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_517;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1706 = param1;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_1711;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_130 = param1;
         var_607 = false;
      }
      
      public function getCategoryIndexById(param1:int) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < var_337.length)
         {
            if((var_337[_loc2_] as FlatCategory).nodeId == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_187 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_607;
      }
      
      public function set categories(param1:Array) : void
      {
         var_337 = param1;
      }
      
      public function get currentRoomRating() : int
      {
         return var_1709;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_1710;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1360 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_130 == null)
         {
            return;
         }
         var_130.dispose();
         var_130 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_374;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_724[param1] = !!param2 ? "yes" : null;
         var_1099 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_130 as OfficialRoomsData;
      }
      
      public function get topLevelNodes() : Array
      {
         return var_1072;
      }
      
      public function get avatarId() : int
      {
         return var_1706;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_130 != null && var_130 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_1711 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_1709 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1563 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_187 != null)
         {
            var_187.dispose();
         }
         var_187 = param1;
      }
      
      public function getCategoryById(param1:int) : FlatCategory
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_337)
         {
            if(_loc2_.nodeId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_187 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1360.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1099 >= var_2174;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_1710 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1563;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_187 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_1707 = param1;
      }
   }
}
