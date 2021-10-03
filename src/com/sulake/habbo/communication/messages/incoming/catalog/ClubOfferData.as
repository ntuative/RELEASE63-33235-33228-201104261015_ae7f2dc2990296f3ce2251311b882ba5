package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1671:String;
      
      private var var_1939:int;
      
      private var var_2588:Boolean;
      
      private var var_2590:Boolean;
      
      private var var_2589:int;
      
      private var var_2592:int;
      
      private var var_2593:int;
      
      private var var_2587:int;
      
      private var var_2591:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1671 = param1.readString();
         this.var_1939 = param1.readInteger();
         this.var_2588 = param1.readBoolean();
         this.var_2590 = param1.readBoolean();
         this.var_2589 = param1.readInteger();
         this.var_2592 = param1.readInteger();
         this.var_2593 = param1.readInteger();
         this.var_2587 = param1.readInteger();
         this.var_2591 = param1.readInteger();
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
   }
}
