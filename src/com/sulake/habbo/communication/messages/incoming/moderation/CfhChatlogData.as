package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1933:int;
      
      private var var_2642:int;
      
      private var var_1503:int;
      
      private var var_2432:int;
      
      private var var_110:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1933 = param1.readInteger();
         this.var_2642 = param1.readInteger();
         this.var_1503 = param1.readInteger();
         this.var_2432 = param1.readInteger();
         this.var_110 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1933);
      }
      
      public function get callId() : int
      {
         return this.var_1933;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2642;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1503;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2432;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_110;
      }
   }
}
