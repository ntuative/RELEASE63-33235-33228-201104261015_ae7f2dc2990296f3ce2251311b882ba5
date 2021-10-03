package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1390:IID;
      
      private var var_1718:String;
      
      private var var_103:IUnknown;
      
      private var var_725:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1390 = param1;
         this.var_1718 = getQualifiedClassName(this.var_1390);
         this.var_103 = param2;
         this.var_725 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1390;
      }
      
      public function get iis() : String
      {
         return this.var_1718;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_103;
      }
      
      public function get references() : uint
      {
         return this.var_725;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_103 == null;
      }
      
      public function dispose() : void
      {
         this.var_1390 = null;
         this.var_1718 = null;
         this.var_103 = null;
         this.var_725 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_725;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_725) : uint(0);
      }
   }
}
