package com.sulake.habbo.widget.messages
{
   public class RoomWidgetPetCommandMessage extends RoomWidgetMessage
   {
      
      public static const const_971:String = "RWPCM_REQUEST_PET_COMMANDS";
      
      public static const const_497:String = "RWPCM_PET_COMMAND";
       
      
      private var var_1617:int = 0;
      
      private var var_192:String;
      
      public function RoomWidgetPetCommandMessage(param1:String, param2:int, param3:String = null)
      {
         super(param1);
         this.var_1617 = param2;
         this.var_192 = param3;
      }
      
      public function get petId() : int
      {
         return this.var_1617;
      }
      
      public function get value() : String
      {
         return this.var_192;
      }
   }
}
