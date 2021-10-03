package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1820:Boolean;
      
      private var var_960:PetData;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1820 = param1.readBoolean();
         this.var_960 = new PetData(param1);
         Logger.log("Got PetReceived: " + this.var_1820 + ", " + this.var_960.id + ", " + this.var_960.name + ", " + this.var_960.type + ", " + this.var_960.breed + ", " + this.pet.color);
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return this.var_1820;
      }
      
      public function get pet() : PetData
      {
         return this.var_960;
      }
   }
}
