package com.sulake.habbo.toolbar.events
{
   import flash.events.Event;
   
   public class HabboToolbarEvent extends Event
   {
      
      public static const const_68:String = "HTE_INITIALIZED";
      
      public static const const_37:String = "HTE_TOOLBAR_CLICK";
      
      public static const const_584:String = "HTE_TOOLBAR_ORIENTATION";
      
      public static const const_938:String = "HTE_TOOLBAR_RESIZED";
      
      public static const const_330:String = "HTE_TOOLBAR_STATE_HOTEL_VIEW";
      
      public static const const_309:String = "HTE_TOOLBAR_STATE_ROOM_VIEW";
       
      
      private var var_792:String;
      
      private var var_500:String;
      
      private var var_1213:String;
      
      public function HabboToolbarEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set iconId(param1:String) : void
      {
         this.var_792 = param1;
      }
      
      public function get iconId() : String
      {
         return this.var_792;
      }
      
      public function set orientation(param1:String) : void
      {
         this.var_500 = param1;
      }
      
      public function get orientation() : String
      {
         return this.var_500;
      }
      
      public function set iconName(param1:String) : void
      {
         this.var_1213 = param1;
      }
      
      public function get iconName() : String
      {
         return this.var_1213;
      }
   }
}
