package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_940:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2489:int;
      
      private var var_2491:int;
      
      private var _color:uint;
      
      private var var_1181:int;
      
      private var var_2651:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_940);
         this.var_2489 = param1;
         this.var_2491 = param2;
         this._color = param3;
         this.var_1181 = param4;
         this.var_2651 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2489;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2491;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1181;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2651;
      }
   }
}
