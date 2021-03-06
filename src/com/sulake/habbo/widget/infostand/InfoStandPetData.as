package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1551:int;
      
      private var var_1559:int;
      
      private var var_1557:int;
      
      private var _type:int;
      
      private var var_1079:int = -1;
      
      private var var_1552:int;
      
      private var _nutrition:int;
      
      private var var_1556:int;
      
      private var _energy:int;
      
      private var var_1936:int;
      
      private var var_1554:int;
      
      private var var_1770:int;
      
      private var var_1555:int;
      
      private var _petRespect:int;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_1769:Boolean;
      
      private var _name:String = "";
      
      private var var_1553:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get isOwnPet() : Boolean
      {
         return var_1769;
      }
      
      public function get level() : int
      {
         return var_1551;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get experienceMax() : int
      {
         return var_1556;
      }
      
      public function get id() : int
      {
         return var_1079;
      }
      
      public function get nutritionMax() : int
      {
         return var_1557;
      }
      
      public function get ownerId() : int
      {
         return var_1553;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         _name = param1.name;
         var_1079 = param1.id;
         _type = param1.petType;
         var_1936 = param1.petRace;
         _image = param1.image;
         var_1769 = param1.isOwnPet;
         var_1553 = param1.ownerId;
         _ownerName = param1.ownerName;
         _canOwnerBeKicked = param1.canOwnerBeKicked;
         var_1551 = param1.level;
         var_1552 = param1.levelMax;
         var_1559 = param1.experience;
         var_1556 = param1.experienceMax;
         _energy = param1.energy;
         var_1554 = param1.energyMax;
         _nutrition = param1.nutrition;
         var_1557 = param1.nutritionMax;
         _petRespect = param1.petRespect;
         var_1770 = param1.roomIndex;
         var_1555 = param1.age;
      }
      
      public function get roomIndex() : int
      {
         return var_1770;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get energyMax() : int
      {
         return var_1554;
      }
      
      public function get levelMax() : int
      {
         return var_1552;
      }
      
      public function get petRespect() : int
      {
         return _petRespect;
      }
      
      public function get race() : int
      {
         return var_1936;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return _canOwnerBeKicked;
      }
      
      public function get experience() : int
      {
         return var_1559;
      }
      
      public function get age() : int
      {
         return var_1555;
      }
   }
}
