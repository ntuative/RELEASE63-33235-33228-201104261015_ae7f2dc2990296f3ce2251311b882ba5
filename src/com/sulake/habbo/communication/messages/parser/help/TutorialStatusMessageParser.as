package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1168:Boolean;
      
      private var var_1169:Boolean;
      
      private var var_1466:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1168;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1169;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1466;
      }
      
      public function flush() : Boolean
      {
         this.var_1168 = false;
         this.var_1169 = false;
         this.var_1466 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1168 = param1.readBoolean();
         this.var_1169 = param1.readBoolean();
         this.var_1466 = param1.readBoolean();
         return true;
      }
   }
}
