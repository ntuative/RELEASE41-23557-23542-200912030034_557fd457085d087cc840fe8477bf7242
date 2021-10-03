package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_816:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_816 = new Array();
         var_816.push(param1.length);
         var_816 = var_816.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_816;
      }
   }
}
