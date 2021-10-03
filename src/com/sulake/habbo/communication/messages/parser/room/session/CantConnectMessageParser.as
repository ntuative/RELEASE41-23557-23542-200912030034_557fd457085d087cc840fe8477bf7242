package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1465:int = 2;
      
      public static const const_321:int = 4;
      
      public static const const_1144:int = 1;
      
      public static const const_1213:int = 3;
       
      
      private var var_946:int = 0;
      
      private var var_761:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_946;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_946 = param1.readInteger();
         if(var_946 == 3)
         {
            var_761 = param1.readString();
         }
         else
         {
            var_761 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_946 = 0;
         var_761 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_761;
      }
   }
}
