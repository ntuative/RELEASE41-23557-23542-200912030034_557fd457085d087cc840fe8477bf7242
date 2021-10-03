package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1139:int;
      
      private var var_908:String;
      
      private var var_655:Array;
      
      private var var_925:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_655.slice();
      }
      
      public function flush() : Boolean
      {
         var_908 = "";
         var_925 = [];
         var_655 = [];
         var_1139 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1139;
      }
      
      public function get question() : String
      {
         return var_908;
      }
      
      public function get choices() : Array
      {
         return var_925.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_908 = param1.readString();
         var_925 = [];
         var_655 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_925.push(param1.readString());
            var_655.push(param1.readInteger());
            _loc3_++;
         }
         var_1139 = param1.readInteger();
         return true;
      }
   }
}
