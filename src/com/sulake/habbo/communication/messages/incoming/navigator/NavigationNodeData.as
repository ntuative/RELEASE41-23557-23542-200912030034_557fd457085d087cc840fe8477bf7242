package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1193:int;
      
      private var var_1402:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1193 = param1;
         var_1402 = param2;
         Logger.log("READ NODE: " + var_1193 + ", " + var_1402);
      }
      
      public function get nodeName() : String
      {
         return var_1402;
      }
      
      public function get nodeId() : int
      {
         return var_1193;
      }
   }
}
