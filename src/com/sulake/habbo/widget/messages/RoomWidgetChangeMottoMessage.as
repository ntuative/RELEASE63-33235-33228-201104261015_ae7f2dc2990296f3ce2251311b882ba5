package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChangeMottoMessage extends RoomWidgetMessage
   {
      
      public static const const_960:String = "RWVM_CHANGE_MOTTO_MESSAGE";
       
      
      private var var_1713:String;
      
      public function RoomWidgetChangeMottoMessage(param1:String)
      {
         super(const_960);
         this.var_1713 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1713;
      }
   }
}
