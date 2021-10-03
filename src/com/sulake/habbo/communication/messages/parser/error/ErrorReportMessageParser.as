package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1070:int;
      
      private var var_1071:int;
      
      private var var_1069:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function get messageId() : int
      {
         return var_1070;
      }
      
      public function flush() : Boolean
      {
         var_1071 = 0;
         var_1070 = 0;
         var_1069 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1071;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1070 = param1.readInteger();
         var_1071 = param1.readInteger();
         var_1069 = param1.readString();
         return true;
      }
      
      public function get timestamp() : String
      {
         return var_1069;
      }
   }
}
