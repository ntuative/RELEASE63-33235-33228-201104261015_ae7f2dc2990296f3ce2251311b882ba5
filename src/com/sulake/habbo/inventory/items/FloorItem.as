package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_2126:String;
      
      protected var var_1364:Number;
      
      protected var var_2908:Boolean;
      
      protected var var_2909:Boolean;
      
      protected var var_2383:Boolean;
      
      protected var var_2259:Boolean;
      
      protected var var_2907:int;
      
      protected var var_2384:int;
      
      protected var var_2389:int;
      
      protected var var_2385:int;
      
      protected var var_1785:String;
      
      protected var var_1635:int;
      
      protected var var_942:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2383 = param5;
         this.var_2909 = param6;
         this.var_2908 = param7;
         this.var_2259 = param8;
         this.var_2126 = param9;
         this.var_1364 = param10;
         this.var_2907 = param11;
         this.var_2384 = param12;
         this.var_2389 = param13;
         this.var_2385 = param14;
         this.var_1785 = param15;
         this.var_1635 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_2126;
      }
      
      public function get extra() : Number
      {
         return this.var_1364;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_2908;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_2909;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2383;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2259;
      }
      
      public function get expires() : int
      {
         return this.var_2907;
      }
      
      public function get creationDay() : int
      {
         return this.var_2384;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2389;
      }
      
      public function get creationYear() : int
      {
         return this.var_2385;
      }
      
      public function get slotId() : String
      {
         return this.var_1785;
      }
      
      public function get songId() : int
      {
         return this.var_1635;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_942 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_942;
      }
   }
}
