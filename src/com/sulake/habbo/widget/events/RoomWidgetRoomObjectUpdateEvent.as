package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomObjectUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_277:String = "RWROUE_OBJECT_SELECTED";
      
      public static const const_110:String = "RWROUE_OBJECT_DESELECTED";
      
      public static const const_171:String = "RWROUE_USER_REMOVED";
      
      public static const const_147:String = "RWROUE_FURNI_REMOVED";
      
      public static const const_789:String = "RWROUE_FURNI_ADDED";
      
      public static const const_822:String = "RWROUE_USER_ADDED";
       
      
      private var _id:int = 0;
      
      private var _category:int = 0;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      public function RoomWidgetRoomObjectUpdateEvent(param1:String, param2:int, param3:int, param4:int, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this._id = param2;
         this._category = param3;
         this._roomId = param4;
         this._roomCategory = param5;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
   }
}
