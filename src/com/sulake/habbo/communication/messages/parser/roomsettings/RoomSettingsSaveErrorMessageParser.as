package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_2007:int = 1;
      
      public static const const_2041:int = 2;
      
      public static const const_2004:int = 3;
      
      public static const const_2062:int = 4;
      
      public static const const_1717:int = 5;
      
      public static const const_1897:int = 6;
      
      public static const const_1519:int = 7;
      
      public static const const_1557:int = 8;
      
      public static const const_1949:int = 9;
      
      public static const const_1583:int = 10;
      
      public static const const_1786:int = 11;
      
      public static const const_1757:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1736:int;
      
      private var var_1401:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1736 = param1.readInteger();
         this.var_1401 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1736;
      }
      
      public function get info() : String
      {
         return this.var_1401;
      }
   }
}
