package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2057:int = 1;
      
      public static const const_1597:int = 2;
       
      
      private var var_1026:String;
      
      private var var_2520:int;
      
      private var var_2515:int;
      
      private var var_2513:int;
      
      private var var_2517:int;
      
      private var var_2516:Boolean;
      
      private var var_2518:Boolean;
      
      private var var_2511:int;
      
      private var var_2521:int;
      
      private var var_2514:Boolean;
      
      private var var_2512:int;
      
      private var var_2519:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1026 = param1.readString();
         this.var_2520 = param1.readInteger();
         this.var_2515 = param1.readInteger();
         this.var_2513 = param1.readInteger();
         this.var_2517 = param1.readInteger();
         this.var_2516 = param1.readBoolean();
         this.var_2518 = param1.readBoolean();
         this.var_2511 = param1.readInteger();
         this.var_2521 = param1.readInteger();
         this.var_2514 = param1.readBoolean();
         this.var_2512 = param1.readInteger();
         this.var_2519 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_1026;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2520;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2515;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2513;
      }
      
      public function get responseType() : int
      {
         return this.var_2517;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2516;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2518;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2511;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2521;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2514;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2512;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2519;
      }
   }
}
