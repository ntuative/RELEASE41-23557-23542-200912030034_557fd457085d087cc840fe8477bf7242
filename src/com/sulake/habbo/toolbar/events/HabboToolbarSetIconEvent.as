package com.sulake.habbo.toolbar.events
{
   import flash.display.BitmapData;
   import flash.events.Event;
   
   public class HabboToolbarSetIconEvent extends Event
   {
      
      public static const const_852:String = "HTIE_SET_TOOLBAR_ICON_BITMAP";
      
      public static const const_161:String = "HTIE_REMOVE_TOOLBAR_ICON";
      
      public static const const_110:String = "HTIE_SET_TOOLBAR_ICON";
      
      public static const const_163:String = "HTIE_SET_TOOLBAR_ICON_STATE";
       
      
      private var var_1875:String;
      
      private var var_695:String;
      
      private var var_1171:String;
      
      private var _bitmapData:BitmapData;
      
      public function HabboToolbarSetIconEvent(param1:String, param2:String, param3:String = null, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         var_695 = param2;
         var_1171 = param3;
      }
      
      public function set bitmapData(param1:BitmapData) : void
      {
         _bitmapData = param1;
      }
      
      public function get iconState() : String
      {
         return var_1875;
      }
      
      public function get iconId() : String
      {
         return var_695;
      }
      
      public function set assetName(param1:String) : void
      {
         var_1171 = param1;
      }
      
      public function set iconState(param1:String) : void
      {
         var_1875 = param1;
      }
      
      public function get bitmapData() : BitmapData
      {
         return _bitmapData;
      }
      
      public function get assetName() : String
      {
         return var_1171;
      }
   }
}
