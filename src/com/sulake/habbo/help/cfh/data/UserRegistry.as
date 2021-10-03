package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1002:int = 80;
       
      
      private var var_428:Map;
      
      private var var_603:String = "";
      
      private var var_1077:Array;
      
      public function UserRegistry()
      {
         var_428 = new Map();
         var_1077 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_428.getValue(var_1077.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_603;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_428.getValue(param1) != null)
         {
            var_428.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_603);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_603 == "")
         {
            var_1077.push(param1);
         }
         var_428.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_428;
      }
      
      public function unregisterRoom() : void
      {
         var_603 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_428.length > const_1002)
         {
            _loc1_ = var_428.getKey(0);
            var_428.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_603 = param1;
         if(var_603 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
