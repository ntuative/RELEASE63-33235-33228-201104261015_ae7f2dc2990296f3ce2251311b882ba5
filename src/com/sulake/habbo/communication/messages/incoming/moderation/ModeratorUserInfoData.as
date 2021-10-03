package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2842:int;
      
      private var var_2839:int;
      
      private var var_852:Boolean;
      
      private var var_2838:int;
      
      private var var_2840:int;
      
      private var var_2837:int;
      
      private var var_2841:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2842 = param1.readInteger();
         this.var_2839 = param1.readInteger();
         this.var_852 = param1.readBoolean();
         this.var_2838 = param1.readInteger();
         this.var_2840 = param1.readInteger();
         this.var_2837 = param1.readInteger();
         this.var_2841 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2842;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2839;
      }
      
      public function get online() : Boolean
      {
         return this.var_852;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2838;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2840;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2837;
      }
      
      public function get banCount() : int
      {
         return this.var_2841;
      }
   }
}
