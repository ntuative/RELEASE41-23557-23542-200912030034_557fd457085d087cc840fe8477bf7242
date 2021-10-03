package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_1861:int;
      
      private var var_1858:int;
      
      private var var_1859:int;
      
      private var _userName:String;
      
      private var var_1856:int;
      
      private var var_1860:int;
      
      private var var_1857:int;
      
      private var _userId:int;
      
      private var var_664:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_1860 = param1.readInteger();
         var_1856 = param1.readInteger();
         var_664 = param1.readBoolean();
         var_1859 = param1.readInteger();
         var_1858 = param1.readInteger();
         var_1861 = param1.readInteger();
         var_1857 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_1857;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_664;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_1856;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_1858;
      }
      
      public function get cautionCount() : int
      {
         return var_1861;
      }
      
      public function get cfhCount() : int
      {
         return var_1859;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_1860;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
