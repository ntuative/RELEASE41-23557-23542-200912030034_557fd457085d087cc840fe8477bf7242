package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPollEvent extends RoomSessionEvent
   {
      
      public static const const_121:String = "RSPE_POLL_CONTENT";
      
      public static const const_116:String = "RSPE_POLL_OFFER";
      
      public static const const_61:String = "RSPE_POLL_ERROR";
       
      
      private var var_884:Array = null;
      
      private var var_1055:String = "";
      
      private var var_1146:String;
      
      private var var_1056:String = "";
      
      private var var_885:int = 0;
      
      private var _id:int = -1;
      
      public function RoomSessionPollEvent(param1:String, param2:IRoomSession, param3:int)
      {
         _id = param3;
         super(param1,param2);
      }
      
      public function get questionArray() : Array
      {
         return var_884;
      }
      
      public function get startMessage() : String
      {
         return var_1055;
      }
      
      public function get summary() : String
      {
         return var_1146;
      }
      
      public function set startMessage(param1:String) : void
      {
         var_1055 = param1;
      }
      
      public function set numQuestions(param1:int) : void
      {
         var_885 = param1;
      }
      
      public function set summary(param1:String) : void
      {
         var_1146 = param1;
      }
      
      public function get numQuestions() : int
      {
         return var_885;
      }
      
      public function set endMessage(param1:String) : void
      {
         var_1056 = param1;
      }
      
      public function get endMessage() : String
      {
         return var_1056;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set questionArray(param1:Array) : void
      {
         var_884 = param1;
      }
   }
}
