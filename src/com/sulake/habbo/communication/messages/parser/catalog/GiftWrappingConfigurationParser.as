package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2405:Boolean;
      
      private var var_2404:int;
      
      private var var_1753:Array;
      
      private var var_785:Array;
      
      private var var_784:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2405;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2404;
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1753 = [];
         this.var_785 = [];
         this.var_784 = [];
         this.var_2405 = param1.readBoolean();
         this.var_2404 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1753.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_785.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_784.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
