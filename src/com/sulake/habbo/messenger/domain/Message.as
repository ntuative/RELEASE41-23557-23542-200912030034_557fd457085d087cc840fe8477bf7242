package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_639:int = 2;
      
      public static const const_948:int = 6;
      
      public static const const_694:int = 1;
      
      public static const const_606:int = 3;
      
      public static const const_945:int = 4;
      
      public static const const_532:int = 5;
       
      
      private var var_1901:String;
      
      private var var_941:int;
      
      private var var_1609:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_941 = param2;
         var_1609 = param3;
         var_1901 = param4;
      }
      
      public function get time() : String
      {
         return var_1901;
      }
      
      public function get senderId() : int
      {
         return var_941;
      }
      
      public function get messageText() : String
      {
         return var_1609;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
