package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_990:int = 20;
      
      private static const const_647:int = 10;
      
      private static const const_1327:int = 31;
      
      private static const const_1328:int = 32;
      
      private static const const_648:int = 30;
       
      
      private var var_296:Array;
      
      private var var_773:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_296 = new Array();
         super();
         super.setAnimation(const_648);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_773)
            {
               this.var_773 = true;
               this.var_296 = new Array();
               this.var_296.push(const_1327);
               this.var_296.push(const_1328);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_647)
         {
            if(this.var_773)
            {
               this.var_773 = false;
               this.var_296 = new Array();
               if(direction == 2)
               {
                  this.var_296.push(const_990 + 5 - param1);
                  this.var_296.push(const_647 + 5 - param1);
               }
               else
               {
                  this.var_296.push(const_990 + param1);
                  this.var_296.push(const_647 + param1);
               }
               this.var_296.push(const_648);
               return;
            }
            super.setAnimation(const_648);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
         {
            if(this.var_296.length > 0)
            {
               super.setAnimation(this.var_296.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
