package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2654:String;
      
      private var var_1947:String;
      
      private var var_2653:String;
      
      private var var_1946:Boolean;
      
      private var var_1945:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2654 = String(param1["set-type"]);
         this.var_1947 = String(param1["flipped-set-type"]);
         this.var_2653 = String(param1["remove-set-type"]);
         this.var_1946 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1945 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1945;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1945 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2654;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1947;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2653;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1946;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1946 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1947 = param1;
      }
   }
}
