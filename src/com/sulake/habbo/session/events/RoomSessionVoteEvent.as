package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_126:String = "RSPE_VOTE_RESULT";
      
      public static const const_115:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1139:int = 0;
      
      private var var_908:String = "";
      
      private var var_655:Array;
      
      private var var_925:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_925 = [];
         var_655 = [];
         super(param1,param2,param7,param8);
         var_908 = param3;
         var_925 = param4;
         var_655 = param5;
         if(var_655 == null)
         {
            var_655 = [];
         }
         var_1139 = param6;
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
