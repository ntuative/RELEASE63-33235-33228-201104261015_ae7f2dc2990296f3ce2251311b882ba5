package com.sulake.room.object.visualization.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   
   public class GraphicAsset implements IGraphicAsset
   {
       
      
      private var var_1863:String;
      
      private var var_2556:String;
      
      private var var_463:BitmapDataAsset;
      
      private var var_1365:Boolean;
      
      private var var_1366:Boolean;
      
      private var var_2557:Boolean;
      
      private var _offsetX:int;
      
      private var var_1202:int;
      
      private var var_261:int;
      
      private var _height:int;
      
      private var var_723:Boolean;
      
      public function GraphicAsset(param1:String, param2:String, param3:IAsset, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:Boolean = false)
      {
         super();
         this.var_1863 = param1;
         this.var_2556 = param2;
         var _loc9_:BitmapDataAsset = param3 as BitmapDataAsset;
         if(_loc9_ != null)
         {
            this.var_463 = _loc9_;
            this.var_723 = false;
         }
         else
         {
            this.var_463 = null;
            this.var_723 = true;
         }
         this.var_1365 = param4;
         this.var_1366 = param5;
         this._offsetX = param6;
         this.var_1202 = param7;
         this.var_2557 = param8;
      }
      
      public function dispose() : void
      {
         this.var_463 = null;
      }
      
      private function initialize() : void
      {
         var _loc1_:* = null;
         if(!this.var_723 && this.var_463 != null)
         {
            _loc1_ = this.var_463.content as BitmapData;
            if(_loc1_ != null)
            {
               this.var_261 = _loc1_.width;
               this._height = _loc1_.height;
            }
            this.var_723 = true;
         }
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1366;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1365;
      }
      
      public function get width() : int
      {
         this.initialize();
         return this.var_261;
      }
      
      public function get height() : int
      {
         this.initialize();
         return this._height;
      }
      
      public function get assetName() : String
      {
         return this.var_1863;
      }
      
      public function get libraryAssetName() : String
      {
         return this.var_2556;
      }
      
      public function get asset() : IAsset
      {
         return this.var_463;
      }
      
      public function get usesPalette() : Boolean
      {
         return this.var_2557;
      }
      
      public function get offsetX() : int
      {
         if(!this.var_1365)
         {
            return this._offsetX;
         }
         return -(this.width + this._offsetX);
      }
      
      public function get offsetY() : int
      {
         if(!this.var_1366)
         {
            return this.var_1202;
         }
         return -(this.height + this.var_1202);
      }
      
      public function get originalOffsetX() : int
      {
         return this._offsetX;
      }
      
      public function get originalOffsetY() : int
      {
         return this.var_1202;
      }
   }
}
