package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2871:String;
      
      private var var_2870:Class;
      
      private var var_2872:Class;
      
      private var var_2066:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2871 = param1;
         this.var_2870 = param2;
         this.var_2872 = param3;
         if(rest == null)
         {
            this.var_2066 = new Array();
         }
         else
         {
            this.var_2066 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2871;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2870;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2872;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_2066;
      }
   }
}
