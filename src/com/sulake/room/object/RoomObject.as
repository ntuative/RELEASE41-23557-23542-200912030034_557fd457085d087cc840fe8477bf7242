package com.sulake.room.object
{
   import com.sulake.room.object.logic.IRoomObjectEventHandler;
   import com.sulake.room.object.logic.IRoomObjectMouseHandler;
   import com.sulake.room.object.visualization.IRoomObjectVisualization;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObject implements IRoomObjectController
   {
      
      private static var var_1218:int = 0;
       
      
      private var var_75:Vector3d;
      
      private var _updateID:uint;
      
      private var _type:String = "";
      
      private var _visualization:IRoomObjectVisualization;
      
      private var var_92:RoomObjectModel;
      
      private var var_395:IRoomObjectEventHandler;
      
      private var var_1451:Vector3d;
      
      private var var_1971:int = 0;
      
      private var _id:int;
      
      private var var_1452:Vector3d;
      
      private var var_209:Vector3d;
      
      private var var_470:Array;
      
      public function RoomObject(param1:int, param2:uint)
      {
         super();
         _id = param1;
         var_75 = new Vector3d();
         var_209 = new Vector3d();
         var_1451 = new Vector3d();
         var_1452 = new Vector3d();
         var_470 = new Array(param2);
         var _loc3_:Number = param2 - 1;
         while(_loc3_ >= 0)
         {
            var_470[_loc3_] = 0;
            _loc3_--;
         }
         var_92 = new RoomObjectModel();
         _visualization = null;
         var_395 = null;
         _updateID = 0;
         var_1971 = var_1218++;
      }
      
      public function getInstanceId() : int
      {
         return var_1971;
      }
      
      public function getId() : int
      {
         return _id;
      }
      
      public function getUpdateID() : uint
      {
         return _updateID;
      }
      
      public function dispose() : void
      {
         var_75 = null;
         var_209 = null;
         if(var_92 != null)
         {
            var_92.dispose();
            var_92 = null;
         }
         var_470 = null;
         setVisualization(null);
         setEventHandler(null);
      }
      
      public function getType() : String
      {
         return _type;
      }
      
      public function getLocation() : IVector3d
      {
         var_1451.assign(var_75);
         return var_1451;
      }
      
      public function setLocation(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(var_75.x != param1.x || var_75.y != param1.y || var_75.z != param1.z)
         {
            var_75.x = param1.x;
            var_75.y = param1.y;
            var_75.z = param1.z;
            ++_updateID;
         }
      }
      
      public function setDirection(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(var_209.x != param1.x || var_209.y != param1.y || var_209.z != param1.z)
         {
            var_209.x = (param1.x % 360 + 360) % 360;
            var_209.y = (param1.y % 360 + 360) % 360;
            var_209.z = (param1.z % 360 + 360) % 360;
            ++_updateID;
         }
      }
      
      public function setType(param1:String) : void
      {
         _type = param1;
      }
      
      public function getEventHandler() : IRoomObjectEventHandler
      {
         return var_395;
      }
      
      public function getDirection() : IVector3d
      {
         var_1452.assign(var_209);
         return var_1452;
      }
      
      public function setState(param1:int, param2:uint) : Boolean
      {
         if(param2 < var_470.length)
         {
            if(var_470[param2] != param1)
            {
               var_470[param2] = param1;
               ++_updateID;
            }
            return true;
         }
         return false;
      }
      
      public function setEventHandler(param1:IRoomObjectEventHandler) : void
      {
         if(param1 == var_395)
         {
            return;
         }
         var _loc2_:IRoomObjectEventHandler = var_395;
         if(_loc2_ != null)
         {
            var_395 = null;
            _loc2_.object = null;
         }
         var_395 = param1;
         if(var_395 != null)
         {
            var_395.object = this;
         }
      }
      
      public function getState(param1:uint) : int
      {
         if(param1 < var_470.length)
         {
            return var_470[param1];
         }
         return -1;
      }
      
      public function setVisualization(param1:IRoomObjectVisualization) : void
      {
         if(param1 != _visualization)
         {
            if(_visualization != null)
            {
               _visualization.dispose();
            }
            _visualization = param1;
            if(_visualization != null)
            {
               _visualization.object = this;
            }
         }
      }
      
      public function getVisualization() : IRoomObjectVisualization
      {
         return _visualization;
      }
      
      public function getModel() : IRoomObjectModel
      {
         return var_92;
      }
      
      public function getModelController() : IRoomObjectModelController
      {
         return var_92;
      }
      
      public function getMouseHandler() : IRoomObjectMouseHandler
      {
         return getEventHandler();
      }
   }
}
