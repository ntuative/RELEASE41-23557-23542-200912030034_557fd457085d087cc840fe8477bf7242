package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1973:int;
      
      private var var_1186:String;
      
      private var var_1976:int;
      
      private var var_1974:int;
      
      private var var_1975:int;
      
      private var var_1972:Boolean;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function get productName() : String
      {
         return var_1186;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_1972;
      }
      
      public function get responseType() : int
      {
         return var_1974;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_1976;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1186 = param1.readString();
         var_1976 = param1.readInteger();
         var_1973 = param1.readInteger();
         var_1975 = param1.readInteger();
         var_1974 = param1.readInteger();
         var_1972 = param1.readBoolean();
         return true;
      }
      
      public function get memberPeriods() : int
      {
         return var_1973;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_1975;
      }
   }
}
