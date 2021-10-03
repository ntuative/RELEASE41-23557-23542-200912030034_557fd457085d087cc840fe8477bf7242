package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_933:Boolean;
      
      private var var_932:Boolean;
      
      private var var_931:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_933;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_932;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_931 = param1.readBoolean();
         var_932 = param1.readBoolean();
         var_933 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_931;
      }
      
      public function flush() : Boolean
      {
         var_931 = false;
         var_932 = false;
         var_933 = false;
         return true;
      }
   }
}
