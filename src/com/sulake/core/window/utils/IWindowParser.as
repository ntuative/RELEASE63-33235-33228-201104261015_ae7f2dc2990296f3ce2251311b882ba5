package com.sulake.core.window.utils
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.IWindow;
   
   public interface IWindowParser extends IDisposable
   {
       
      
      function parseAndConstruct(param1:XML, param2:IWindow, param3:Map) : IWindow;
      
      function method_2(param1:IWindow) : String;
   }
}
