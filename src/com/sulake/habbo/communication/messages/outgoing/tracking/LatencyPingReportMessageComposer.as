package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2828:int;
      
      private var var_2829:int;
      
      private var var_2827:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2828 = param1;
         this.var_2829 = param2;
         this.var_2827 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2828,this.var_2829,this.var_2827];
      }
      
      public function dispose() : void
      {
      }
   }
}
