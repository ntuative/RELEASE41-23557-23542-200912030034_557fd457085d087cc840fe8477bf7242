package com.sulake.habbo.room.object.visualization.room.mask
{
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   
   public class PlaneMaskBitmap
   {
      
      public static const const_49:Number = -1;
      
      public static const MAX_NORMAL_COORDINATE_VALUE:Number = 1;
       
      
      private var _normalMaxX:Number = 1;
      
      private var var_1896:Number = -1;
      
      private var var_765:IGraphicAsset = null;
      
      private var var_1897:Number = 1;
      
      private var var_1898:Number = -1;
      
      public function PlaneMaskBitmap(param1:IGraphicAsset, param2:Number = -1, param3:Number = 1, param4:Number = -1, param5:Number = 1)
      {
         super();
         var_1896 = param2;
         _normalMaxX = param3;
         var_1898 = param4;
         var_1897 = param5;
         var_765 = param1;
      }
      
      public function get normalMaxY() : Number
      {
         return var_1897;
      }
      
      public function get normalMaxX() : Number
      {
         return _normalMaxX;
      }
      
      public function get normalMinX() : Number
      {
         return var_1896;
      }
      
      public function get normalMinY() : Number
      {
         return var_1898;
      }
      
      public function get asset() : IGraphicAsset
      {
         return var_765;
      }
      
      public function dispose() : void
      {
         var_765 = null;
      }
   }
}
