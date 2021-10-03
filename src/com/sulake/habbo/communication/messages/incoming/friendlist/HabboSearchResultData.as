package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2372:int;
      
      private var var_2060:String;
      
      private var var_2569:String;
      
      private var var_2568:Boolean;
      
      private var var_2566:Boolean;
      
      private var var_2565:int;
      
      private var var_2567:String;
      
      private var var_2570:String;
      
      private var var_1716:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2372 = param1.readInteger();
         this.var_2060 = param1.readString();
         this.var_2569 = param1.readString();
         this.var_2568 = param1.readBoolean();
         this.var_2566 = param1.readBoolean();
         param1.readString();
         this.var_2565 = param1.readInteger();
         this.var_2567 = param1.readString();
         this.var_2570 = param1.readString();
         this.var_1716 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2372;
      }
      
      public function get avatarName() : String
      {
         return this.var_2060;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2569;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2568;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2566;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2565;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2567;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2570;
      }
      
      public function get realName() : String
      {
         return this.var_1716;
      }
   }
}
