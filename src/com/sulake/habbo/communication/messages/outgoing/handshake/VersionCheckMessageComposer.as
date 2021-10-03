package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_2071:String;
      
      private var var_1169:String;
      
      private var var_2070:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_2070 = param1;
         var_1169 = param2;
         var_2071 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2070,var_1169,var_2071];
      }
      
      public function dispose() : void
      {
      }
   }
}
