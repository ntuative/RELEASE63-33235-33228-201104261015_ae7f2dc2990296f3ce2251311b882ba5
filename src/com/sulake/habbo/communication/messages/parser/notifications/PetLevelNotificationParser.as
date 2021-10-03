package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1617:int;
      
      private var var_2322:String;
      
      private var var_1436:int;
      
      private var var_1108:int;
      
      private var var_1712:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1617 = param1.readInteger();
         this.var_2322 = param1.readString();
         this.var_1436 = param1.readInteger();
         this.var_1108 = param1.readInteger();
         this.var_1712 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1617;
      }
      
      public function get petName() : String
      {
         return this.var_2322;
      }
      
      public function get level() : int
      {
         return this.var_1436;
      }
      
      public function get petType() : int
      {
         return this.var_1108;
      }
      
      public function get breed() : int
      {
         return this.var_1712;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
