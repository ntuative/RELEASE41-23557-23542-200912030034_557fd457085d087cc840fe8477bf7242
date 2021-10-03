package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_967:Boolean;
      
      private var var_1225:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_967 = param1.readInteger() > 0;
         var_1225 = param1.readInteger() > 0;
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_967;
      }
      
      public function get onShutDown() : Boolean
      {
         return var_1225;
      }
      
      public function flush() : Boolean
      {
         var_967 = false;
         var_1225 = false;
         return true;
      }
   }
}
