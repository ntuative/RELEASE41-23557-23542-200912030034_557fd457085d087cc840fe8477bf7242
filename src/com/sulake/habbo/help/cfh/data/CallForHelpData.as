package com.sulake.habbo.help.cfh.data
{
   public class CallForHelpData
   {
       
      
      private var var_1520:int;
      
      private var var_1044:String = "";
      
      private var var_875:int;
      
      public function CallForHelpData()
      {
         super();
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1044 = param1;
      }
      
      public function get topicIndex() : int
      {
         return var_1520;
      }
      
      public function set topicIndex(param1:int) : void
      {
         var_1520 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1044;
      }
      
      public function flush() : void
      {
         var_875 = 0;
         var_1044 = "";
      }
      
      public function get userSelected() : Boolean
      {
         return var_875 > 0;
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_875 = param1;
      }
      
      public function getTopicKey(param1:int) : String
      {
         return (!!userSelected ? "help.cfh.topicwithharasser." : "help.cfh.topic.") + param1;
      }
      
      public function get reportedUserId() : int
      {
         return var_875;
      }
   }
}
