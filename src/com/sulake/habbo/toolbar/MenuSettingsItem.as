package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2173:String;
      
      private var var_2175:Array;
      
      private var var_2174:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2173 = param1;
         this.var_2175 = param2;
         this.var_2174 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2173;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2175;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2174;
      }
   }
}
