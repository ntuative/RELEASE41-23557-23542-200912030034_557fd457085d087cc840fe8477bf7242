package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class IssuePickFailedMessageParser implements IMessageParser
   {
       
      
      private var var_1932:String;
      
      private var var_2031:int;
      
      private var var_1926:int;
      
      public function IssuePickFailedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1926 = param1.readInteger();
         var_2031 = param1.readInteger();
         var_1932 = param1.readString();
         return true;
      }
      
      public function get issueId() : int
      {
         return var_1926;
      }
      
      public function get pickerUserId() : int
      {
         return var_2031;
      }
      
      public function get pickerUserName() : String
      {
         return var_1932;
      }
   }
}
