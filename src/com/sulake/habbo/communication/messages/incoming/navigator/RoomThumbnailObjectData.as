package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1313:int;
      
      private var var_1314:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function get pos() : int
      {
         return var_1313;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1313 = param1;
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1313 = this.var_1313;
         _loc1_.var_1314 = this.var_1314;
         return _loc1_;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1314 = param1;
      }
      
      public function get imgId() : int
      {
         return var_1314;
      }
   }
}
