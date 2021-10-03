package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1698:int;
      
      private var var_2748:int;
      
      private var var_831:int;
      
      private var var_488:Number;
      
      private var var_2749:Boolean;
      
      private var var_2750:int;
      
      private var var_2004:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_488);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2748 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2750 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2749 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_831;
         if(this.var_831 == 1)
         {
            this.var_488 = param1;
            this.var_1698 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_831);
            this.var_488 = this.var_488 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2749 && param3 - this.var_1698 >= this.var_2748)
         {
            this.var_831 = 0;
            if(this.var_2004 < this.var_2750)
            {
               param2.track("performance","averageFramerate",this.frameRate);
               ++this.var_2004;
               this.var_1698 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
