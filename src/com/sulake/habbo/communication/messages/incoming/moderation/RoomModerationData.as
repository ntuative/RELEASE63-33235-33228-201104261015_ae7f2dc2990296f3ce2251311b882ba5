package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_374:int;
      
      private var var_2279:int;
      
      private var var_2702:Boolean;
      
      private var var_2146:int;
      
      private var _ownerName:String;
      
      private var var_110:RoomData;
      
      private var var_774:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_374 = param1.readInteger();
         this.var_2279 = param1.readInteger();
         this.var_2702 = param1.readBoolean();
         this.var_2146 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_110 = new RoomData(param1);
         this.var_774 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_110 != null)
         {
            this.var_110.dispose();
            this.var_110 = null;
         }
         if(this.var_774 != null)
         {
            this.var_774.dispose();
            this.var_774 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_374;
      }
      
      public function get userCount() : int
      {
         return this.var_2279;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2702;
      }
      
      public function get ownerId() : int
      {
         return this.var_2146;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_110;
      }
      
      public function get event() : RoomData
      {
         return this.var_774;
      }
   }
}
