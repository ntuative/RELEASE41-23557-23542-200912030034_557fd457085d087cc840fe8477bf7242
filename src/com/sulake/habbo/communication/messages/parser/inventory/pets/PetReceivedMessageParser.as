package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1026:PetData;
      
      private var var_1509:Boolean;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1509 = param1.readBoolean();
         var_1026 = new PetData(param1);
         Logger.log("Got PetReceived: " + var_1509 + ", " + var_1026.id + ", " + var_1026.name + ", " + pet.figure + ", " + var_1026.type);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return var_1509;
      }
      
      public function get pet() : PetData
      {
         return var_1026;
      }
   }
}
