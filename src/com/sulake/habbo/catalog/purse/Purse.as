package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_1807:int = 0;
      
      private var var_1905:int = 0;
      
      private var var_1904:int = 0;
      
      private var var_1802:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get pixels() : int
      {
         return var_1905;
      }
      
      public function set pixels(param1:int) : void
      {
         var_1905 = param1;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1807 = param1;
      }
      
      public function get credits() : int
      {
         return var_1904;
      }
      
      public function get clubDays() : int
      {
         return var_1807;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1802 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1904 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1802;
      }
   }
}
