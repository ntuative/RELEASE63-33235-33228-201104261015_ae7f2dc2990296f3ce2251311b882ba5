package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_623:String;
      
      private var var_894:String;
      
      private var var_2707:String;
      
      private var var_1716:String;
      
      private var var_2705:int;
      
      private var var_2703:String;
      
      private var var_2706:int;
      
      private var var_2708:int;
      
      private var var_2549:int;
      
      private var _respectLeft:int;
      
      private var var_853:int;
      
      private var var_2704:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_623 = param1.readString();
         this.var_894 = param1.readString();
         this.var_2707 = param1.readString();
         this.var_1716 = param1.readString();
         this.var_2705 = param1.readInteger();
         this.var_2703 = param1.readString();
         this.var_2706 = param1.readInteger();
         this.var_2708 = param1.readInteger();
         this.var_2549 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_853 = param1.readInteger();
         this.var_2704 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_623;
      }
      
      public function get sex() : String
      {
         return this.var_894;
      }
      
      public function get customData() : String
      {
         return this.var_2707;
      }
      
      public function get realName() : String
      {
         return this.var_1716;
      }
      
      public function get tickets() : int
      {
         return this.var_2705;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2703;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2706;
      }
      
      public function get directMail() : int
      {
         return this.var_2708;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2549;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_853;
      }
      
      public function get identityId() : int
      {
         return this.var_2704;
      }
   }
}
