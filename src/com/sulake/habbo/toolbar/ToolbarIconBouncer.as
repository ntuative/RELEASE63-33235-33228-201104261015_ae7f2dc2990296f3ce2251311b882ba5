package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2603:Number;
      
      private var var_1970:Number;
      
      private var var_979:Number;
      
      private var var_454:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2603 = param1;
         this.var_1970 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_979 = param1;
         this.var_454 = 0;
      }
      
      public function update() : void
      {
         this.var_979 += this.var_1970;
         this.var_454 += this.var_979;
         if(this.var_454 > 0)
         {
            this.var_454 = 0;
            this.var_979 = this.var_2603 * -1 * this.var_979;
         }
      }
      
      public function get location() : Number
      {
         return this.var_454;
      }
   }
}
