package com.sulake.core.window.services
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IInteractiveWindow;
   import com.sulake.core.window.components.IToolTipWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowType;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class WindowToolTipAgent extends WindowMouseOperator implements IToolTipAgentService
   {
       
      
      protected var var_1333:String;
      
      protected var var_283:IToolTipWindow;
      
      protected var var_399:Timer;
      
      protected var var_1332:Point;
      
      protected var var_1331:Point;
      
      protected var var_1608:uint;
      
      public function WindowToolTipAgent(param1:DisplayObject)
      {
         this.var_1331 = new Point();
         this.var_1332 = new Point(20,20);
         this.var_1608 = 500;
         super(param1);
      }
      
      override public function begin(param1:IWindow, param2:uint = 0) : IWindow
      {
         if(param1 && !param1.disposed)
         {
            if(param1 is IInteractiveWindow)
            {
               this.var_1333 = IInteractiveWindow(param1).toolTipCaption;
               this.var_1608 = IInteractiveWindow(param1).toolTipDelay;
            }
            else
            {
               this.var_1333 = param1.caption;
               this.var_1608 = 500;
            }
            _mouse.x = var_146.mouseX;
            _mouse.y = var_146.mouseY;
            getMousePositionRelativeTo(param1,_mouse,this.var_1331);
            if(this.var_1333 != null && this.var_1333 != "")
            {
               if(this.var_399 == null)
               {
                  this.var_399 = new Timer(this.var_1608,1);
                  this.var_399.addEventListener(TimerEvent.TIMER,this.showToolTip);
               }
               this.var_399.reset();
               this.var_399.start();
            }
         }
         return super.begin(param1,param2);
      }
      
      override public function end(param1:IWindow) : IWindow
      {
         if(this.var_399 != null)
         {
            this.var_399.stop();
            this.var_399.removeEventListener(TimerEvent.TIMER,this.showToolTip);
            this.var_399 = null;
         }
         this.hideToolTip();
         return super.end(param1);
      }
      
      override public function operate(param1:int, param2:int) : void
      {
         if(_window && true)
         {
            _mouse.x = param1;
            _mouse.y = param2;
            getMousePositionRelativeTo(_window,_mouse,this.var_1331);
            if(this.var_283 != null && !this.var_283.disposed)
            {
               this.var_283.x = param1 + this.var_1332.x;
               this.var_283.y = param2 + this.var_1332.y;
            }
         }
      }
      
      protected function showToolTip(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         if(this.var_399 != null)
         {
            this.var_399.reset();
         }
         if(_window && true)
         {
            if(this.var_283 == null || this.var_283.disposed)
            {
               this.var_283 = _window.context.create("undefined::ToolTip",this.var_1333,WindowType.const_390,_window.style,0 | 0,null,null,null,0,null,null) as IToolTipWindow;
            }
            _loc2_ = new Point();
            _window.getGlobalPosition(_loc2_);
            this.var_283.x = _loc2_.x + this.var_1331.x + this.var_1332.x;
            this.var_283.y = _loc2_.y + this.var_1331.y + this.var_1332.y;
         }
      }
      
      protected function hideToolTip() : void
      {
         if(this.var_283 != null && !this.var_283.disposed)
         {
            this.var_283.destroy();
            this.var_283 = null;
         }
      }
   }
}
