package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_173:Number = 0;
      
      private var var_172:Number = 0;
      
      private var var_2620:Number = 0;
      
      private var var_2619:Number = 0;
      
      private var var_2624:Number = 0;
      
      private var var_2622:Number = 0;
      
      private var var_456:int = 0;
      
      private var var_2621:int = 0;
      
      private var var_327:Array;
      
      private var var_2623:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_327 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_173 = param3;
         this.var_172 = param4;
         this.var_2620 = param5;
         this.var_456 = param6;
         this.var_2621 = param7;
         this.var_2619 = param8;
         this.var_2624 = param9;
         this.var_2622 = param10;
         this.var_2623 = param11;
         this.var_327 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_173;
      }
      
      public function get z() : Number
      {
         return this.var_172;
      }
      
      public function get localZ() : Number
      {
         return this.var_2620;
      }
      
      public function get targetX() : Number
      {
         return this.var_2619;
      }
      
      public function get targetY() : Number
      {
         return this.var_2624;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2622;
      }
      
      public function get dir() : int
      {
         return this.var_456;
      }
      
      public function get dirHead() : int
      {
         return this.var_2621;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2623;
      }
      
      public function get actions() : Array
      {
         return this.var_327.slice();
      }
   }
}
