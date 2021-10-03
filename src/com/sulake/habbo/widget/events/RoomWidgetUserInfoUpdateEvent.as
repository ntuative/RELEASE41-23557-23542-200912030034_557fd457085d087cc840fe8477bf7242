package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_196:String = "RWUIUE_PEER";
      
      public static const const_199:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1232:String = "BOT";
      
      public static const const_922:int = 2;
      
      public static const const_1315:int = 0;
      
      public static const const_904:int = 3;
       
      
      private var var_1246:String = "";
      
      private var var_1636:Boolean = false;
      
      private var var_1629:int = 0;
      
      private var var_1632:int = 0;
      
      private var var_1628:Boolean = false;
      
      private var var_1245:String = "";
      
      private var var_1638:Boolean = false;
      
      private var _respectLeft:int = 0;
      
      private var var_1634:Boolean = true;
      
      private var var_893:int = 0;
      
      private var var_1625:Boolean = false;
      
      private var var_1120:Boolean = false;
      
      private var var_1626:Boolean = false;
      
      private var var_1633:int = 0;
      
      private var var_1631:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_249:Array;
      
      private var var_1119:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1635:int = 0;
      
      private var var_1637:Boolean = false;
      
      private var var_1630:int = 0;
      
      private var var_1627:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_249 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1632;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1632 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_1636;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_1634;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_1634 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_1638 = param1;
      }
      
      public function get motto() : String
      {
         return var_1246;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_1625 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1120;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1246 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_1637;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1627;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1120 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_1631;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1633 = param1;
      }
      
      public function get badges() : Array
      {
         return var_249;
      }
      
      public function get amIController() : Boolean
      {
         return var_1628;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_1628 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_1637 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_1630 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1627 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1245 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_1638;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_1625;
      }
      
      public function get carryItem() : int
      {
         return var_1633;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1119;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1119 = param1;
      }
      
      public function set respectLeft(param1:int) : void
      {
         _respectLeft = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_1630;
      }
      
      public function get realName() : String
      {
         return var_1245;
      }
      
      public function set webID(param1:int) : void
      {
         var_1635 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_249 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_1626 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_1631 = param1;
      }
      
      public function get respectLeft() : int
      {
         return _respectLeft;
      }
      
      public function get webID() : int
      {
         return var_1635;
      }
      
      public function set groupId(param1:int) : void
      {
         var_893 = param1;
      }
      
      public function get xp() : int
      {
         return var_1629;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_1636 = param1;
      }
      
      public function get groupId() : int
      {
         return var_893;
      }
      
      public function get canTrade() : Boolean
      {
         return var_1626;
      }
      
      public function set xp(param1:int) : void
      {
         var_1629 = param1;
      }
   }
}
