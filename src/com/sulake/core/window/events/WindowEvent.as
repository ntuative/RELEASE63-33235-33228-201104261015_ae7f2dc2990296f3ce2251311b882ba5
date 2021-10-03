package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1575:String = "WE_DESTROY";
      
      public static const const_357:String = "WE_DESTROYED";
      
      public static const const_1816:String = "WE_OPEN";
      
      public static const const_1735:String = "WE_OPENED";
      
      public static const const_1563:String = "WE_CLOSE";
      
      public static const const_1533:String = "WE_CLOSED";
      
      public static const const_1732:String = "WE_FOCUS";
      
      public static const const_304:String = "WE_FOCUSED";
      
      public static const const_1791:String = "WE_UNFOCUS";
      
      public static const const_1608:String = "WE_UNFOCUSED";
      
      public static const const_1744:String = "WE_ACTIVATE";
      
      public static const const_574:String = "WE_ACTIVATED";
      
      public static const const_1548:String = "WE_DEACTIVATE";
      
      public static const const_472:String = "WE_DEACTIVATED";
      
      public static const const_332:String = "WE_SELECT";
      
      public static const const_58:String = "WE_SELECTED";
      
      public static const const_506:String = "WE_UNSELECT";
      
      public static const const_590:String = "WE_UNSELECTED";
      
      public static const const_1742:String = "WE_LOCK";
      
      public static const const_1689:String = "WE_LOCKED";
      
      public static const const_1772:String = "WE_UNLOCK";
      
      public static const const_1633:String = "WE_UNLOCKED";
      
      public static const const_686:String = "WE_ENABLE";
      
      public static const const_268:String = "WE_ENABLED";
      
      public static const const_843:String = "WE_DISABLE";
      
      public static const const_209:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_236:String = "WE_RELOCATED";
      
      public static const const_1291:String = "WE_RESIZE";
      
      public static const const_41:String = "WE_RESIZED";
      
      public static const const_1554:String = "WE_MINIMIZE";
      
      public static const const_1778:String = "WE_MINIMIZED";
      
      public static const const_1632:String = "WE_MAXIMIZE";
      
      public static const const_1664:String = "WE_MAXIMIZED";
      
      public static const const_1653:String = "WE_RESTORE";
      
      public static const const_1582:String = "WE_RESTORED";
      
      public static const const_581:String = "WE_CHILD_ADDED";
      
      public static const const_417:String = "WE_CHILD_REMOVED";
      
      public static const const_196:String = "WE_CHILD_RELOCATED";
      
      public static const const_162:String = "WE_CHILD_RESIZED";
      
      public static const const_301:String = "WE_CHILD_ACTIVATED";
      
      public static const const_636:String = "WE_PARENT_ADDED";
      
      public static const const_1769:String = "WE_PARENT_REMOVED";
      
      public static const const_1698:String = "WE_PARENT_RELOCATED";
      
      public static const const_807:String = "WE_PARENT_RESIZED";
      
      public static const const_1139:String = "WE_PARENT_ACTIVATED";
      
      public static const const_179:String = "WE_OK";
      
      public static const const_547:String = "WE_CANCEL";
      
      public static const const_103:String = "WE_CHANGE";
      
      public static const const_526:String = "WE_SCROLL";
      
      public static const const_172:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_703:IWindow;
      
      protected var var_1071:Boolean;
      
      protected var var_470:Boolean;
      
      protected var var_474:Boolean;
      
      protected var var_704:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_703 = param3;
         _loc5_.var_470 = param4;
         _loc5_.var_474 = false;
         _loc5_.var_704 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_703;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_470;
      }
      
      public function recycle() : void
      {
         if(this.var_474)
         {
            throw new Error("Event already recycled!");
         }
         this.var_703 = null;
         this._window = null;
         this.var_474 = true;
         this.var_1071 = false;
         this.var_704.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1071;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1071 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1071;
      }
      
      public function stopPropagation() : void
      {
         this.var_1071 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1071 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_470 + " window: " + this._window + " }";
      }
   }
}
