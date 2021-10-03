package com.sulake.room.renderer.cache
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObjectLocationCacheItem
   {
       
      
      private var var_1565:int = -1;
      
      private var var_1253:int = -1;
      
      private var var_592:Vector3d = null;
      
      public function RoomObjectLocationCacheItem()
      {
         super();
         var_592 = new Vector3d();
      }
      
      public function get objectUpdateId() : int
      {
         return var_1565;
      }
      
      public function set objectUpdateId(param1:int) : void
      {
         var_1565 = param1;
      }
      
      public function set screenLoc(param1:IVector3d) : void
      {
         var_592.assign(param1);
         var_592.x = Math.round(var_592.x);
         var_592.y = Math.round(var_592.y);
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         var_1253 = param1;
      }
      
      public function get screenLoc() : IVector3d
      {
         return var_592;
      }
      
      public function get geometryUpdateId() : int
      {
         return var_1253;
      }
   }
}
