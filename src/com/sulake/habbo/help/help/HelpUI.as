package com.sulake.habbo.help.help
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.room.action.CallGuideBotMessageComposer;
   import com.sulake.habbo.help.HabboHelp;
   import com.sulake.habbo.help.cfh.CallForHelpPendingItemView;
   import com.sulake.habbo.help.cfh.CallForHelpReportUserSelection;
   import com.sulake.habbo.help.cfh.CallForHelpSentView;
   import com.sulake.habbo.help.cfh.CallForHelpTextInput;
   import com.sulake.habbo.help.cfh.CallForHelpTopicSelection;
   import com.sulake.habbo.help.enum.CallForHelpResultEnum;
   import com.sulake.habbo.help.enum.HabboHelpTrackingEvent;
   import com.sulake.habbo.help.enum.HabboHelpTutorialEvent;
   import com.sulake.habbo.help.enum.HabboHelpViewEnum;
   import com.sulake.habbo.help.help.data.FaqIndex;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   
   public class HelpUI
   {
       
      
      private var _assetLibrary:IAssetLibrary;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _toolbar:IHabboToolbar;
      
      private var _window:IWindowContainer;
      
      private var var_22:HabboHelp;
      
      private var _defaultViewId:String = "HHVE_HELP_FRONTPAGE";
      
      private var var_350:String;
      
      private var var_507:Array;
      
      private var var_118:Map;
      
      private var var_2484:int = 0;
      
      private var var_2483:int = 0;
      
      private var var_349:IWindowContainer;
      
      private var var_628:Array;
      
      private var var_2482:Boolean = false;
      
      public function HelpUI(param1:HabboHelp, param2:IAssetLibrary, param3:IHabboWindowManager, param4:IHabboLocalizationManager, param5:IHabboToolbar)
      {
         this.var_350 = this._defaultViewId;
         this.var_507 = new Array();
         this.var_628 = new Array();
         super();
         this.var_22 = param1;
         this._assetLibrary = param2;
         this._windowManager = param3;
         this._windowManager.registerLocalizationParameter("info.client.version","version",new String(201104261010));
         this._toolbar = param5;
         this.var_118 = new Map();
         this.var_118.add(HabboHelpViewEnum.const_1734,IHelpViewController(new PlaceholderView(this,this._windowManager,this._assetLibrary)));
         this.var_118.add(HabboHelpViewEnum.const_194,IHelpViewController(new HelpMainView(this,this._windowManager,this._assetLibrary)));
         this.var_118.add(HabboHelpViewEnum.const_570,IHelpViewController(new FaqBrowseTopView(this,this._windowManager,this._assetLibrary)));
         this.var_118.add(HabboHelpViewEnum.const_296,IHelpViewController(new FaqBrowseCategoryView(this,this._windowManager,this._assetLibrary)));
         this.var_118.add(HabboHelpViewEnum.const_244,IHelpViewController(new FaqBrowseEntry(this,this._windowManager,this._assetLibrary)));
         this.var_118.add(HabboHelpViewEnum.const_440,IHelpViewController(new CallForHelpTopicSelection(this,this._windowManager,this._assetLibrary)));
         this.var_118.add(HabboHelpViewEnum.const_713,IHelpViewController(new CallForHelpTextInput(this,this._windowManager,this._assetLibrary)));
         this.var_118.add(HabboHelpViewEnum.const_281,IHelpViewController(new CallForHelpSentView(this,this._windowManager,this._assetLibrary,"help_cfh_thanks")));
         this.var_118.add(HabboHelpViewEnum.const_1284,IHelpViewController(new CallForHelpSentView(this,this._windowManager,this._assetLibrary,"help_cfh_abusive")));
         this.var_118.add(HabboHelpViewEnum.const_1196,IHelpViewController(new CallForHelpPendingItemView(this,this._windowManager,this._assetLibrary)));
         this.var_118.add(HabboHelpViewEnum.const_747,IHelpViewController(new CallForHelpReportUserSelection(this,this._windowManager,this._assetLibrary)));
      }
      
      public function dispose() : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(this._window != null)
         {
            this._window.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onClick);
         }
         var _loc1_:Array = this.var_118.getKeys();
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            _loc3_ = _loc1_[_loc2_];
            _loc4_ = this.var_118.getValue(_loc3_) as IHelpViewController;
            if(_loc4_ != null)
            {
               _loc4_.dispose();
            }
            _loc2_++;
         }
         this.var_118.dispose();
         if(this.var_349 != null)
         {
            this.var_349.dispose();
            this.var_349 = null;
         }
      }
      
      public function toggleUI() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.hideUI();
         }
         else
         {
            this.showUI();
         }
      }
      
      public function showUI(param1:String = null, param2:Boolean = true) : void
      {
         if(param1 == null)
         {
            param1 = this.var_350;
         }
         if(this._window == null)
         {
            this.createWindow();
            if(this._window == null)
            {
               return;
            }
            this._window.visible = true;
         }
         else
         {
            this.removeCurrentView();
         }
         if(param1 == this._defaultViewId)
         {
            this.var_507 = new Array();
         }
         else if(param2)
         {
            if(this.var_507.length == 0 || param1 != this.var_350)
            {
               this.var_507.push(this.var_350);
            }
         }
         this.var_350 = param1;
         var _loc3_:IHelpViewController = this.getViewController();
         if(_loc3_ == null)
         {
            Logger.log("* No view controller found for " + this.var_350);
            return;
         }
         var _loc4_:IWindowContainer = this._window.findChildByName("content_area") as IWindowContainer;
         if(_loc4_ == null)
         {
            return;
         }
         var _loc5_:IItemListWindow = this._window.findChildByName("content_list") as IItemListWindow;
         if(_loc5_ == null)
         {
            return;
         }
         _loc5_.height = 0;
         _loc3_.render();
         var _loc6_:IWindow = _loc3_.getWindowContainer() as IWindow;
         if(_loc6_ != null)
         {
            _loc5_.addListItemAt(_loc6_,0);
         }
         this.addBackButtonWindow();
         this.updateWindowDimensions();
         this.var_22.events.dispatchEvent(new Event(HabboHelpTrackingEvent.HABBO_HELP_TRACKING_EVENT_DEFAULT));
      }
      
      public function tellUI(param1:String, param2:* = null) : void
      {
         if(this.var_350 != param1)
         {
            return;
         }
         var _loc3_:IHelpViewController = this.getViewController();
         if(_loc3_ != null)
         {
            _loc3_.update(param2);
         }
      }
      
      public function get component() : HabboHelp
      {
         return this.var_22;
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return this.var_22.localization;
      }
      
      public function get visible() : Boolean
      {
         if(this._window == null)
         {
            return false;
         }
         return this._window.visible;
      }
      
      public function get window() : IWindowContainer
      {
         return this._window;
      }
      
      public function showCallForHelpReply(param1:String) : void
      {
         var message:String = param1;
         this._windowManager.alert("${help.cfh.reply.title}",message,0,function(param1:IAlertDialog, param2:WindowEvent):void
         {
            param1.dispose();
         });
      }
      
      public function showCallForHelpResult(param1:String) : void
      {
         switch(param1)
         {
            case CallForHelpResultEnum.const_281:
               this.showUI(HabboHelpViewEnum.const_281);
               break;
            case CallForHelpResultEnum.const_1159:
               this.showUI(HabboHelpViewEnum.const_1196);
               break;
            case CallForHelpResultEnum.const_1175:
               this.showUI(HabboHelpViewEnum.const_1284);
         }
      }
      
      public function updateCallForGuideBotUI(param1:Boolean) : void
      {
         this.var_2482 = param1;
         var _loc2_:IHelpViewController = this.var_118.getValue(HabboHelpViewEnum.const_194) as IHelpViewController;
         if(_loc2_ != null && !_loc2_.disposed)
         {
            _loc2_.update();
         }
      }
      
      public function isCallForGuideBotEnabled() : Boolean
      {
         return this.var_2482;
      }
      
      public function handleCallGuideBot() : void
      {
         this.sendMessage(new CallGuideBotMessageComposer());
         this.hideUI();
         this.var_22.events.dispatchEvent(new HabboHelpTutorialEvent(HabboHelpTutorialEvent.const_476));
      }
      
      public function sendMessage(param1:IMessageComposer) : void
      {
         this.var_22.sendMessage(param1);
      }
      
      public function getFaq() : FaqIndex
      {
         return this.var_22.getFaq();
      }
      
      public function getText(param1:String, param2:String = null) : String
      {
         if(param2 == null)
         {
            param2 = param1;
         }
         return this.localization.getKey(param1,param2);
      }
      
      public function getConfigurationKey(param1:String, param2:String = null, param3:Dictionary = null) : String
      {
         return this.var_22.getConfigurationKey(param1,param2,param3);
      }
      
      public function setRoomSessionStatus(param1:Boolean) : void
      {
         var _loc3_:* = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.var_118.length)
         {
            _loc3_ = this.var_118.getWithIndex(_loc2_) as IHelpViewController;
            if(_loc3_ != null)
            {
               _loc3_.roomSessionActive = param1;
               if(!_loc3_.disposed)
               {
                  _loc3_.update();
               }
            }
            _loc2_++;
         }
      }
      
      private function getViewController() : IHelpViewController
      {
         return this.var_118.getValue(this.var_350);
      }
      
      private function createWindow() : void
      {
         var _loc1_:XmlAsset = XmlAsset(this._assetLibrary.getAssetByName("help_frame_xml"));
         if(_loc1_ == null)
         {
            return;
         }
         this._window = this._windowManager.buildFromXML(XML(_loc1_.content)) as IWindowContainer;
         if(this._window == null)
         {
            return;
         }
         this._window.center();
         this._window.setParamFlag(WindowParam.const_31);
         this._window.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onClick);
         var _loc2_:IWindow = this._window.findChildByTag("close");
         if(_loc2_ != null)
         {
            _loc2_.setParamFlag(WindowParam.const_31);
            _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onClose);
         }
         var _loc3_:IItemListWindow = this._window.findChildByName("content_list") as IItemListWindow;
         if(_loc3_ == null)
         {
            return;
         }
         this.var_2484 = this._window.width - _loc3_.width;
         this.var_2483 = this._window.height;
      }
      
      private function removeCurrentView() : void
      {
         var _loc2_:* = null;
         if(this._window != null)
         {
            _loc2_ = this._window.findChildByName("content_list") as IItemListWindow;
            if(_loc2_ != null)
            {
               while(_loc2_.numListItems > 1)
               {
                  _loc2_.getListItemAt(0).dispose();
                  _loc2_.removeListItemAt(0);
               }
            }
         }
         var _loc1_:IHelpViewController = this.getViewController();
         if(_loc1_ != null)
         {
            _loc1_.dispose();
         }
      }
      
      public function updateWindowDimensions() : void
      {
         if(this._window == null)
         {
            return;
         }
         var _loc1_:IItemListWindow = this._window.findChildByName("content_list") as IItemListWindow;
         if(_loc1_ == null)
         {
            return;
         }
         this._window.height = _loc1_.height + this.var_2483;
         this._window.width = _loc1_.width + this.var_2484;
      }
      
      public function hideUI() : void
      {
         if(this._window != null)
         {
            this.removeCurrentView();
            this._window.dispose();
            this._window = null;
         }
         this.var_350 = this._defaultViewId;
         this.var_22.events.dispatchEvent(new Event(HabboHelpTrackingEvent.HABBO_HELP_TRACKING_EVENT_CLOSED));
      }
      
      private function onClose(param1:WindowMouseEvent) : void
      {
         this.hideUI();
      }
      
      private function onBack(param1:WindowMouseEvent) : void
      {
         if(this.var_507.length > 0)
         {
            this.showUI(this.var_507.pop(),false);
         }
      }
      
      private function onMouseOut(param1:WindowMouseEvent) : void
      {
         this.setBackButtonActiveState(false);
      }
      
      private function onMouseOver(param1:WindowMouseEvent) : void
      {
         this.setBackButtonActiveState(true);
      }
      
      private function onClick(param1:WindowMouseEvent) : void
      {
         var _loc2_:IWindow = param1.target as IWindow;
         if(_loc2_.tags.indexOf("close") > -1)
         {
            this.hideUI();
            return;
         }
         if(_loc2_.tags.indexOf("back") > -1)
         {
            if(this.var_507.length > 0)
            {
               this.showUI(this.var_507.pop(),false);
            }
         }
      }
      
      private function setBackButtonActiveState(param1:Boolean = false) : void
      {
         var _loc3_:* = null;
         if(this.var_350 == HabboHelpViewEnum.const_194)
         {
            return;
         }
         if(this.var_628.length < 2)
         {
            _loc3_ = this._assetLibrary.getAssetByName("back_png") as BitmapDataAsset;
            this.var_628.push(_loc3_.content as BitmapData);
            _loc3_ = this._assetLibrary.getAssetByName("back_hi_png") as BitmapDataAsset;
            this.var_628.push(_loc3_.content as BitmapData);
         }
         var _loc2_:IBitmapWrapperWindow = this.var_349.findChildByName("back_image") as IBitmapWrapperWindow;
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.bitmap = new BitmapData(_loc2_.width,_loc2_.height,true);
         if(param1)
         {
            _loc2_.bitmap.copyPixels(this.var_628[1],this.var_628[1].rect,new Point(0,0));
         }
         else
         {
            _loc2_.bitmap.copyPixels(this.var_628[0],this.var_628[0].rect,new Point(0,0));
         }
      }
      
      private function addBackButtonWindow() : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(this.var_350 == HabboHelpViewEnum.const_194 || this.var_507.length == 0)
         {
            return;
         }
         if(this.var_349 == null)
         {
            _loc2_ = XmlAsset(this._assetLibrary.getAssetByName("help_back_button_xml"));
            if(_loc2_ == null)
            {
               return;
            }
            this.var_349 = this._windowManager.buildFromXML(XML(_loc2_.content)) as IWindowContainer;
            _loc3_ = this.var_349.findChildByName("back_image");
            if(_loc3_ != null)
            {
               _loc3_.setParamFlag(WindowParam.const_31);
               _loc3_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onBack);
               _loc3_.addEventListener(WindowMouseEvent.const_25,this.onMouseOut);
               _loc3_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.onMouseOver);
            }
            _loc4_ = this.var_349.findChildByName("back_text");
            if(_loc4_ != null)
            {
               _loc4_.setParamFlag(WindowParam.const_31);
               _loc4_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onBack);
            }
         }
         var _loc1_:IItemListWindow = this._window.findChildByName("content_list") as IItemListWindow;
         if(_loc1_ == null || this.var_349 == null)
         {
            return;
         }
         if(_loc1_.getListItemIndex(this.var_349 as IWindow) > -1)
         {
            return;
         }
         _loc1_.addListItem(this.var_349 as IWindow);
         this.setBackButtonActiveState(false);
      }
   }
}
