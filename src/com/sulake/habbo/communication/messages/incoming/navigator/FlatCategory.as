package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1625:int;
      
      private var var_2363:String;
      
      private var var_298:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1625 = param1.readInteger();
         this.var_2363 = param1.readString();
         this.var_298 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1625;
      }
      
      public function get nodeName() : String
      {
         return this.var_2363;
      }
      
      public function get visible() : Boolean
      {
         return this.var_298;
      }
   }
}
