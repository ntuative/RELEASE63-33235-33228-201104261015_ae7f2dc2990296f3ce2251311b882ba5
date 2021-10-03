package com.sulake.core.assets
{
   import flash.media.Sound;
   import flash.utils.ByteArray;
   
   public class SoundAsset implements IAsset
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_180:Sound = null;
      
      private var var_1659:AssetTypeDeclaration;
      
      private var var_1072:String;
      
      public function SoundAsset(param1:AssetTypeDeclaration, param2:String = null)
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
         return this.var_180 as Object;
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
         if(param1 is Sound)
         {
            if(this.var_180)
            {
               this.var_180.close();
            }
            this.var_180 = param1 as Sound;
            return;
         }
         if(param1 is ByteArray)
         {
         }
         if(param1 is Class)
         {
            if(this.var_180)
            {
               this.var_180.close();
            }
            this.var_180 = new param1() as Sound;
            return;
         }
         if(param1 is SoundAsset)
         {
            if(this.var_180)
            {
               this.var_180.close();
            }
            this.var_180 = SoundAsset(param1).var_180;
            return;
         }
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is SoundAsset)
         {
            this.var_180 = SoundAsset(param1).var_180;
         }
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
   }
}
