package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_1829:int;
      
      private var _currentPosition:int;
      
      private var var_1831:int;
      
      private var var_1830:int;
      
      private var var_1828:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get currentSongId() : int
      {
         return this.var_1829;
      }
      
      public function get currentPosition() : int
      {
         return this._currentPosition;
      }
      
      public function get nextSongId() : int
      {
         return this.var_1831;
      }
      
      public function get nextPosition() : int
      {
         return this.var_1830;
      }
      
      public function get syncCount() : int
      {
         return this.var_1828;
      }
      
      public function flush() : Boolean
      {
         this.var_1829 = -1;
         this._currentPosition = -1;
         this.var_1831 = -1;
         this.var_1830 = -1;
         this.var_1828 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1829 = param1.readInteger();
         this._currentPosition = param1.readInteger();
         this.var_1831 = param1.readInteger();
         this.var_1830 = param1.readInteger();
         this.var_1828 = param1.readInteger();
         return true;
      }
   }
}
