package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1438:Boolean = false;
      
      private var var_1939:int;
      
      private var var_1753:Array;
      
      private var var_785:Array;
      
      private var var_784:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1438 = _loc2_.isWrappingEnabled;
         this.var_1939 = _loc2_.wrappingPrice;
         this.var_1753 = _loc2_.stuffTypes;
         this.var_785 = _loc2_.boxTypes;
         this.var_784 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1438;
      }
      
      public function get price() : int
      {
         return this.var_1939;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1753;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_785;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_784;
      }
   }
}
