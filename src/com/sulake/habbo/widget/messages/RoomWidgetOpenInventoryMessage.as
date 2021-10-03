package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_903:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1223:String = "inventory_effects";
      
      public static const const_1270:String = "inventory_badges";
      
      public static const const_1623:String = "inventory_clothes";
      
      public static const const_1796:String = "inventory_furniture";
       
      
      private var var_2873:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_903);
         this.var_2873 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2873;
      }
   }
}
