package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_386:int = 1;
      
      public static const const_288:int = 2;
      
      public static const const_300:int = 3;
      
      public static const const_426:int = 4;
      
      public static const const_242:int = 5;
      
      public static const const_397:int = 1;
      
      public static const const_925:int = 2;
      
      public static const const_907:int = 3;
      
      public static const const_875:int = 4;
      
      public static const const_282:int = 5;
      
      public static const const_950:int = 6;
      
      public static const const_859:int = 7;
      
      public static const const_239:int = 8;
      
      public static const const_392:int = 9;
      
      public static const const_1927:int = 10;
      
      public static const const_880:int = 11;
      
      public static const const_634:int = 12;
       
      
      private var var_437:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_437 = new Array();
         this.var_437.push(new Tab(this._navigator,const_386,const_634,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_513));
         this.var_437.push(new Tab(this._navigator,const_288,const_397,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_513));
         this.var_437.push(new Tab(this._navigator,const_426,const_880,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1142));
         this.var_437.push(new Tab(this._navigator,const_300,const_282,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_513));
         this.var_437.push(new Tab(this._navigator,const_242,const_239,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_804));
         this.setSelectedTab(const_386);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_426;
      }
      
      public function get tabs() : Array
      {
         return this.var_437;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_437)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_437)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_437)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
