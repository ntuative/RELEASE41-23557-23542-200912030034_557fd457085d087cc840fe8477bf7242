package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_960:String = "inventory_badges";
      
      public static const const_1298:String = "inventory_clothes";
      
      public static const const_1255:String = "inventory_furniture";
      
      public static const const_498:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_932:String = "inventory_effects";
       
      
      private var var_1562:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_498);
         var_1562 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_1562;
      }
   }
}
