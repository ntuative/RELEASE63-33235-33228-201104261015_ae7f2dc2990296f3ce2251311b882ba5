package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1870:int = 0;
      
      private var var_1871:int = 0;
      
      private var var_2726:int = 0;
      
      private var var_2727:Boolean = false;
      
      private var var_2518:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1870 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1871 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2726 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2727 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2518 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1870;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1871;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2726;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2727;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2518;
      }
   }
}
