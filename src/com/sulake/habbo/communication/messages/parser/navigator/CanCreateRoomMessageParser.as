package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CanCreateRoomMessageParser implements IMessageParser
   {
      
      public static const const_2053:int = 0;
      
      public static const const_2045:int = 1;
       
      
      private var var_1670:int;
      
      private var var_2502:int;
      
      public function CanCreateRoomMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1670 = param1.readInteger();
         this.var_2502 = param1.readInteger();
         return true;
      }
      
      public function get resultCode() : int
      {
         return this.var_1670;
      }
      
      public function get roomLimit() : int
      {
         return this.var_2502;
      }
   }
}
