package com.sulake.habbo.widget.events
{
   public class RoomWidgetSettingsUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_404:String = "RWSUE_SETTINGS";
       
      
      private var var_549:Number;
      
      public function RoomWidgetSettingsUpdateEvent(param1:String, param2:Number, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.var_549 = param2;
      }
      
      public function get volume() : Number
      {
         return this.var_549;
      }
   }
}
