package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_954:IAssetLoader;
      
      private var var_1863:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1863 = param1;
         this.var_954 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1863;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_954;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_954 != null)
            {
               if(!this.var_954.disposed)
               {
                  this.var_954.dispose();
                  this.var_954 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
