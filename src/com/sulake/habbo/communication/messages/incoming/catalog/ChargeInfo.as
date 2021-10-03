package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2338:int;
      
      private var var_2825:int;
      
      private var var_1207:int;
      
      private var var_1205:int;
      
      private var var_1919:int;
      
      private var var_2826:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2338 = param1.readInteger();
         this.var_2825 = param1.readInteger();
         this.var_1207 = param1.readInteger();
         this.var_1205 = param1.readInteger();
         this.var_1919 = param1.readInteger();
         this.var_2826 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2338;
      }
      
      public function get charges() : int
      {
         return this.var_2825;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1207;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1205;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2826;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1919;
      }
   }
}
