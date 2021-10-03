package com.sulake.habbo.communication.messages.outgoing.friendlist
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   
   public class SendRoomInviteMessageComposer implements IMessageComposer, IDisposable
   {
       
      
      private var var_1426:String;
      
      private var var_752:Array;
      
      public function SendRoomInviteMessageComposer(param1:String)
      {
         var_752 = new Array();
         super();
         this.var_1426 = param1;
      }
      
      public function get disposed() : Boolean
      {
         return false;
      }
      
      public function getMessageArray() : Array
      {
         var _loc1_:Array = new Array();
         _loc1_.push(this.var_752.length);
         var _loc2_:int = 0;
         while(_loc2_ < this.var_752.length)
         {
            _loc1_.push(this.var_752[_loc2_]);
            _loc2_++;
         }
         _loc1_.push(this.var_1426);
         return _loc1_;
      }
      
      public function dispose() : void
      {
         this.var_752 = null;
      }
      
      public function addInvitedFriend(param1:int) : void
      {
         this.var_752.push(param1);
      }
   }
}
