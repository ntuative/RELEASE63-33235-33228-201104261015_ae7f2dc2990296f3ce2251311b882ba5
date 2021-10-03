package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_931:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_643:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_931);
         this.var_643 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_643;
      }
   }
}
