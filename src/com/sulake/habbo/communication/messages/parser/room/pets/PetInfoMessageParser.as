package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1555:int;
      
      private var var_543:String;
      
      private var var_1551:int;
      
      private var var_1558:int;
      
      private var var_1559:int;
      
      private var var_1648:int;
      
      private var _nutrition:int;
      
      private var var_1079:int;
      
      private var var_1647:int;
      
      private var var_1646:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1553:int;
      
      private var var_1649:int;
      
      public function PetInfoMessageParser()
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
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_1648;
      }
      
      public function flush() : Boolean
      {
         var_1079 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_1647;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_1646;
      }
      
      public function get maxNutrition() : int
      {
         return var_1649;
      }
      
      public function get figure() : String
      {
         return var_543;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1558;
      }
      
      public function get petId() : int
      {
         return var_1079;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1079 = param1.readInteger();
         _name = param1.readString();
         var_1551 = param1.readInteger();
         var_1647 = param1.readInteger();
         var_1559 = param1.readInteger();
         var_1646 = param1.readInteger();
         _energy = param1.readInteger();
         var_1648 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_1649 = param1.readInteger();
         var_543 = param1.readString();
         var_1558 = param1.readInteger();
         var_1553 = param1.readInteger();
         var_1555 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1559;
      }
      
      public function get ownerId() : int
      {
         return var_1553;
      }
      
      public function get age() : int
      {
         return var_1555;
      }
   }
}
