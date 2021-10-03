package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_101;
         param1["bound_to_parent_rect"] = const_80;
         param1["child_window"] = const_867;
         param1["embedded_controller"] = const_322;
         param1["resize_to_accommodate_children"] = const_59;
         param1["input_event_processor"] = const_45;
         param1["internal_event_handling"] = const_539;
         param1["mouse_dragging_target"] = const_188;
         param1["mouse_dragging_trigger"] = const_303;
         param1["mouse_scaling_target"] = const_259;
         param1["mouse_scaling_trigger"] = const_443;
         param1["horizontal_mouse_scaling_trigger"] = const_203;
         param1["vertical_mouse_scaling_trigger"] = const_198;
         param1["observe_parent_input_events"] = const_985;
         param1["optimize_region_to_layout_size"] = const_411;
         param1["parent_window"] = const_819;
         param1["relative_horizontal_scale_center"] = const_157;
         param1["relative_horizontal_scale_fixed"] = const_120;
         param1["relative_horizontal_scale_move"] = const_297;
         param1["relative_horizontal_scale_strech"] = const_260;
         param1["relative_scale_center"] = const_887;
         param1["relative_scale_fixed"] = const_560;
         param1["relative_scale_move"] = const_775;
         param1["relative_scale_strech"] = const_986;
         param1["relative_vertical_scale_center"] = const_167;
         param1["relative_vertical_scale_fixed"] = const_119;
         param1["relative_vertical_scale_move"] = const_307;
         param1["relative_vertical_scale_strech"] = const_223;
         param1["on_resize_align_left"] = const_552;
         param1["on_resize_align_right"] = const_459;
         param1["on_resize_align_center"] = const_397;
         param1["on_resize_align_top"] = const_712;
         param1["on_resize_align_bottom"] = const_353;
         param1["on_resize_align_middle"] = const_425;
         param1["on_accommodate_align_left"] = const_930;
         param1["on_accommodate_align_right"] = const_403;
         param1["on_accommodate_align_center"] = const_537;
         param1["on_accommodate_align_top"] = const_974;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_558;
         param1["route_input_events_to_parent"] = const_386;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_953;
         param1["scalable_with_mouse"] = const_790;
         param1["reflect_horizontal_resize_to_parent"] = const_431;
         param1["reflect_vertical_resize_to_parent"] = const_410;
         param1["reflect_resize_to_parent"] = const_257;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
