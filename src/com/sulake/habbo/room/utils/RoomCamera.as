package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1317:Number = 12;
       
      
      private var var_2195:int = -1;
      
      private var var_2196:int = -2;
      
      private var var_197:Vector3d = null;
      
      private var var_1086:Number = 0;
      
      private var var_1641:Number = 0;
      
      private var var_1639:Boolean = false;
      
      private var var_177:Vector3d = null;
      
      private var var_1638:Vector3d;
      
      private var var_2197:Boolean = false;
      
      private var var_2190:Boolean = false;
      
      private var var_2191:Boolean = false;
      
      private var var_2192:Boolean = false;
      
      private var var_2198:int = 0;
      
      private var var_2193:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2199:int = 0;
      
      private var var_2194:int = 0;
      
      private var var_1900:int = -1;
      
      private var var_1637:int = 0;
      
      private var var_1640:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_1638 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_177;
      }
      
      public function get targetId() : int
      {
         return this.var_2195;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2196;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_1638;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2197;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2190;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2191;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2192;
      }
      
      public function get screenWd() : int
      {
         return this.var_2198;
      }
      
      public function get screenHt() : int
      {
         return this.var_2193;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2199;
      }
      
      public function get roomHt() : int
      {
         return this.var_2194;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1900;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_197 != null && this.var_177 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2195 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_1638.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2196 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2197 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2190 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2191 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2192 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2198 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2193 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_1640 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2199 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2194 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1900 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_197 == null)
         {
            this.var_197 = new Vector3d();
         }
         if(this.var_197.x != param1.x || this.var_197.y != param1.y || this.var_197.z != param1.z)
         {
            this.var_197.assign(param1);
            this.var_1637 = 0;
            _loc2_ = Vector3d.dif(this.var_197,this.var_177);
            this.var_1086 = _loc2_.length;
            this.var_1639 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_197 = null;
         this.var_177 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_177 != null)
         {
            return;
         }
         this.var_177 = new Vector3d();
         this.var_177.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_177 == null)
         {
            this.var_177 = new Vector3d();
         }
         this.var_177.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_197 != null && this.var_177 != null)
         {
            ++this.var_1637;
            if(this.var_1640)
            {
               this.var_1640 = false;
               this.var_177 = this.var_197;
               this.var_197 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_197,this.var_177);
            if(_loc3_.length > this.var_1086)
            {
               this.var_1086 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_177 = this.var_197;
               this.var_197 = null;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1086);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1086 / const_1317;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_1639)
               {
                  if(_loc7_ < this.var_1641)
                  {
                     _loc7_ = this.var_1641;
                  }
                  else
                  {
                     this.var_1639 = false;
                  }
               }
               this.var_1641 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_177 = Vector3d.sum(this.var_177,_loc3_);
            }
         }
      }
   }
}
