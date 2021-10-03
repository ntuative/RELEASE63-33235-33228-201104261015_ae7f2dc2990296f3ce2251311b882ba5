package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_565:String = "RWUAM_WHISPER_USER";
      
      public static const const_467:String = "RWUAM_IGNORE_USER";
      
      public static const const_520:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_442:String = "RWUAM_KICK_USER";
      
      public static const const_461:String = "RWUAM_BAN_USER";
      
      public static const const_535:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_528:String = "RWUAM_RESPECT_USER";
      
      public static const const_473:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_490:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_564:String = "RWUAM_START_TRADING";
      
      public static const const_739:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_576:String = "RWUAM_KICK_BOT";
      
      public static const const_600:String = "RWUAM_REPORT";
      
      public static const const_579:String = "RWUAM_PICKUP_PET";
      
      public static const const_1743:String = "RWUAM_TRAIN_PET";
      
      public static const const_486:String = " RWUAM_RESPECT_PET";
      
      public static const const_388:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_832:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
