package com.sulake.core.localization
{
   import flash.utils.Dictionary;
   
   public class Localization implements ILocalization
   {
       
      
      private var var_684:String;
      
      private var var_192:String;
      
      private var var_1363:Dictionary;
      
      private var var_487:Array;
      
      private var var_196:Boolean = false;
      
      public function Localization(param1:String, param2:String = null)
      {
         super();
         this.var_487 = new Array();
         this.var_1363 = new Dictionary();
         this.var_684 = param1;
         this.var_192 = param2;
      }
      
      public function get isInitialized() : Boolean
      {
         return this.var_192 != null;
      }
      
      public function get key() : String
      {
         return this.var_684;
      }
      
      public function get value() : String
      {
         return this.fillParameterValues();
      }
      
      public function get raw() : String
      {
         return this.var_192;
      }
      
      public function setValue(param1:String) : void
      {
         this.var_192 = param1;
         this.updateListeners();
      }
      
      public function registerListener(param1:ILocalizable) : void
      {
         this.var_487.push(param1);
         param1.localization = this.value;
      }
      
      public function removeListener(param1:ILocalizable) : void
      {
         var _loc2_:int = this.var_487.indexOf(param1);
         if(_loc2_ >= 0)
         {
            this.var_487.splice(_loc2_,1);
         }
      }
      
      public function registerParameter(param1:String, param2:String, param3:String = "%") : void
      {
         param1 = param3 + param1 + param3;
         this.var_1363[param1] = param2;
         this.updateListeners();
      }
      
      public function updateListeners() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_487)
         {
            _loc1_.localization = this.value;
         }
      }
      
      private function fillParameterValues() : String
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc1_:String = this.var_192;
         for(_loc2_ in this.var_1363)
         {
            _loc3_ = this.var_1363[_loc2_];
            _loc4_ = new RegExp(_loc2_,"gim");
            if(_loc1_ != null)
            {
               _loc1_ = _loc1_.replace(_loc4_,_loc3_);
            }
         }
         return _loc1_;
      }
   }
}
