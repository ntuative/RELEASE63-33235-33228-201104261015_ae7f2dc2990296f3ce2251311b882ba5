package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1920:String;
      
      private var var_1207:int;
      
      private var var_1205:int;
      
      private var var_1919:int;
      
      private var var_1109:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1920 = param1.readString();
         this.var_1207 = param1.readInteger();
         this.var_1205 = param1.readInteger();
         this.var_1919 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1109 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1109.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
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
      
      public function get products() : Array
      {
         return this.var_1109;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1919;
      }
   }
}
