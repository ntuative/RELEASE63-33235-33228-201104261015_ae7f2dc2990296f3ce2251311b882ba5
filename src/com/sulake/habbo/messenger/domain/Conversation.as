package com.sulake.habbo.messenger.domain
{
   import com.sulake.core.runtime.IDisposable;
   
   public class Conversation implements IDisposable
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1714:Boolean;
      
      private var var_623:String;
      
      private var var_1506:Array;
      
      private var var_1409:Boolean;
      
      private var _selected:Boolean;
      
      private var _disposed:Boolean;
      
      public function Conversation(param1:int, param2:String, param3:String, param4:Boolean)
      {
         this.var_1506 = new Array();
         super();
         this._id = param1;
         this._name = param2;
         this.var_623 = param3;
         this.var_1714 = param4;
      }
      
      public function addMessage(param1:Message) : void
      {
         this.var_1506.push(param1);
      }
      
      public function setSelected(param1:Boolean) : void
      {
         if(param1)
         {
            this.var_1409 = false;
         }
         this._selected = param1;
      }
      
      public function setNewMessageArrived(param1:Boolean) : void
      {
         if(this._selected)
         {
            this.var_1409 = false;
         }
         else
         {
            this.var_1409 = param1;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1506 = null;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get selected() : Boolean
      {
         return this._selected;
      }
      
      public function get messages() : Array
      {
         return this.var_1506;
      }
      
      public function get newMessageArrived() : Boolean
      {
         return this.var_1409;
      }
      
      public function get figure() : String
      {
         return this.var_623;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1714;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function set followingAllowed(param1:Boolean) : void
      {
         this.var_1714 = param1;
      }
   }
}
