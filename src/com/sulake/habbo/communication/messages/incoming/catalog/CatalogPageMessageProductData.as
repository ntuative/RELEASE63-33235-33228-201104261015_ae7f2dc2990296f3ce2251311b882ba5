package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_64:String = "i";
      
      public static const const_78:String = "s";
      
      public static const const_204:String = "e";
       
      
      private var var_1472:String;
      
      private var var_2643:int;
      
      private var var_1172:String;
      
      private var _productCount:int;
      
      private var var_1861:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1472 = param1.readString();
         this.var_2643 = param1.readInteger();
         this.var_1172 = param1.readString();
         this._productCount = param1.readInteger();
         this.var_1861 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1472;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2643;
      }
      
      public function get extraParam() : String
      {
         return this.var_1172;
      }
      
      public function get productCount() : int
      {
         return this._productCount;
      }
      
      public function get expiration() : int
      {
         return this.var_1861;
      }
   }
}
