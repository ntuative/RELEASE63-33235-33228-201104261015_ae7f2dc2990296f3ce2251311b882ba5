package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_709:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_1069)
         {
            _structure = null;
            _assets = null;
            var_280 = null;
            var_282 = null;
            var_623 = null;
            var_567 = null;
            var_327 = null;
            if(!var_1326 && var_46)
            {
               var_46.dispose();
            }
            var_46 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_743 = null;
            var_1069 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_709[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_709[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_374:
               switch(_loc3_)
               {
                  case AvatarAction.const_801:
                  case AvatarAction.const_541:
                  case AvatarAction.const_416:
                  case AvatarAction.const_917:
                  case AvatarAction.const_423:
                  case AvatarAction.const_743:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_348:
            case AvatarAction.const_910:
            case AvatarAction.const_247:
            case AvatarAction.const_863:
            case AvatarAction.const_894:
            case AvatarAction.const_840:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
