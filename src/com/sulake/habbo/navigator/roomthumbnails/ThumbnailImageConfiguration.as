package com.sulake.habbo.navigator.roomthumbnails
{
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class ThumbnailImageConfiguration
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _id:int;
      
      private var _type:int;
      
      private var var_1961:String;
      
      private var var_1962:BitmapData;
      
      private var _selected:Boolean;
      
      private var var_1963:BitmapData;
      
      private var var_659:IBitmapWrapperWindow;
      
      private var var_1960:Rectangle;
      
      private var var_1530:int = 1;
      
      public function ThumbnailImageConfiguration(param1:HabboNavigator, param2:int, param3:int, param4:String, param5:BitmapData)
      {
         super();
         this._navigator = param1;
         this._id = param2;
         this._type = param3;
         this.var_1961 = param4;
         this.var_1963 = param5;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get picName() : String
      {
         return this.var_1961;
      }
      
      public function getImg() : BitmapData
      {
         if(this.var_1962 == null)
         {
            this.var_1962 = this._navigator.getButtonImage(this.var_1961);
         }
         return this.var_1962;
      }
      
      public function registerListImg(param1:IBitmapWrapperWindow) : void
      {
         this.var_659 = param1;
         this.refreshListImg();
      }
      
      public function copyTo(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = this.getImg();
         param1.copyPixels(_loc2_,_loc2_.rect,new Point((param1.width - _loc2_.width) / 2,param1.height - _loc2_.height),null,null,true);
      }
      
      public function setSelected(param1:Boolean) : void
      {
         if(this._selected == param1)
         {
            return;
         }
         this._selected = param1;
         this.refreshListImg();
      }
      
      private function refreshListImg() : void
      {
         var _loc1_:* = null;
         if(this.var_1960 == null)
         {
            _loc1_ = this.var_659.bitmap.rect;
            this.var_1960 = new Rectangle(this.var_1530,this.var_1530,_loc1_.width - 2 * this.var_1530,_loc1_.height - 2 * this.var_1530);
         }
         this.var_659.bitmap.fillRect(this.var_659.bitmap.rect,4281545523);
         this.var_659.bitmap.fillRect(this.var_1960,4284900966);
         this.copyTo(this.var_659.bitmap);
         if(this._selected)
         {
            this.var_659.bitmap.copyPixels(this.var_1963,this.var_1963.rect,new Point(0,0),null,null,true);
         }
         this.var_659.invalidate();
      }
   }
}
