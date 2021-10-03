package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1671:String;
      
      private var var_1939:int;
      
      private var var_2588:Boolean;
      
      private var var_2590:Boolean;
      
      private var var_2589:int;
      
      private var var_2592:int;
      
      private var var_351:ICatalogPage;
      
      private var var_2593:int;
      
      private var var_2587:int;
      
      private var var_2591:int;
      
      private var var_1496:String;
      
      private var var_2855:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1671 = param2;
         this.var_1939 = param3;
         this.var_2588 = param4;
         this.var_2590 = param5;
         this.var_2589 = param6;
         this.var_2592 = param7;
         this.var_2593 = param8;
         this.var_2587 = param9;
         this.var_2591 = param10;
      }
      
      public function dispose() : void
      {
      }
      
      public function get extraParameter() : String
      {
         return this.var_1496;
      }
      
      public function set extraParameter(param1:String) : void
      {
         this.var_1496 = param1;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1671;
      }
      
      public function get price() : int
      {
         return this.var_1939;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2588;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2590;
      }
      
      public function get periods() : int
      {
         return this.var_2589;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2592;
      }
      
      public function get year() : int
      {
         return this.var_2593;
      }
      
      public function get month() : int
      {
         return this.var_2587;
      }
      
      public function get day() : int
      {
         return this.var_2591;
      }
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_202;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1939;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_351;
      }
      
      public function get priceType() : String
      {
         return Offer.const_923;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1671;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_351 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2855;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2855 = param1;
      }
   }
}
