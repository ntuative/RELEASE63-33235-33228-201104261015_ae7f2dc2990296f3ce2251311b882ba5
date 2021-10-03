package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1438:Boolean;
      
      private var var_2298:int;
      
      private var var_1684:int;
      
      private var var_1683:int;
      
      private var var_2300:int;
      
      private var var_2295:int;
      
      private var var_2296:int;
      
      private var var_2297:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1438;
      }
      
      public function get commission() : int
      {
         return this.var_2298;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1684;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1683;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2295;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2300;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2296;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2297;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1438 = param1.readBoolean();
         this.var_2298 = param1.readInteger();
         this.var_1684 = param1.readInteger();
         this.var_1683 = param1.readInteger();
         this.var_2295 = param1.readInteger();
         this.var_2300 = param1.readInteger();
         this.var_2296 = param1.readInteger();
         this.var_2297 = param1.readInteger();
         return true;
      }
   }
}
