package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1328:int = 3;
      
      private static const const_1518:int = 2;
      
      private static const const_1516:int = 1;
      
      private static const const_1517:int = 15;
       
      
      private var var_296:Array;
      
      private var var_1319:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_296 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1518)
         {
            this.var_296 = new Array();
            this.var_296.push(const_1516);
            this.var_1319 = const_1517;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1319 > 0)
         {
            --this.var_1319;
         }
         if(this.var_1319 == 0)
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
