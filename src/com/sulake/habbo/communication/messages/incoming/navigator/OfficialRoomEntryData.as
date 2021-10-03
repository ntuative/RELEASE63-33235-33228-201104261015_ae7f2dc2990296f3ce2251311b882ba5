package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1096:int = 1;
      
      public static const const_943:int = 2;
      
      public static const const_879:int = 3;
      
      public static const const_1764:int = 4;
       
      
      private var _index:int;
      
      private var var_2285:String;
      
      private var var_2282:String;
      
      private var var_2281:Boolean;
      
      private var var_2283:String;
      
      private var var_956:String;
      
      private var var_2280:int;
      
      private var var_2279:int;
      
      private var _type:int;
      
      private var var_2284:String;
      
      private var var_899:GuestRoomData;
      
      private var var_900:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2285 = param1.readString();
         this.var_2282 = param1.readString();
         this.var_2281 = param1.readInteger() == 1;
         this.var_2283 = param1.readString();
         this.var_956 = param1.readString();
         this.var_2280 = param1.readInteger();
         this.var_2279 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1096)
         {
            this.var_2284 = param1.readString();
         }
         else if(this._type == const_879)
         {
            this.var_900 = new PublicRoomData(param1);
         }
         else if(this._type == const_943)
         {
            this.var_899 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_899 != null)
         {
            this.var_899.dispose();
            this.var_899 = null;
         }
         if(this.var_900 != null)
         {
            this.var_900.dispose();
            this.var_900 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2285;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2282;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2281;
      }
      
      public function get picText() : String
      {
         return this.var_2283;
      }
      
      public function get picRef() : String
      {
         return this.var_956;
      }
      
      public function get folderId() : int
      {
         return this.var_2280;
      }
      
      public function get tag() : String
      {
         return this.var_2284;
      }
      
      public function get userCount() : int
      {
         return this.var_2279;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_899;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_900;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1096)
         {
            return 0;
         }
         if(this.type == const_943)
         {
            return this.var_899.maxUserCount;
         }
         if(this.type == const_879)
         {
            return this.var_900.maxUsers;
         }
         return 0;
      }
   }
}
