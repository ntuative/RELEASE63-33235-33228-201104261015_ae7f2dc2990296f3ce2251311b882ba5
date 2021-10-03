package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2571:int;
      
      private var var_1560:String;
      
      private var _objId:int;
      
      private var var_2006:int;
      
      private var _category:int;
      
      private var var_2126:String;
      
      private var var_2765:Boolean;
      
      private var var_2766:Boolean;
      
      private var var_2763:Boolean;
      
      private var var_2764:Boolean;
      
      private var var_2201:int;
      
      private var var_1364:int;
      
      private var var_1785:String = "";
      
      private var var_1635:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2571 = param1;
         this.var_1560 = param2;
         this._objId = param3;
         this.var_2006 = param4;
         this._category = param5;
         this.var_2126 = param6;
         this.var_2765 = param7;
         this.var_2766 = param8;
         this.var_2763 = param9;
         this.var_2764 = param10;
         this.var_2201 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1785 = param1;
         this.var_1364 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2571;
      }
      
      public function get itemType() : String
      {
         return this.var_1560;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_2006;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2126;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2765;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2766;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2763;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2764;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2201;
      }
      
      public function get slotId() : String
      {
         return this.var_1785;
      }
      
      public function get songId() : int
      {
         return this.var_1635;
      }
      
      public function get extra() : int
      {
         return this.var_1364;
      }
   }
}
