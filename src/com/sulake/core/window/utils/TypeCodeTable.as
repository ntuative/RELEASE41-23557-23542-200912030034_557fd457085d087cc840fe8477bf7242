package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_612;
         param1["bitmap"] = const_714;
         param1["border"] = const_616;
         param1["border_notify"] = const_1329;
         param1["button"] = const_457;
         param1["button_thick"] = const_569;
         param1["button_icon"] = const_1236;
         param1["button_group_left"] = const_651;
         param1["button_group_center"] = const_713;
         param1["button_group_right"] = const_590;
         param1["canvas"] = const_524;
         param1["checkbox"] = const_681;
         param1["closebutton"] = const_978;
         param1["container"] = const_301;
         param1["container_button"] = const_548;
         param1["display_object_wrapper"] = const_497;
         param1["dropmenu"] = const_355;
         param1["dropmenu_item"] = const_437;
         param1["frame"] = const_293;
         param1["frame_notify"] = const_1109;
         param1["header"] = const_715;
         param1["icon"] = const_899;
         param1["itemgrid"] = const_793;
         param1["itemgrid_horizontal"] = const_389;
         param1["itemgrid_vertical"] = const_725;
         param1["itemlist"] = const_838;
         param1["itemlist_horizontal"] = const_330;
         param1["itemlist_vertical"] = const_313;
         param1["maximizebox"] = const_1175;
         param1["menu"] = const_1147;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_812;
         param1["minimizebox"] = const_1318;
         param1["notify"] = const_1128;
         param1["null"] = const_414;
         param1["password"] = const_534;
         param1["radiobutton"] = const_709;
         param1["region"] = const_447;
         param1["restorebox"] = const_1207;
         param1["scaler"] = const_881;
         param1["scaler_horizontal"] = const_1150;
         param1["scaler_vertical"] = const_1273;
         param1["scrollbar_horizontal"] = const_359;
         param1["scrollbar_vertical"] = const_542;
         param1["scrollbar_slider_button_up"] = const_964;
         param1["scrollbar_slider_button_down"] = const_975;
         param1["scrollbar_slider_button_left"] = const_965;
         param1["scrollbar_slider_button_right"] = const_814;
         param1["scrollbar_slider_bar_horizontal"] = const_938;
         param1["scrollbar_slider_bar_vertical"] = const_943;
         param1["scrollbar_slider_track_horizontal"] = const_934;
         param1["scrollbar_slider_track_vertical"] = const_971;
         param1["scrollable_itemlist"] = const_1252;
         param1["scrollable_itemlist_vertical"] = const_448;
         param1["scrollable_itemlist_horizontal"] = const_874;
         param1["selector"] = const_640;
         param1["selector_list"] = const_589;
         param1["submenu"] = const_812;
         param1["tab_button"] = const_685;
         param1["tab_container_button"] = const_800;
         param1["tab_context"] = const_462;
         param1["tab_content"] = const_780;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_650;
         param1["input"] = const_494;
         param1["toolbar"] = const_1186;
         param1["tooltip"] = WINDOW_TYPE_TOOLTIP;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
