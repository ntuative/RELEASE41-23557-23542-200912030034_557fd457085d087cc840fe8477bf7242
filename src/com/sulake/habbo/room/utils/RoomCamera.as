package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_332:Number = 0.5;
      
      private static const const_729:int = 3;
      
      private static const const_994:Number = 1;
       
      
      private var var_1533:Boolean = false;
      
      private var var_1531:int = -2;
      
      private var _limitedLocX:Boolean = false;
      
      private var var_1530:Boolean = false;
      
      private var var_1532:Boolean = false;
      
      private var var_1527:int = -1;
      
      private var var_877:int = 0;
      
      private var var_241:Vector3d = null;
      
      private var var_357:Vector3d = null;
      
      private var var_1528:int = 0;
      
      private var var_1529:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function dispose() : void
      {
         var_357 = null;
         var_241 = null;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_1533 = param1;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return _limitedLocX;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_1530;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_357 != null && var_241 != null)
         {
            ++var_877;
            _loc2_ = Vector3d.dif(var_357,var_241);
            if(_loc2_.length <= const_332)
            {
               var_241 = var_357;
               var_357 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_332 * (const_729 + 1))
               {
                  _loc2_.mul(const_332);
               }
               else if(var_877 <= const_729)
               {
                  _loc2_.mul(const_332);
               }
               else
               {
                  _loc2_.mul(const_994);
               }
               var_241 = Vector3d.sum(var_241,_loc2_);
            }
         }
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         _limitedLocX = param1;
      }
      
      public function get screenWd() : int
      {
         return var_1528;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_1532 = param1;
      }
      
      public function get targetId() : int
      {
         return var_1527;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_1531 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_357 == null)
         {
            var_357 = new Vector3d();
         }
         var_357.assign(param1);
         var_877 = 0;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_1530 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_241 != null)
         {
            return;
         }
         var_241 = new Vector3d();
         var_241.assign(param1);
      }
      
      public function get screenHt() : int
      {
         return var_1529;
      }
      
      public function get targetCategory() : int
      {
         return var_1531;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_1528 = param1;
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_1533;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_1532;
      }
      
      public function get location() : IVector3d
      {
         return var_241;
      }
      
      public function set targetId(param1:int) : void
      {
         var_1527 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_1529 = param1;
      }
   }
}
