package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1635:String = "pricing_model_unknown";
      
      public static const const_431:String = "pricing_model_single";
      
      public static const const_385:String = "pricing_model_multi";
      
      public static const const_543:String = "pricing_model_bundle";
      
      public static const const_1762:String = "price_type_none";
      
      public static const const_923:String = "price_type_credits";
      
      public static const const_1141:String = "price_type_activitypoints";
      
      public static const const_1157:String = "price_type_credits_and_activitypoints";
       
      
      private var var_788:String;
      
      private var var_1206:String;
      
      private var _offerId:int;
      
      private var var_1920:String;
      
      private var var_1207:int;
      
      private var var_1205:int;
      
      private var var_1919:int;
      
      private var var_351:ICatalogPage;
      
      private var var_651:IProductContainer;
      
      private var var_2630:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:Array, param7:ICatalogPage)
      {
         super();
         this._offerId = param1;
         this.var_1920 = param2;
         this.var_1207 = param3;
         this.var_1205 = param4;
         this.var_1919 = param5;
         this.var_351 = param7;
         this.analyzePricingModel(param6);
         this.analyzePriceType();
         this.createProductContainer(param6);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_351;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1920;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1207;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1205;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1919;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_651;
      }
      
      public function get pricingModel() : String
      {
         return this.var_788;
      }
      
      public function get priceType() : String
      {
         return this.var_1206;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2630;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2630 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_1920 = "";
         this.var_1207 = 0;
         this.var_1205 = 0;
         this.var_1919 = 0;
         this.var_351 = null;
         if(this.var_651 != null)
         {
            this.var_651.dispose();
            this.var_651 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_788)
         {
            case const_431:
               this.var_651 = new SingleProductContainer(this,param1);
               break;
            case const_385:
               this.var_651 = new MultiProductContainer(this,param1);
               break;
            case const_543:
               this.var_651 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_788);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_788 = const_431;
            }
            else
            {
               this.var_788 = const_385;
            }
         }
         else if(param1.length > 1)
         {
            this.var_788 = const_543;
         }
         else
         {
            this.var_788 = const_1635;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1207 > 0 && this.var_1205 > 0)
         {
            this.var_1206 = const_1157;
         }
         else if(this.var_1207 > 0)
         {
            this.var_1206 = const_923;
         }
         else if(this.var_1205 > 0)
         {
            this.var_1206 = const_1141;
         }
         else
         {
            this.var_1206 = const_1762;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_351.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_651.products)
         {
            _loc4_ = this.var_351.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,_loc1_,this.page);
      }
   }
}
