package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1558:int;
      
      private var var_1098:PetData;
      
      private var var_1993:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1558;
      }
      
      public function get petData() : PetData
      {
         return var_1098;
      }
      
      public function flush() : Boolean
      {
         var_1098 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_1993;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1558 = param1.readInteger();
         var_1993 = param1.readInteger();
         var_1098 = new PetData(param1);
         return true;
      }
   }
}
