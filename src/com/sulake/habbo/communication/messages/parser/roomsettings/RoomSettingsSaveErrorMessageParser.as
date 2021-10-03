package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1528:int = 9;
      
      public static const const_1476:int = 4;
      
      public static const const_1475:int = 1;
      
      public static const const_1263:int = 10;
      
      public static const const_1501:int = 2;
      
      public static const const_1184:int = 7;
      
      public static const const_1283:int = 11;
      
      public static const const_1384:int = 3;
      
      public static const const_1158:int = 8;
      
      public static const const_1321:int = 5;
      
      public static const const_1495:int = 6;
      
      public static const const_1237:int = 12;
       
      
      private var var_2129:String;
      
      private var _roomId:int;
      
      private var var_1071:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_2129;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1071 = param1.readInteger();
         var_2129 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1071;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
