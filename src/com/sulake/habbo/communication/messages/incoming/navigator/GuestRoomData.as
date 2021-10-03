package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_374:int;
      
      private var var_774:Boolean;
      
      private var var_967:String;
      
      private var _ownerName:String;
      
      private var var_2475:int;
      
      private var var_2279:int;
      
      private var var_2539:int;
      
      private var var_1807:String;
      
      private var var_2541:int;
      
      private var var_2537:Boolean;
      
      private var var_742:int;
      
      private var var_1595:int;
      
      private var var_2536:String;
      
      private var var_876:Array;
      
      private var var_2540:RoomThumbnailData;
      
      private var var_2470:Boolean;
      
      private var var_2538:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_876 = new Array();
         super();
         this.var_374 = param1.readInteger();
         this.var_774 = param1.readBoolean();
         this.var_967 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2475 = param1.readInteger();
         this.var_2279 = param1.readInteger();
         this.var_2539 = param1.readInteger();
         this.var_1807 = param1.readString();
         this.var_2541 = param1.readInteger();
         this.var_2537 = param1.readBoolean();
         this.var_742 = param1.readInteger();
         this.var_1595 = param1.readInteger();
         this.var_2536 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_876.push(_loc4_);
            _loc3_++;
         }
         this.var_2540 = new RoomThumbnailData(param1);
         this.var_2470 = param1.readBoolean();
         this.var_2538 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_876 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_374;
      }
      
      public function get event() : Boolean
      {
         return this.var_774;
      }
      
      public function get roomName() : String
      {
         return this.var_967;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2475;
      }
      
      public function get userCount() : int
      {
         return this.var_2279;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2539;
      }
      
      public function get description() : String
      {
         return this.var_1807;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2541;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2537;
      }
      
      public function get score() : int
      {
         return this.var_742;
      }
      
      public function get categoryId() : int
      {
         return this.var_1595;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2536;
      }
      
      public function get tags() : Array
      {
         return this.var_876;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2540;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2470;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2538;
      }
   }
}
