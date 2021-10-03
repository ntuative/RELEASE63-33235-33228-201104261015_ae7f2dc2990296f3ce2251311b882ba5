package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1177:String = "M";
      
      public static const const_1602:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_173:Number = 0;
      
      private var var_172:Number = 0;
      
      private var var_456:int = 0;
      
      private var _name:String = "";
      
      private var var_1609:int = 0;
      
      private var var_894:String = "";
      
      private var var_623:String = "";
      
      private var var_2813:String = "";
      
      private var var_2153:int;
      
      private var var_2735:int = 0;
      
      private var var_2814:String = "";
      
      private var var_2815:int = 0;
      
      private var var_2736:int = 0;
      
      private var var_2816:String = "";
      
      private var var_191:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_191 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_191)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_173;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_191)
         {
            this.var_173 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_172;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_191)
         {
            this.var_172 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_456;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_191)
         {
            this.var_456 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_191)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_1609;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_191)
         {
            this.var_1609 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_894;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_191)
         {
            this.var_894 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_623;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_191)
         {
            this.var_623 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2813;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_191)
         {
            this.var_2813 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2153;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_191)
         {
            this.var_2153 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2735;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_191)
         {
            this.var_2735 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2814;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_191)
         {
            this.var_2814 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2815;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_191)
         {
            this.var_2815 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2736;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_191)
         {
            this.var_2736 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2816;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_191)
         {
            this.var_2816 = param1;
         }
      }
   }
}
