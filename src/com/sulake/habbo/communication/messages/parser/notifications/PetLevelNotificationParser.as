package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_543:String;
      
      private var var_1551:int;
      
      private var var_1889:String;
      
      private var var_966:int;
      
      private var var_1079:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1079;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1079 = param1.readInteger();
         var_1889 = param1.readString();
         var_1551 = param1.readInteger();
         var_543 = param1.readString();
         var_966 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_1889;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_543;
      }
      
      public function get petType() : int
      {
         return var_966;
      }
      
      public function get level() : int
      {
         return var_1551;
      }
   }
}
