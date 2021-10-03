package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_2018:String = "";
      
      private var var_1686:String = "";
      
      private var var_2757:String = "";
      
      private var var_2758:Number = 0;
      
      private var var_2760:Number = 0;
      
      private var var_2275:Number = 0;
      
      private var var_2273:Number = 0;
      
      private var var_2759:Boolean = false;
      
      private var var_2756:Boolean = false;
      
      private var var_2761:Boolean = false;
      
      private var var_2755:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_2018 = param2;
         this.var_1686 = param3;
         this.var_2757 = param4;
         this.var_2758 = param5;
         this.var_2760 = param6;
         this.var_2275 = param7;
         this.var_2273 = param8;
         this.var_2759 = param9;
         this.var_2756 = param10;
         this.var_2761 = param11;
         this.var_2755 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_2018;
      }
      
      public function get canvasId() : String
      {
         return this.var_1686;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2757;
      }
      
      public function get screenX() : Number
      {
         return this.var_2758;
      }
      
      public function get screenY() : Number
      {
         return this.var_2760;
      }
      
      public function get localX() : Number
      {
         return this.var_2275;
      }
      
      public function get localY() : Number
      {
         return this.var_2273;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2759;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2756;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2761;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2755;
      }
   }
}
