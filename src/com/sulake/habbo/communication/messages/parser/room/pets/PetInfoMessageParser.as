package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1617:int;
      
      private var _name:String;
      
      private var var_1436:int;
      
      private var var_2143:int;
      
      private var var_2144:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_623:String;
      
      private var var_2147:int;
      
      private var var_2142:int;
      
      private var var_2148:int;
      
      private var var_2145:int;
      
      private var var_2146:int;
      
      private var _ownerName:String;
      
      private var var_520:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1617;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1436;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2143;
      }
      
      public function get experience() : int
      {
         return this.var_2144;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_623;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2147;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2142;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2148;
      }
      
      public function get respect() : int
      {
         return this.var_2145;
      }
      
      public function get ownerId() : int
      {
         return this.var_2146;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_520;
      }
      
      public function flush() : Boolean
      {
         this.var_1617 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1617 = param1.readInteger();
         this._name = param1.readString();
         this.var_1436 = param1.readInteger();
         this.var_2143 = param1.readInteger();
         this.var_2144 = param1.readInteger();
         this.var_2147 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2142 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2148 = param1.readInteger();
         this.var_623 = param1.readString();
         this.var_2145 = param1.readInteger();
         this.var_2146 = param1.readInteger();
         this.var_520 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
