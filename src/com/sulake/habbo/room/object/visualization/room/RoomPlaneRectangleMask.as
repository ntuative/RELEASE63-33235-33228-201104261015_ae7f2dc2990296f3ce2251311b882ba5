package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2310:Number = 0.0;
      
      private var var_2309:Number = 0.0;
      
      private var var_2311:Number = 0.0;
      
      private var var_2308:Number = 0.0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2310 = param1;
         this.var_2309 = param2;
         this.var_2311 = param3;
         this.var_2308 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2310;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2309;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2311;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2308;
      }
   }
}
