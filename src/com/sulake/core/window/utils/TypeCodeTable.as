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
         param1["background"] = const_935;
         param1["bitmap"] = const_868;
         param1["border"] = const_687;
         param1["border_notify"] = const_1588;
         param1["button"] = const_621;
         param1["button_thick"] = const_916;
         param1["button_icon"] = const_1726;
         param1["button_group_left"] = const_872;
         param1["button_group_center"] = const_836;
         param1["button_group_right"] = const_834;
         param1["canvas"] = const_874;
         param1["checkbox"] = const_913;
         param1["closebutton"] = const_1193;
         param1["container"] = const_424;
         param1["container_button"] = const_765;
         param1["display_object_wrapper"] = const_762;
         param1["dropmenu"] = const_594;
         param1["dropmenu_item"] = const_521;
         param1["frame"] = const_429;
         param1["frame_notify"] = const_1535;
         param1["header"] = const_901;
         param1["html"] = const_1074;
         param1["icon"] = const_1184;
         param1["itemgrid"] = const_1090;
         param1["itemgrid_horizontal"] = const_487;
         param1["itemgrid_vertical"] = const_819;
         param1["itemlist"] = const_1209;
         param1["itemlist_horizontal"] = const_415;
         param1["itemlist_vertical"] = const_434;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1686;
         param1["menu"] = const_1651;
         param1["menu_item"] = const_1783;
         param1["submenu"] = const_1122;
         param1["minimizebox"] = const_1761;
         param1["notify"] = const_1736;
         param1["null"] = const_764;
         param1["password"] = const_837;
         param1["radiobutton"] = const_751;
         param1["region"] = const_601;
         param1["restorebox"] = const_1810;
         param1["scaler"] = const_616;
         param1["scaler_horizontal"] = const_1537;
         param1["scaler_vertical"] = const_1603;
         param1["scrollbar_horizontal"] = const_510;
         param1["scrollbar_vertical"] = const_788;
         param1["scrollbar_slider_button_up"] = const_1088;
         param1["scrollbar_slider_button_down"] = const_1232;
         param1["scrollbar_slider_button_left"] = const_1146;
         param1["scrollbar_slider_button_right"] = const_1109;
         param1["scrollbar_slider_bar_horizontal"] = const_1260;
         param1["scrollbar_slider_bar_vertical"] = const_1286;
         param1["scrollbar_slider_track_horizontal"] = const_1172;
         param1["scrollbar_slider_track_vertical"] = const_1239;
         param1["scrollable_itemlist"] = const_1814;
         param1["scrollable_itemlist_vertical"] = const_459;
         param1["scrollable_itemlist_horizontal"] = const_1130;
         param1["selector"] = const_701;
         param1["selector_list"] = const_709;
         param1["submenu"] = const_1122;
         param1["tab_button"] = const_967;
         param1["tab_container_button"] = const_1133;
         param1["tab_context"] = const_375;
         param1["tab_content"] = const_1283;
         param1["tab_selector"] = const_809;
         param1["text"] = const_595;
         param1["input"] = const_759;
         param1["toolbar"] = const_1760;
         param1["tooltip"] = const_390;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
