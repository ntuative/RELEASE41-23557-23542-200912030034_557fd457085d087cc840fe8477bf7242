package com.sulake.habbo.widget.events
{
   public class RoomWidgetPollUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_121:String = "RWPUW_CONTENT";
      
      public static const const_116:String = "RWPUW_OFFER";
      
      public static const const_61:String = "RWPUW_ERROR";
       
      
      private var var_884:Array = null;
      
      private var var_1055:String = "";
      
      private var var_1146:String;
      
      private var var_1056:String = "";
      
      private var var_885:int = 0;
      
      private var _id:int = -1;
      
      public function RoomWidgetPollUpdateEvent(param1:int, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         _id = param1;
         super(param2,param3,param4);
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
