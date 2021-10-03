package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1304:String = "F";
      
      public static const const_801:String = "M";
       
      
      private var var_90:Number = 0;
      
      private var var_543:String = "";
      
      private var var_2091:int = 0;
      
      private var var_1984:String = "";
      
      private var var_1982:int = 0;
      
      private var var_1629:int = 0;
      
      private var var_1983:String = "";
      
      private var var_1177:String = "";
      
      private var _id:int = 0;
      
      private var var_204:Boolean = false;
      
      private var var_209:int = 0;
      
      private var var_2090:String = "";
      
      private var _name:String = "";
      
      private var var_1635:int = 0;
      
      private var _y:Number = 0;
      
      private var var_89:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_89;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_209;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_204)
         {
            var_209 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_204)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_2091;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_204)
         {
            var_1982 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_2090;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_204)
         {
            var_1983 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_204)
         {
            var_2090 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_204)
         {
            var_1629 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_204)
         {
            var_543 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_204)
         {
            var_2091 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_204)
         {
            var_1177 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1982;
      }
      
      public function get groupID() : String
      {
         return var_1983;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_204)
         {
            var_1635 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_204)
         {
            var_1984 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_204 = true;
      }
      
      public function get sex() : String
      {
         return var_1177;
      }
      
      public function get figure() : String
      {
         return var_543;
      }
      
      public function get webID() : int
      {
         return var_1635;
      }
      
      public function get custom() : String
      {
         return var_1984;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_204)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_204)
         {
            var_89 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_204)
         {
            var_90 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_90;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1629;
      }
   }
}
