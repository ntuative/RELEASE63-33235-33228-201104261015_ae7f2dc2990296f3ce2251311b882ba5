package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_394:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1257:String = "RWOCM_CLUB_MAIN";
      
      public static const const_1170:String = "RWOCM_PIXELS";
      
      public static const const_1293:String = "RWOCM_CREDITS";
       
      
      private var var_2534:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_394);
         this.var_2534 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2534;
      }
   }
}
