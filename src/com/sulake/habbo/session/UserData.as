package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_894:String = "";
      
      private var var_623:String = "";
      
      private var var_2813:String = "";
      
      private var var_2153:int;
      
      private var var_2735:int = 0;
      
      private var var_2814:String = "";
      
      private var var_2815:int = 0;
      
      private var var_2736:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2153;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2153 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_894;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_894 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_623;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_623 = param1;
      }
      
      public function get custom() : String
      {
         return this.var_2813;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_2813 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2735;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2735 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_2814;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_2814 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_2815;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_2815 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2736;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2736 = param1;
      }
   }
}
