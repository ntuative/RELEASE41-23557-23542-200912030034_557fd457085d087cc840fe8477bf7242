package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var var_1657:Boolean;
      
      private var var_1656:Array;
      
      private var var_1658:Boolean;
      
      private var var_1076:String;
      
      private var var_1659:Boolean;
      
      private var var_1661:int;
      
      private var var_1655:int;
      
      private var var_1207:int;
      
      private var var_1660:Boolean;
      
      private var _roomId:int;
      
      private var var_1662:Boolean;
      
      private var _name:String;
      
      private var _password:String;
      
      private var var_580:Array;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1657 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return var_1661;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1661 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_580;
      }
      
      public function get password() : String
      {
         return _password;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1658;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1662;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1656 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_580 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1657;
      }
      
      public function set password(param1:String) : void
      {
         _password = param1;
      }
      
      public function get categoryId() : int
      {
         return var_1207;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1658 = param1;
      }
      
      public function set allowTrading(param1:Boolean) : void
      {
         var_1662 = param1;
      }
      
      public function set showOwnerName(param1:Boolean) : void
      {
         var_1660 = param1;
      }
      
      public function set allowFurniMoving(param1:Boolean) : void
      {
         var_1659 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1656;
      }
      
      public function get showOwnerName() : Boolean
      {
         return var_1660;
      }
      
      public function get allowFurniMoving() : Boolean
      {
         return var_1659;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1655 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1655;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1207 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1076 = param1;
      }
      
      public function get description() : String
      {
         return var_1076;
      }
   }
}
