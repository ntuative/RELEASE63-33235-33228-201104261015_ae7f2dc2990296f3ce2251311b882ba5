package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_947:int;
      
      private var var_852:Boolean;
      
      private var var_1714:Boolean;
      
      private var var_623:String;
      
      private var var_1595:int;
      
      private var var_1713:String;
      
      private var var_1715:String;
      
      private var var_1716:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_947 = param1.readInteger();
         this.var_852 = param1.readBoolean();
         this.var_1714 = param1.readBoolean();
         this.var_623 = param1.readString();
         this.var_1595 = param1.readInteger();
         this.var_1713 = param1.readString();
         this.var_1715 = param1.readString();
         this.var_1716 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_947;
      }
      
      public function get online() : Boolean
      {
         return this.var_852;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1714;
      }
      
      public function get figure() : String
      {
         return this.var_623;
      }
      
      public function get categoryId() : int
      {
         return this.var_1595;
      }
      
      public function get motto() : String
      {
         return this.var_1713;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1715;
      }
      
      public function get realName() : String
      {
         return this.var_1716;
      }
   }
}
