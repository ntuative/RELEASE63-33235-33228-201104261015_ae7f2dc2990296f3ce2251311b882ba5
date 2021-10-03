package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ViralFurniStatusMessageParser implements IMessageParser
   {
       
      
      private var var_189:String;
      
      private var var_361:int;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1573:int = 0;
      
      private var var_403:int;
      
      private var _shareId:String;
      
      private var var_2335:String;
      
      public function ViralFurniStatusMessageParser()
      {
         super();
      }
      
      public function get campaignID() : String
      {
         return this.var_189;
      }
      
      public function get objectId() : int
      {
         return this.var_361;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1573;
      }
      
      public function get shareId() : String
      {
         return this._shareId;
      }
      
      public function get status() : int
      {
         return this.var_403;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2335;
      }
      
      public function flush() : Boolean
      {
         this._roomId = 0;
         this._roomCategory = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_189 = param1.readString();
         this.var_361 = param1.readInteger();
         this.var_403 = param1.readInteger();
         this._shareId = param1.readString();
         this.var_2335 = param1.readString();
         this.var_1573 = param1.readInteger();
         return true;
      }
   }
}
