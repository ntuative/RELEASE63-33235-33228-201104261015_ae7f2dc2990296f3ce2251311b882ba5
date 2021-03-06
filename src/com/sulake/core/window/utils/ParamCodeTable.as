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
         param1["null"] = const_206;
         param1["bound_to_parent_rect"] = const_105;
         param1["child_window"] = const_1238;
         param1["embedded_controller"] = const_1128;
         param1["resize_to_accommodate_children"] = const_71;
         param1["input_event_processor"] = const_31;
         param1["internal_event_handling"] = const_952;
         param1["mouse_dragging_target"] = const_290;
         param1["mouse_dragging_trigger"] = const_421;
         param1["mouse_scaling_target"] = const_315;
         param1["mouse_scaling_trigger"] = const_464;
         param1["horizontal_mouse_scaling_trigger"] = const_251;
         param1["vertical_mouse_scaling_trigger"] = const_263;
         param1["observe_parent_input_events"] = const_1107;
         param1["optimize_region_to_layout_size"] = const_532;
         param1["parent_window"] = const_1233;
         param1["relative_horizontal_scale_center"] = const_214;
         param1["relative_horizontal_scale_fixed"] = const_148;
         param1["relative_horizontal_scale_move"] = const_412;
         param1["relative_horizontal_scale_strech"] = const_420;
         param1["relative_scale_center"] = const_1099;
         param1["relative_scale_fixed"] = const_752;
         param1["relative_scale_move"] = const_1244;
         param1["relative_scale_strech"] = const_1208;
         param1["relative_vertical_scale_center"] = const_218;
         param1["relative_vertical_scale_fixed"] = const_145;
         param1["relative_vertical_scale_move"] = const_283;
         param1["relative_vertical_scale_strech"] = const_297;
         param1["on_resize_align_left"] = const_738;
         param1["on_resize_align_right"] = const_588;
         param1["on_resize_align_center"] = const_575;
         param1["on_resize_align_top"] = const_878;
         param1["on_resize_align_bottom"] = const_509;
         param1["on_resize_align_middle"] = const_604;
         param1["on_accommodate_align_left"] = const_1199;
         param1["on_accommodate_align_right"] = const_627;
         param1["on_accommodate_align_center"] = const_955;
         param1["on_accommodate_align_top"] = const_1251;
         param1["on_accommodate_align_bottom"] = const_607;
         param1["on_accommodate_align_middle"] = const_745;
         param1["route_input_events_to_parent"] = const_583;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1155;
         param1["scalable_with_mouse"] = const_1225;
         param1["reflect_horizontal_resize_to_parent"] = const_610;
         param1["reflect_vertical_resize_to_parent"] = const_586;
         param1["reflect_resize_to_parent"] = const_344;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1290;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
