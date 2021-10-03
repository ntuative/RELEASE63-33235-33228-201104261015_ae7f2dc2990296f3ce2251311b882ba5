package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2399:int;
      
      private var var_2400:int;
      
      private var var_2398:int;
      
      private var var_2397:String;
      
      private var var_1754:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2399 = param1.readInteger();
         this.var_2400 = param1.readInteger();
         this.var_2398 = param1.readInteger();
         this.var_2397 = param1.readString();
         this.var_1754 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2399;
      }
      
      public function get minute() : int
      {
         return this.var_2400;
      }
      
      public function get chatterId() : int
      {
         return this.var_2398;
      }
      
      public function get chatterName() : String
      {
         return this.var_2397;
      }
      
      public function get msg() : String
      {
         return this.var_1754;
      }
   }
}
