package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_29:String = "AssetLoaderEventComplete";
      
      public static const const_1097:String = "AssetLoaderEventProgress";
      
      public static const const_1248:String = "AssetLoaderEventUnload";
      
      public static const const_1197:String = "AssetLoaderEventStatus";
      
      public static const const_48:String = "AssetLoaderEventError";
      
      public static const const_1243:String = "AssetLoaderEventOpen";
       
      
      private var var_403:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         this.var_403 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return this.var_403;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,this.var_403);
      }
      
      override public function toString() : String
      {
         return formatToString("AssetLoaderEvent","type","status");
      }
   }
}
