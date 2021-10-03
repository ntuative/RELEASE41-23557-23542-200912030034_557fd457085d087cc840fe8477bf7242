package com.sulake.habbo.room.messages
{
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObjectRoomMaskUpdateMessage extends RoomObjectUpdateMessage
   {
      
      public static const const_1295:String = "door";
      
      public static const const_394:String = "window";
      
      public static const const_547:String = "RORMUM_ADD_MASK";
      
      public static const const_387:String = "RORMUM_ADD_MASK";
      
      public static const const_192:String = "hole";
       
      
      private var var_2108:String = "";
      
      private var var_2109:String = "";
      
      private var var_2106:String = "window";
      
      private var var_2107:Vector3d = null;
      
      private var _type:String = "";
      
      public function RoomObjectRoomMaskUpdateMessage(param1:String, param2:String, param3:String = null, param4:IVector3d = null, param5:String = "window")
      {
         super(null,null);
         _type = param1;
         var_2109 = param2;
         var_2108 = param3;
         if(param4 != null)
         {
            var_2107 = new Vector3d(param4.x,param4.y,param4.z);
         }
         var_2106 = param5;
      }
      
      public function get maskCategory() : String
      {
         return var_2106;
      }
      
      public function get maskId() : String
      {
         return var_2109;
      }
      
      public function get maskLocation() : IVector3d
      {
         return var_2107;
      }
      
      public function get maskType() : String
      {
         return var_2108;
      }
      
      public function get type() : String
      {
         return _type;
      }
   }
}
