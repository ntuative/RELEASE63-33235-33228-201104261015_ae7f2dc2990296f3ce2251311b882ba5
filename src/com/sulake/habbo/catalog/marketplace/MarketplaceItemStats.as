package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2187:int;
      
      private var var_2343:int;
      
      private var var_2344:int;
      
      private var _dayOffsets:Array;
      
      private var var_1765:Array;
      
      private var var_1766:Array;
      
      private var var_2345:int;
      
      private var var_2346:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2187;
      }
      
      public function get offerCount() : int
      {
         return this.var_2343;
      }
      
      public function get historyLength() : int
      {
         return this.var_2344;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1765;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1766;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2345;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2346;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2187 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2343 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2344 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1765 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1766 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2345 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2346 = param1;
      }
   }
}
