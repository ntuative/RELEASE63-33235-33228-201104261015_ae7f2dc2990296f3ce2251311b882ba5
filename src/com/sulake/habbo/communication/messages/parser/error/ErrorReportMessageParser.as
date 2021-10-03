package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1736:int;
      
      private var var_1772:int;
      
      private var var_1771:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1772 = param1.readInteger();
         this.var_1736 = param1.readInteger();
         this.var_1771 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1736 = 0;
         this.var_1772 = 0;
         this.var_1771 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1736;
      }
      
      public function get messageId() : int
      {
         return this.var_1772;
      }
      
      public function get timestamp() : String
      {
         return this.var_1771;
      }
   }
}
