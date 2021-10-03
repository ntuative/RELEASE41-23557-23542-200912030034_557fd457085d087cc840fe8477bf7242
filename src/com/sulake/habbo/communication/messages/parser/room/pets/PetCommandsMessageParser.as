package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetCommandsMessageParser implements IMessageParser
   {
       
      
      private var var_1011:Array;
      
      private var var_1079:int;
      
      public function PetCommandsMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1079 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_1011 = new Array();
         while(_loc2_-- > 0)
         {
            var_1011.push(param1.readInteger());
         }
         return true;
      }
      
      public function get enabledCommands() : Array
      {
         return var_1011;
      }
      
      public function get petId() : int
      {
         return var_1079;
      }
      
      public function flush() : Boolean
      {
         var_1079 = -1;
         var_1011 = null;
         return true;
      }
   }
}
