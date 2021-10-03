package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var var_1788:String;
      
      private var var_1789:String;
      
      private var var_1787:String;
      
      private var _name:String;
      
      private var var_1072:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         this.var_1788 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         this.var_1789 = _loc5_[0];
         this.var_1787 = _loc5_[1];
         this._name = param2;
         this.var_1072 = param3;
      }
      
      public function get id() : String
      {
         return this.var_1788 + "_" + this.var_1789 + "." + this.var_1787;
      }
      
      public function get languageCode() : String
      {
         return this.var_1788;
      }
      
      public function get countryCode() : String
      {
         return this.var_1789;
      }
      
      public function get encoding() : String
      {
         return this.var_1787;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get url() : String
      {
         return this.var_1072;
      }
   }
}
