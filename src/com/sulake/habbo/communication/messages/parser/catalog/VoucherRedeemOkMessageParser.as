package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoucherRedeemOkMessageParser implements IMessageParser
   {
       
      
      private var var_1026:String = "";
      
      private var var_1257:String = "";
      
      public function VoucherRedeemOkMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1257 = "";
         this.var_1026 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1257 = param1.readString();
         this.var_1026 = param1.readString();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_1026;
      }
      
      public function get productDescription() : String
      {
         return this.var_1257;
      }
   }
}
