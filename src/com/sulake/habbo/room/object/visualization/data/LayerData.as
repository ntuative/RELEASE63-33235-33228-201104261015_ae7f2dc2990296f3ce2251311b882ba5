package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_749:String = "";
      
      public static const const_408:int = 0;
      
      public static const const_481:int = 255;
      
      public static const const_790:Boolean = false;
      
      public static const const_625:int = 0;
      
      public static const const_462:int = 0;
      
      public static const const_427:int = 0;
      
      public static const const_1179:int = 1;
      
      public static const const_1168:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2284:String = "";
      
      private var var_2051:int = 0;
      
      private var var_2413:int = 255;
      
      private var var_2866:Boolean = false;
      
      private var var_2865:int = 0;
      
      private var var_2864:int = 0;
      
      private var var_2863:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2284 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2284;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_2051 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_2051;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2413 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2413;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2866 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2866;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2865 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2865;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2864 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2864;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2863 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2863;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
