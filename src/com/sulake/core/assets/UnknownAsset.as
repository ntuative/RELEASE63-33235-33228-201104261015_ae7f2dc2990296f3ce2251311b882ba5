package com.sulake.core.assets
{
   import flash.utils.getQualifiedClassName;
   
   public class UnknownAsset implements IAsset
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_180:Object = null;
      
      private var var_1659:AssetTypeDeclaration;
      
      private var var_1072:String;
      
      public function UnknownAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_1659 = param1;
         this.var_1072 = param2;
      }
      
      public function get url() : String
      {
         return this.var_1072;
      }
      
      public function get content() : Object
      {
         return this.var_180;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_1659;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_180 = null;
            this.var_1659 = null;
            this.var_1072 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         this.var_180 = param1;
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         this.var_180 = param1.content as Object;
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
      
      public function toString() : String
      {
         return getQualifiedClassName(this) + ": " + this.var_180;
      }
   }
}
