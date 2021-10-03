package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2228:String;
      
      private var var_2229:int;
      
      private var var_2227:int;
      
      private var var_2230:String;
      
      private var var_2226:int;
      
      private var var_1625:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2228 = param1.readString();
         this.var_2229 = param1.readInteger();
         this.var_2227 = param1.readInteger();
         this.var_2230 = param1.readString();
         this.var_2226 = param1.readInteger();
         this.var_1625 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2228;
      }
      
      public function get unitPort() : int
      {
         return this.var_2229;
      }
      
      public function get worldId() : int
      {
         return this.var_2227;
      }
      
      public function get castLibs() : String
      {
         return this.var_2230;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2226;
      }
      
      public function get nodeId() : int
      {
         return this.var_1625;
      }
   }
}
