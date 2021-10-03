package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var var_1289:String;
      
      protected var var_2145:Boolean;
      
      protected var var_2010:int;
      
      protected var _type:int;
      
      protected var var_2006:int;
      
      protected var var_2143:Boolean;
      
      protected var var_1642:int;
      
      protected var var_2142:Boolean;
      
      protected var _id:int;
      
      protected var var_2144:int;
      
      protected var var_1567:String;
      
      protected var var_2008:Boolean;
      
      protected var _category:int;
      
      protected var var_2004:int;
      
      protected var var_2156:int;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:String, param9:int, param10:int, param11:int, param12:int, param13:String, param14:int)
      {
         super();
         _id = param1;
         _type = param2;
         var_2144 = param3;
         _category = param4;
         var_2008 = param5;
         var_2142 = param6;
         var_2145 = param7;
         var_1289 = param8;
         var_2156 = param9;
         var_2010 = param10;
         var_2004 = param11;
         var_2006 = param12;
         var_1567 = param13;
         var_1642 = param14;
      }
      
      public function get locked() : Boolean
      {
         return var_2143;
      }
      
      public function get songId() : int
      {
         return var_1642;
      }
      
      public function set locked(param1:Boolean) : void
      {
         var_2143 = param1;
      }
      
      public function get ref() : int
      {
         return var_2144;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get slotId() : String
      {
         return var_1567;
      }
      
      public function get expires() : int
      {
         return var_2156;
      }
      
      public function get creationYear() : int
      {
         return var_2006;
      }
      
      public function get creationDay() : int
      {
         return var_2010;
      }
      
      public function get tradeable() : Boolean
      {
         return var_2142;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get groupable() : Boolean
      {
         return var_2008;
      }
      
      public function get creationMonth() : int
      {
         return var_2004;
      }
      
      public function get extras() : String
      {
         return var_1289;
      }
      
      public function get recyclable() : Boolean
      {
         return var_2145;
      }
   }
}
