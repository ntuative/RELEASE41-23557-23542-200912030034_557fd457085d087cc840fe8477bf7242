package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   public class AchievementData
   {
       
      
      private var var_1551:int;
      
      private var _type:int;
      
      private var var_646:String;
      
      public function AchievementData()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1551;
      }
      
      public function set level(param1:int) : void
      {
         var_1551 = param1;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set badgeId(param1:String) : void
      {
         var_646 = param1;
      }
      
      public function get badgeId() : String
      {
         return var_646;
      }
   }
}
