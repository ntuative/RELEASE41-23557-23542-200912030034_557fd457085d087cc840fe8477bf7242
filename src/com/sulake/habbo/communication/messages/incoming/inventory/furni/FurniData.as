package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1792:String;
      
      private var var_1013:String;
      
      private var var_2003:Boolean;
      
      private var var_1796:int;
      
      private var var_1795:Boolean;
      
      private var var_1567:String = "";
      
      private var _category:int;
      
      private var var_1164:int;
      
      private var var_1793:Boolean;
      
      private var var_1642:int = -1;
      
      private var _objId:int;
      
      private var var_1791:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:int)
      {
         super();
         var_1796 = param1;
         var_1013 = param2;
         _objId = param3;
         var_1164 = param4;
         _category = param5;
         var_1792 = param6;
         var_2003 = param7;
         var_1795 = param8;
         var_1793 = param9;
         var_1791 = param10;
      }
      
      public function get classId() : int
      {
         return var_1164;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_2003;
      }
      
      public function get stripId() : int
      {
         return var_1796;
      }
      
      public function get stuffData() : String
      {
         return var_1792;
      }
      
      public function get songId() : int
      {
         return var_1642;
      }
      
      public function setSongData(param1:String, param2:int) : void
      {
         var_1567 = param1;
         var_1642 = param2;
      }
      
      public function get expiryTime() : int
      {
         return var_1791;
      }
      
      public function get itemType() : String
      {
         return var_1013;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get slotId() : String
      {
         return var_1567;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1793;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1795;
      }
   }
}
