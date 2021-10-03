package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1617:int;
      
      private var var_1436:int;
      
      private var var_2450:int;
      
      private var var_2144:int;
      
      private var var_2447:int;
      
      private var _energy:int;
      
      private var var_2448:int;
      
      private var _nutrition:int;
      
      private var var_2449:int;
      
      private var var_2146:int;
      
      private var _ownerName:String;
      
      private var var_2145:int;
      
      private var var_520:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1617;
      }
      
      public function get level() : int
      {
         return this.var_1436;
      }
      
      public function get levelMax() : int
      {
         return this.var_2450;
      }
      
      public function get experience() : int
      {
         return this.var_2144;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2447;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2448;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2449;
      }
      
      public function get ownerId() : int
      {
         return this.var_2146;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2145;
      }
      
      public function get age() : int
      {
         return this.var_520;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1617 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1436 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2450 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2144 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2447 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2448 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2449 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2146 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2145 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_520 = param1;
      }
   }
}
