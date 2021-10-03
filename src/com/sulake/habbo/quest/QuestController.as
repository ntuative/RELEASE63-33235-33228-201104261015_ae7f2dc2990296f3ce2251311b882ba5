package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var _questEngine:HabboQuestEngine;
      
      private var var_605:QuestsList;
      
      private var var_497:QuestDetails;
      
      private var _questCompleted:QuestCompleted;
      
      private var var_342:QuestTracker;
      
      private var var_933:CampaignCompleted;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this._questEngine = param1;
         this.var_342 = new QuestTracker(this._questEngine);
         this.var_605 = new QuestsList(this._questEngine);
         this.var_497 = new QuestDetails(this._questEngine);
         this._questCompleted = new QuestCompleted(this._questEngine);
         this.var_933 = new CampaignCompleted(this._questEngine);
      }
      
      public function onToolbarClick() : void
      {
         this.var_605.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_605.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_342.onQuest(param1);
         this.var_497.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_342.onQuestCompleted(param1);
         this.var_497.onQuestCompleted(param1);
         this._questCompleted.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_342.onQuestCancelled();
         this.var_497.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_342.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_605.onRoomExit();
         this.var_342.onRoomExit();
         this.var_497.onRoomExit();
         this.var_933.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this._questCompleted.update(param1);
         this.var_342.update(param1);
      }
      
      public function dispose() : void
      {
         this._questEngine = null;
         if(this.var_605)
         {
            this.var_605.dispose();
            this.var_605 = null;
         }
         if(this.var_342)
         {
            this.var_342.dispose();
            this.var_342 = null;
         }
         if(this.var_497)
         {
            this.var_497.dispose();
            this.var_497 = null;
         }
         if(this._questCompleted)
         {
            this._questCompleted.dispose();
            this._questCompleted = null;
         }
         if(this.var_933)
         {
            this.var_933.dispose();
            this.var_933 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._questEngine == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_605;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this.var_497;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_342;
      }
      
      public function get campaignCompleted() : CampaignCompleted
      {
         return this.var_933;
      }
   }
}
