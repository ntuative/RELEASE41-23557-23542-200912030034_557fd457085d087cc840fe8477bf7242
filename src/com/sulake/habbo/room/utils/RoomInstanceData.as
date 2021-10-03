package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_776:LegacyWallGeometry = null;
      
      private var var_538:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_537:TileHeightMap = null;
      
      private var var_1887:String = null;
      
      private var _roomId:int = 0;
      
      private var var_777:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_776 = new LegacyWallGeometry();
         var_777 = new RoomCamera();
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_537 != null)
         {
            var_537.dispose();
         }
         var_537 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_1887 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_776;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_777;
      }
      
      public function dispose() : void
      {
         if(var_537 != null)
         {
            var_537.dispose();
            var_537 = null;
         }
         if(var_776 != null)
         {
            var_776.dispose();
            var_776 = null;
         }
         if(var_777 != null)
         {
            var_777.dispose();
            var_777 = null;
         }
         if(var_538 != null)
         {
            var_538.dispose();
            var_538 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_537;
      }
      
      public function get worldType() : String
      {
         return var_1887;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_538 != null)
         {
            var_538.dispose();
         }
         var_538 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_538;
      }
   }
}
