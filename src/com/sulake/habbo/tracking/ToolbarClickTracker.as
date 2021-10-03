package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1347:IHabboTracking;
      
      private var var_2078:Boolean = false;
      
      private var var_2886:int = 0;
      
      private var var_2079:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1347 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1347 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2078 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2886 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_2078)
         {
            return;
         }
         ++this.var_2079;
         if(this.var_2079 <= this.var_2886)
         {
            this.var_1347.track("toolbar",param1);
         }
      }
   }
}
