package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1551:int;
      
      private var var_1558:int;
      
      private var var_1559:int;
      
      private var var_1557:int;
      
      private var _nutrition:int;
      
      private var var_1079:int;
      
      private var var_1552:int;
      
      private var var_1556:int;
      
      private var _energy:int;
      
      private var var_1555:int;
      
      private var var_1554:int;
      
      private var _ownerName:String;
      
      private var var_1553:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1551;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function set respect(param1:int) : void
      {
         var_1558 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function set level(param1:int) : void
      {
         var_1551 = param1;
      }
      
      public function get petId() : int
      {
         return var_1079;
      }
      
      public function get experienceMax() : int
      {
         return var_1556;
      }
      
      public function get nutritionMax() : int
      {
         return var_1557;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1552 = param1;
      }
      
      public function get ownerId() : int
      {
         return var_1553;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function set petId(param1:int) : void
      {
         var_1079 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function get energyMax() : int
      {
         return var_1554;
      }
      
      public function get respect() : int
      {
         return var_1558;
      }
      
      public function get levelMax() : int
      {
         return var_1552;
      }
      
      public function set ownerName(param1:String) : void
      {
         _ownerName = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1556 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1559 = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1557 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         var_1553 = param1;
      }
      
      public function get experience() : int
      {
         return var_1559;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_1554 = param1;
      }
      
      public function set age(param1:int) : void
      {
         var_1555 = param1;
      }
      
      public function get age() : int
      {
         return var_1555;
      }
   }
}
