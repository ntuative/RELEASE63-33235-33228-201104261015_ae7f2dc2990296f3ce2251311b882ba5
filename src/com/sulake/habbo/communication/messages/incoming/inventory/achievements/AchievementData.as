package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1436:int;
      
      private var var_301:String;
      
      private var var_2332:int;
      
      private var var_2333:int;
      
      private var var_1783:int;
      
      private var var_2334:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1436 = param1.readInteger();
         this.var_301 = param1.readString();
         this.var_2332 = param1.readInteger();
         this.var_2333 = param1.readInteger();
         this.var_1783 = param1.readInteger();
         this.var_2334 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_301;
      }
      
      public function get level() : int
      {
         return this.var_1436;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2332;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2333;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1783;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2334;
      }
   }
}
