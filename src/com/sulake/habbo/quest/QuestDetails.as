package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestDetails implements IDisposable
   {
       
      
      private var _questEngine:HabboQuestEngine;
      
      private var _window:IFrameWindow;
      
      private var var_1981:Boolean;
      
      private var var_363:QuestMessageData;
      
      public function QuestDetails(param1:HabboQuestEngine)
      {
         super();
         this._questEngine = param1;
      }
      
      public function dispose() : void
      {
         this._questEngine = null;
         this.var_363 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._questEngine == null;
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         if(this.var_1981)
         {
            this.var_1981 = false;
            this.showDetails(param1);
         }
         else if(this.var_363 == null || this.var_363.id != param1.id)
         {
            this.close();
         }
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.close();
      }
      
      public function onQuestCancelled() : void
      {
         this.close();
      }
      
      public function onRoomExit() : void
      {
         this.close();
      }
      
      private function close() : void
      {
         if(this._window)
         {
            this._window.visible = false;
         }
      }
      
      public function showDetails(param1:QuestMessageData) : void
      {
         if(this._window && this._window.visible)
         {
            this._window.visible = false;
            return;
         }
         this.openDetails(param1);
      }
      
      private function openDetails(param1:QuestMessageData) : void
      {
         var _loc6_:* = null;
         this.var_363 = param1;
         if(param1 == null)
         {
            return;
         }
         if(this._window == null)
         {
            this._window = IFrameWindow(this._questEngine.getXmlWindow("QuestDetails"));
            this._window.findChildByTag("close").procedure = this.onDetailsWindowClose;
            this._window.center();
            _loc6_ = this._questEngine.controller.questsList.createListEntry();
            _loc6_.x = 8;
            _loc6_.y = 8;
            this._window.content.addChild(_loc6_);
         }
         _loc6_ = IWindowContainer(this._window.findChildByName("entry_container"));
         this._questEngine.controller.questsList.refreshEntryDetails(_loc6_,param1);
         var _loc2_:ITextWindow = ITextWindow(_loc6_.findChildByName("hint_txt"));
         var _loc3_:int = _loc2_.height;
         _loc2_.caption = this._questEngine.getQuestHint(param1);
         _loc2_.height = _loc2_.textHeight + 5;
         var _loc4_:int = _loc2_.height - _loc3_ + (!!_loc2_.visible ? 0 : 30);
         var _loc5_:IWindowContainer = IWindowContainer(_loc6_.findChildByName("quest_container"));
         _loc5_.height += _loc4_;
         _loc2_.visible = true;
         this._questEngine.controller.questsList.setEntryHeight(_loc6_);
         this._window.height = _loc6_.height + 56;
         this._window.visible = true;
         this._window.activate();
      }
      
      private function onDetailsWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this._window.visible = false;
         }
      }
      
      public function set openForNextQuest(param1:Boolean) : void
      {
         this.var_1981 = param1;
      }
   }
}
