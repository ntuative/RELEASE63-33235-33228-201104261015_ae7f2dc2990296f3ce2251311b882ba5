package com.sulake.habbo.room.utils
{
   import com.sulake.core.utils.Map;
   
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_854:TileHeightMap = null;
      
      private var var_1311:LegacyWallGeometry = null;
      
      private var var_1310:RoomCamera = null;
      
      private var var_855:SelectedRoomObjectData = null;
      
      private var var_856:SelectedRoomObjectData = null;
      
      private var _worldType:String = null;
      
      private var var_559:Map;
      
      private var var_560:Map;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         this.var_559 = new Map();
         this.var_560 = new Map();
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1311 = new LegacyWallGeometry();
         this.var_1310 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_854;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_854 != null)
         {
            this.var_854.dispose();
         }
         this.var_854 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1311;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1310;
      }
      
      public function get worldType() : String
      {
         return this._worldType;
      }
      
      public function set worldType(param1:String) : void
      {
         this._worldType = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_855;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_855 != null)
         {
            this.var_855.dispose();
         }
         this.var_855 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_856;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_856 != null)
         {
            this.var_856.dispose();
         }
         this.var_856 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_854 != null)
         {
            this.var_854.dispose();
            this.var_854 = null;
         }
         if(this.var_1311 != null)
         {
            this.var_1311.dispose();
            this.var_1311 = null;
         }
         if(this.var_1310 != null)
         {
            this.var_1310.dispose();
            this.var_1310 = null;
         }
         if(this.var_855 != null)
         {
            this.var_855.dispose();
            this.var_855 = null;
         }
         if(this.var_856 != null)
         {
            this.var_856.dispose();
            this.var_856 = null;
         }
         if(this.var_559 != null)
         {
            this.var_559.dispose();
            this.var_559 = null;
         }
         if(this.var_560 != null)
         {
            this.var_560.dispose();
            this.var_560 = null;
         }
      }
      
      public function addFurnitureData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_559.remove(param1.id);
            this.var_559.add(param1.id,param1);
         }
      }
      
      public function getFurnitureData() : FurnitureData
      {
         if(this.var_559.length > 0)
         {
            return this.getFurnitureDataWithId(this.var_559.getKey(0));
         }
         return null;
      }
      
      public function getFurnitureDataWithId(param1:int) : FurnitureData
      {
         return this.var_559.remove(param1);
      }
      
      public function addWallItemData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_560.remove(param1.id);
            this.var_560.add(param1.id,param1);
         }
      }
      
      public function getWallItemData() : FurnitureData
      {
         if(this.var_560.length > 0)
         {
            return this.getWallItemDataWithId(this.var_560.getKey(0));
         }
         return null;
      }
      
      public function getWallItemDataWithId(param1:int) : FurnitureData
      {
         return this.var_560.remove(param1);
      }
   }
}
