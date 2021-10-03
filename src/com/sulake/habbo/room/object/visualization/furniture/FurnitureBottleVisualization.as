package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_990:int = 20;
      
      private static const const_647:int = 9;
      
      private static const const_1328:int = -1;
       
      
      private var var_296:Array;
      
      private var var_773:Boolean = false;
      
      public function FurnitureBottleVisualization()
      {
         this.var_296 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_773)
            {
               this.var_773 = true;
               this.var_296 = new Array();
               this.var_296.push(const_1328);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(this.var_773)
            {
               this.var_773 = false;
               this.var_296 = new Array();
               this.var_296.push(const_990);
               this.var_296.push(const_647 + param1);
               this.var_296.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(0))
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
