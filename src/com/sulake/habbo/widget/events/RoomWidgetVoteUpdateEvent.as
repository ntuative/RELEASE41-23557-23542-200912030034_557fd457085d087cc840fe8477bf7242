package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_126:String = "RWPUE_VOTE_RESULT";
      
      public static const const_115:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1139:int;
      
      private var var_908:String;
      
      private var var_655:Array;
      
      private var var_925:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_908 = param2;
         var_925 = param3;
         var_655 = param4;
         if(var_655 == null)
         {
            var_655 = [];
         }
         var_1139 = param5;
      }
      
      public function get votes() : Array
      {
         return var_655.slice();
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
   }
}
