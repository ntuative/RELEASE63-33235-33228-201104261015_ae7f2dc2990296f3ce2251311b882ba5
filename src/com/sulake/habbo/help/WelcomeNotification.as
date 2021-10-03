package com.sulake.habbo.help
{
   public class WelcomeNotification
   {
       
      
      private var var_2670:String;
      
      private var var_2668:String;
      
      private var var_2669:String;
      
      public function WelcomeNotification(param1:String, param2:String, param3:String)
      {
         super();
         this.var_2670 = param1;
         this.var_2668 = param2;
         this.var_2669 = param3;
      }
      
      public function get targetIconId() : String
      {
         return this.var_2670;
      }
      
      public function get titleLocalizationKey() : String
      {
         return this.var_2668;
      }
      
      public function get descriptionLocalizationKey() : String
      {
         return this.var_2669;
      }
   }
}
