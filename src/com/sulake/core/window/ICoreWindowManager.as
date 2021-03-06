package com.sulake.core.window
{
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.utils.INotify;
   import flash.geom.Rectangle;
   
   public interface ICoreWindowManager
   {
       
      
      function create(param1:String, param2:uint, param3:uint, param4:uint, param5:Rectangle, param6:Function = null, param7:String = "", param8:uint = 0, param9:Array = null, param10:IWindow = null, param11:Array = null) : IWindow;
      
      function destroy(param1:IWindow) : void;
      
      function buildFromXML(param1:XML, param2:uint = 1, param3:Map = null) : IWindow;
      
      function method_2(param1:IWindow) : String;
      
      function getDesktop(param1:uint) : IDesktopWindow;
      
      function notify(param1:String, param2:String, param3:Function, param4:uint = 0) : INotify;
   }
}
