package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2627:int = 0;
      
      private var var_1382:String = "";
      
      private var var_1697:String = "";
      
      private var var_2318:String = "";
      
      private var var_2785:String = "";
      
      private var var_2014:int = 0;
      
      private var var_2782:int = 0;
      
      private var var_2783:int = 0;
      
      private var var_1381:int = 0;
      
      private var var_2784:int = 0;
      
      private var var_1379:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2627 = param1;
         this.var_1382 = param2;
         this.var_1697 = param3;
         this.var_2318 = param4;
         this.var_2785 = param5;
         if(param6)
         {
            this.var_2014 = 1;
         }
         else
         {
            this.var_2014 = 0;
         }
         this.var_2782 = param7;
         this.var_2783 = param8;
         this.var_1381 = param9;
         this.var_2784 = param10;
         this.var_1379 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2627,this.var_1382,this.var_1697,this.var_2318,this.var_2785,this.var_2014,this.var_2782,this.var_2783,this.var_1381,this.var_2784,this.var_1379];
      }
   }
}
