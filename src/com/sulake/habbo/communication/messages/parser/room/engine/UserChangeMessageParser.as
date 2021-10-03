package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserChangeMessageParser implements IMessageParser
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var _id:int;
      
      private var var_623:String;
      
      private var var_894:String;
      
      private var var_1675:String;
      
      private var var_2153:int;
      
      public function UserChangeMessageParser()
      {
         super();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get figure() : String
      {
         return this.var_623;
      }
      
      public function get sex() : String
      {
         return this.var_894;
      }
      
      public function get customInfo() : String
      {
         return this.var_1675;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2153;
      }
      
      public function flush() : Boolean
      {
         this._id = 0;
         this.var_623 = "";
         this.var_894 = "";
         this.var_1675 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = param1.readInteger();
         this.var_623 = param1.readString();
         this.var_894 = param1.readString();
         this.var_1675 = param1.readString();
         this.var_2153 = param1.readInteger();
         if(this.var_894)
         {
            this.var_894 = this.var_894.toUpperCase();
         }
         return true;
      }
   }
}
