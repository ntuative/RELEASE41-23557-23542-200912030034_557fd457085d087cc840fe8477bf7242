package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_148:int = 1;
      
      public static const const_1260:int = 3;
      
      public static const const_417:int = 2;
       
      
      private var var_1933:int;
      
      private var var_1924:int;
      
      private var var_1923:int;
      
      private var var_1917:int;
      
      private var _state:int;
      
      private var var_372:int;
      
      private var var_1175:int;
      
      private var var_1926:int;
      
      private var var_875:int;
      
      private var _roomResources:String;
      
      private var var_1931:int;
      
      private var var_1928:int;
      
      private var var_1922:String;
      
      private var var_1932:String;
      
      private var var_1930:int = 0;
      
      private var var_1044:String;
      
      private var _message:String;
      
      private var var_1925:int;
      
      private var var_1929:String;
      
      private var var_1207:int;
      
      private var var_603:String;
      
      private var var_1927:String;
      
      private var var_1411:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_875 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_1930 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_1928;
      }
      
      public function set roomName(param1:String) : void
      {
         var_603 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_1931 = param1;
      }
      
      public function get state() : int
      {
         return _state;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_603;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1917 = param1;
      }
      
      public function set state(param1:int) : void
      {
         _state = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1924;
      }
      
      public function get priority() : int
      {
         return var_1933 + var_1930;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1926 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_1932;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1411) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1207;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_1928 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1175;
      }
      
      public function set flatType(param1:String) : void
      {
         var_1922 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_1931;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1917;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_1927 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1044 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1926;
      }
      
      public function set priority(param1:int) : void
      {
         var_1933 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1924 = param1;
      }
      
      public function get flatType() : String
      {
         return var_1922;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_1923 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_1932 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1925 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1044;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1175 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_1923;
      }
      
      public function set flatId(param1:int) : void
      {
         var_372 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1207 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1411 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1925;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_1929 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1411;
      }
      
      public function get reportedUserId() : int
      {
         return var_875;
      }
      
      public function get flatId() : int
      {
         return var_372;
      }
      
      public function get flatOwnerName() : String
      {
         return var_1927;
      }
      
      public function get reporterUserName() : String
      {
         return var_1929;
      }
   }
}
