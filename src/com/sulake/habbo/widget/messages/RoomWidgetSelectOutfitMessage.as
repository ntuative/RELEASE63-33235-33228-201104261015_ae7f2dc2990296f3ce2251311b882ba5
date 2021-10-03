package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_1173:String = "select_outfit";
       
      
      private var var_2251:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_1173);
         this.var_2251 = param1;
      }
      
      public function get outfitId() : int
      {
         return this.var_2251;
      }
   }
}
