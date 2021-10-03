package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1909:int = 0;
      
      public static const const_1688:int = 1;
      
      public static const const_1803:int = 2;
      
      public static const const_1995:int = 3;
      
      public static const const_2048:int = 4;
      
      public static const const_1981:int = 5;
      
      public static const const_1765:int = 10;
      
      public static const const_1943:int = 11;
      
      public static const const_2095:int = 12;
      
      public static const const_2000:int = 13;
      
      public static const const_1953:int = 16;
      
      public static const const_1951:int = 17;
      
      public static const const_1898:int = 18;
      
      public static const const_1892:int = 19;
      
      public static const const_1992:int = 20;
      
      public static const const_1986:int = 22;
      
      public static const const_1888:int = 23;
      
      public static const const_1940:int = 24;
      
      public static const const_2038:int = 25;
      
      public static const const_2068:int = 26;
      
      public static const const_2001:int = 27;
      
      public static const const_1990:int = 28;
      
      public static const const_1985:int = 29;
      
      public static const const_2074:int = 100;
      
      public static const const_2089:int = 101;
      
      public static const const_2039:int = 102;
      
      public static const const_2016:int = 103;
      
      public static const const_1886:int = 104;
      
      public static const const_1989:int = 105;
      
      public static const const_1987:int = 106;
      
      public static const const_1977:int = 107;
      
      public static const const_1966:int = 108;
      
      public static const const_1913:int = 109;
      
      public static const const_2025:int = 110;
      
      public static const const_1945:int = 111;
      
      public static const const_1936:int = 112;
      
      public static const const_1993:int = 113;
      
      public static const const_2069:int = 114;
      
      public static const const_2020:int = 115;
      
      public static const const_2037:int = 116;
      
      public static const const_2098:int = 117;
      
      public static const const_1921:int = 118;
      
      public static const const_1963:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1688:
            case const_1765:
               return "banned";
            case const_1803:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
