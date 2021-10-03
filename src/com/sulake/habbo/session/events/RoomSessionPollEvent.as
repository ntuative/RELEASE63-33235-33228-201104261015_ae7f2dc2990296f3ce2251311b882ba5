package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPollEvent extends RoomSessionEvent
   {
      
      public static const const_150:String = "RSPE_POLL_OFFER";
      
      public static const const_67:String = "RSPE_POLL_ERROR";
      
      public static const const_142:String = "RSPE_POLL_CONTENT";
       
      
      private var _id:int = -1;
      
      private var var_1680:String;
      
      private var var_1425:int = 0;
      
      private var var_1768:String = "";
      
      private var var_1767:String = "";
      
      private var var_1426:Array = null;
      
      public function RoomSessionPollEvent(param1:String, param2:IRoomSession, param3:int)
      {
         this._id = param3;
         super(param1,param2);
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get summary() : String
      {
         return this.var_1680;
      }
      
      public function set summary(param1:String) : void
      {
         this.var_1680 = param1;
      }
      
      public function get numQuestions() : int
      {
         return this.var_1425;
      }
      
      public function set numQuestions(param1:int) : void
      {
         this.var_1425 = param1;
      }
      
      public function get startMessage() : String
      {
         return this.var_1768;
      }
      
      public function set startMessage(param1:String) : void
      {
         this.var_1768 = param1;
      }
      
      public function get endMessage() : String
      {
         return this.var_1767;
      }
      
      public function set endMessage(param1:String) : void
      {
         this.var_1767 = param1;
      }
      
      public function get questionArray() : Array
      {
         return this.var_1426;
      }
      
      public function set questionArray(param1:Array) : void
      {
         this.var_1426 = param1;
      }
   }
}
