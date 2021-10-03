package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeLevelMessageData
   {
       
      
      private var var_2110:int;
      
      private var var_1132:int;
      
      private var var_677:Array;
      
      public function PrizeLevelMessageData(param1:IMessageDataWrapper)
      {
         super();
         var_1132 = param1.readInteger();
         var_2110 = param1.readInteger();
         var_677 = new Array();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_677.push(new PrizeMessageData(param1));
            _loc3_++;
         }
      }
      
      public function get probabilityDenominator() : int
      {
         return var_2110;
      }
      
      public function get prizes() : Array
      {
         return var_677;
      }
      
      public function get prizeLevelId() : int
      {
         return var_1132;
      }
   }
}
