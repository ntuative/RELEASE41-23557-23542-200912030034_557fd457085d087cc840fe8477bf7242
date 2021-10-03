package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var var_1487:String;
      
      private var var_1330:String;
      
      private var var_1018:String;
      
      private var var_385:Number = 1;
      
      private var _id:String;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         _id = String(param1.@id);
         var_1487 = String(param1.@align);
         var_1018 = String(param1.@base);
         var_1330 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            var_385 = Number(_loc2_);
            if(var_385 > 1)
            {
               var_385 /= 100;
            }
         }
      }
      
      public function get align() : String
      {
         return var_1487;
      }
      
      public function get ink() : String
      {
         return var_1330;
      }
      
      public function get base() : String
      {
         return var_1018;
      }
      
      public function get isBlended() : Boolean
      {
         return var_385 != 1;
      }
      
      public function get blend() : Number
      {
         return var_385;
      }
      
      public function get id() : String
      {
         return _id;
      }
   }
}
