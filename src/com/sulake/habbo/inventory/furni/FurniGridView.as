package com.sulake.habbo.inventory.furni
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IItemGridWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.inventory.items.GroupItem;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.window.IHabboWindowManager;
   
   public class FurniGridView
   {
       
      
      private var _windowManager:IHabboWindowManager;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var _view:IWindowContainer;
      
      private var var_66:FurniModel;
      
      private var _roomEngine:IRoomEngine;
      
      private var _category:String;
      
      private var var_262:IItemGridWindow;
      
      private var var_2978:XML;
      
      private var var_635:Object;
      
      public function FurniGridView(param1:FurniModel, param2:String, param3:IHabboWindowManager, param4:IAssetLibrary, param5:IRoomEngine)
      {
         super();
         this.var_66 = param1;
         this._category = param2;
         this._assetLibrary = param4;
         this._windowManager = param3;
         this._roomEngine = param5;
         var _loc6_:IAsset = this._assetLibrary.getAssetByName("inventory_furni_grid_xml");
         var _loc7_:XmlAsset = XmlAsset(_loc6_);
         this._view = IWindowContainer(this._windowManager.buildFromXML(XML(_loc7_.content)));
         if(this._view != null)
         {
            this.var_262 = this._view.findChildByName("item_grid") as IItemGridWindow;
         }
      }
      
      public function get window() : IWindowContainer
      {
         if(this._view == null)
         {
            return null;
         }
         if(this._view.disposed)
         {
            return null;
         }
         return this._view;
      }
      
      public function clearGrid() : void
      {
         if(this.var_262 != null)
         {
            this.var_262.removeGridItems();
         }
      }
      
      public function initFromList() : void
      {
         var _loc3_:* = null;
         var _loc1_:Array = this.var_66.getCategoryContent(this._category);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            _loc3_ = _loc1_[_loc2_] as GroupItem;
            this.var_262.addGridItem(_loc3_.window);
            _loc2_++;
         }
      }
      
      public function updateItem(param1:int, param2:IWindowContainer) : void
      {
         var _loc3_:IWindow = this.var_262.getGridItemAt(param1);
         if(_loc3_)
         {
            _loc3_ = param2;
         }
      }
      
      public function addItemToBottom(param1:IWindowContainer) : void
      {
         this.var_262.addGridItem(param1);
         param1.procedure = this.itemEventProc;
      }
      
      public function addItemAt(param1:IWindowContainer, param2:int) : void
      {
         this.var_262.addGridItemAt(param1,param2);
         param1.procedure = this.itemEventProc;
      }
      
      public function removeItem(param1:int) : IWindow
      {
         return this.var_262.removeGridItemAt(param1);
      }
      
      public function setLock(param1:Boolean) : void
      {
         if(param1)
         {
            this.var_262.autoArrangeItems = false;
            this.var_262.lock();
         }
         else
         {
            this.var_262.autoArrangeItems = true;
            this.var_262.unlock();
         }
      }
      
      private function itemEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:Boolean = false;
         if(param1.type == WindowMouseEvent.const_52)
         {
            this.var_635 = null;
            this.var_66.cancelFurniInMover();
         }
         else if(param1.type == WindowMouseEvent.const_42)
         {
            if(param2 == null)
            {
               return;
            }
            this.var_66.toggleItemSelection(this._category,this.var_262.getGridItemIndex(param1.window));
            this.var_635 = param2;
         }
         else if(param1.type == WindowMouseEvent.const_25 && this.var_635 != null && this.var_635 == param2 && !this.var_66.isTradingOpen)
         {
            _loc3_ = this.var_66.requestSelectedFurniPlacement(true);
            if(_loc3_)
            {
               this.var_635 = null;
            }
         }
         else if(param1.type == WindowMouseEvent.const_52)
         {
            this.var_635 == null;
         }
         else if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.var_635 == null;
         }
         else if(param1.type == WindowMouseEvent.const_141)
         {
            this.var_66.requestCurrentActionOnSelection();
            this.var_635 = null;
         }
      }
   }
}
