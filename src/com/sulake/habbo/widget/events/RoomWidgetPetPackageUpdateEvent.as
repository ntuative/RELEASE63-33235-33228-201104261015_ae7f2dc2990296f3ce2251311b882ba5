package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPetPackageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_498:String = "RWOPPUE_OPEN_PET_PACKAGE_REQUESTED";
      
      public static const const_468:String = "RWOPPUE_OPEN_PET_PACKAGE_RESULT";
      
      public static const const_406:String = "RWOPPUE_OPEN_PET_PACKAGE_UPDATE_PET_IMAGE";
       
      
      private var var_361:int = -1;
      
      private var var_46:BitmapData = null;
      
      private var var_1864:int = 0;
      
      private var var_1827:String = null;
      
      public function RoomWidgetPetPackageUpdateEvent(param1:String, param2:int, param3:BitmapData, param4:int, param5:String, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_361 = param2;
         this.var_46 = param3;
         this.var_1864 = param4;
         this.var_1827 = param5;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1864;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_1827;
      }
      
      public function get image() : BitmapData
      {
         return this.var_46;
      }
      
      public function get objectId() : int
      {
         return this.var_361;
      }
   }
}
