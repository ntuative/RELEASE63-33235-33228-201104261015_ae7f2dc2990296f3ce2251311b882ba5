package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_413:String = "RWRQUE_VISITOR_QUEUE_STATUS";
      
      public static const const_523:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
       
      
      private var var_1231:int;
      
      private var var_2252:Boolean;
      
      private var var_460:Boolean;
      
      private var var_1702:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1231 = param2;
         this.var_2252 = param3;
         this.var_460 = param4;
         this.var_1702 = param5;
      }
      
      public function get position() : int
      {
         return this.var_1231;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return this.var_2252;
      }
      
      public function get isActive() : Boolean
      {
         return this.var_460;
      }
      
      public function get isClubQueue() : Boolean
      {
         return this.var_1702;
      }
   }
}
