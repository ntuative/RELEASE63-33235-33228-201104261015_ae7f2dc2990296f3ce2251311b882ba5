package com.sulake.habbo.widget.playlisteditor
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IBorderWindow;
   import com.sulake.core.window.components.IItemGridWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.IScrollbarWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.sound.HabboMusicPrioritiesEnum;
   import com.sulake.habbo.sound.IHabboMusicController;
   import com.sulake.habbo.sound.IPlayListController;
   import com.sulake.habbo.sound.ISongInfo;
   import com.sulake.habbo.sound.events.NowPlayingEvent;
   import com.sulake.habbo.sound.events.PlayListStatusEvent;
   import com.sulake.habbo.sound.events.SongDiskInventoryReceivedEvent;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class MainWindowHandler
   {
      
      private static const const_1456:int = 6;
      
      private static const const_1458:int = 9;
      
      private static const const_1457:int = 5;
       
      
      private var _widget:PlayListEditorWidget;
      
      private var var_70:IHabboMusicController;
      
      private var var_15:IWindowContainer;
      
      private var var_1013:IBorderWindow;
      
      private var var_1014:IBorderWindow;
      
      private var var_536:MusicInventoryGridView;
      
      private var var_813:PlayListEditorItemListView;
      
      private var var_212:MusicInventoryStatusView;
      
      private var var_232:PlayListStatusView;
      
      private var var_1978:IScrollbarWindow;
      
      private var var_1977:IScrollbarWindow;
      
      public function MainWindowHandler(param1:PlayListEditorWidget, param2:IHabboMusicController)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         super();
         this._widget = param1;
         this.var_70 = param2;
         var _loc3_:Array = [PlayListEditorWidgetAssetsEnum.const_757,PlayListEditorWidgetAssetsEnum.const_793,PlayListEditorWidgetAssetsEnum.const_628,PlayListEditorWidgetAssetsEnum.const_469,PlayListEditorWidgetAssetsEnum.const_728];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = this._widget.getImageGalleryAssetBitmap(_loc4_);
            if(_loc5_ != null)
            {
               _loc5_.dispose();
            }
            else
            {
               this._widget.retrieveWidgetImage(_loc4_);
            }
         }
         this.createWindow();
         this.var_536 = new MusicInventoryGridView(param1,this.getMusicInventoryGrid(),param2);
         this.var_813 = new PlayListEditorItemListView(param1,this.getPlayListEditorItemList());
         this.var_212 = new MusicInventoryStatusView(param1,this.getMusicInventoryStatusContainer());
         this.var_232 = new PlayListStatusView(param1,this.getPlayListStatusContainer());
         this.refreshLoadableAsset();
         this.var_70.events.addEventListener(SongDiskInventoryReceivedEvent.const_515,this.onSongDiskInventoryReceivedEvent);
         this.var_70.events.addEventListener(PlayListStatusEvent.PLAY_LIST_UPDATED,this.onPlayListUpdatedEvent);
         this.var_70.events.addEventListener(PlayListStatusEvent.const_947,this.onPlayListFullEvent);
         this.var_70.events.addEventListener(NowPlayingEvent.const_324,this.onNowPlayingChanged);
         this.var_70.events.addEventListener(NowPlayingEvent.const_538,this.onNowPlayingChanged);
         this.var_70.events.addEventListener(NowPlayingEvent.const_578,this.onNowPlayingChanged);
      }
      
      public function get window() : IWindow
      {
         return this.var_15;
      }
      
      public function get musicInventoryView() : MusicInventoryGridView
      {
         return this.var_536;
      }
      
      public function get playListEditorView() : PlayListEditorItemListView
      {
         return this.var_813;
      }
      
      public function destroy() : void
      {
         if(this.var_70)
         {
            this.var_70.stop(HabboMusicPrioritiesEnum.const_436);
            this.var_70.events.removeEventListener(SongDiskInventoryReceivedEvent.const_515,this.onSongDiskInventoryReceivedEvent);
            this.var_70.events.removeEventListener(PlayListStatusEvent.PLAY_LIST_UPDATED,this.onPlayListUpdatedEvent);
            this.var_70.events.removeEventListener(PlayListStatusEvent.const_947,this.onPlayListFullEvent);
            this.var_70.events.removeEventListener(NowPlayingEvent.const_324,this.onNowPlayingChanged);
            this.var_70.events.removeEventListener(NowPlayingEvent.const_538,this.onNowPlayingChanged);
            this.var_70.events.removeEventListener(NowPlayingEvent.const_578,this.onNowPlayingChanged);
            this.var_70 = null;
         }
         if(this.var_536)
         {
            this.var_536.destroy();
            this.var_536 = null;
         }
         if(this.var_813)
         {
            this.var_813.destroy();
            this.var_813 = null;
         }
         if(this.var_232)
         {
            this.var_232.destroy();
            this.var_232 = null;
         }
         if(this.var_212)
         {
            this.var_212.destroy();
            this.var_212 = null;
         }
         this.var_15.destroy();
         this.var_15 = null;
      }
      
      public function hide() : void
      {
         this.var_15.visible = false;
         if(this._widget != null)
         {
            this._widget.stopUserSong();
         }
      }
      
      public function show() : void
      {
         this.var_70.requestUserSongDisks();
         var _loc1_:IPlayListController = this.var_70.getRoomItemPlaylist();
         if(_loc1_ != null)
         {
            _loc1_.requestPlayList();
            this.selectPlayListStatusViewByFurniPlayListState();
         }
         this.var_15.visible = true;
      }
      
      public function refreshLoadableAsset(param1:String = "") : void
      {
         if(param1 == "" || param1 == PlayListEditorWidgetAssetsEnum.const_757)
         {
            this.assignWindowBitmapByAsset(this.var_1013,"music_inventory_splash_image",PlayListEditorWidgetAssetsEnum.const_757);
         }
         if(param1 == "" || param1 == PlayListEditorWidgetAssetsEnum.const_793)
         {
            this.assignWindowBitmapByAsset(this.var_1014,"playlist_editor_splash_image",PlayListEditorWidgetAssetsEnum.const_793);
         }
         if(param1 == "" || param1 == PlayListEditorWidgetAssetsEnum.const_628)
         {
            this.var_212.setPreviewPlayingBackgroundImage(this._widget.getImageGalleryAssetBitmap(PlayListEditorWidgetAssetsEnum.const_628));
         }
         if(param1 == "" || param1 == PlayListEditorWidgetAssetsEnum.const_469)
         {
            this.var_212.setGetMoreMusicBackgroundImage(this._widget.getImageGalleryAssetBitmap(PlayListEditorWidgetAssetsEnum.const_469));
         }
         if(param1 == "" || param1 == PlayListEditorWidgetAssetsEnum.const_728)
         {
            this.var_232.addSongsBackgroundImage = this._widget.getImageGalleryAssetBitmap(PlayListEditorWidgetAssetsEnum.const_728);
         }
      }
      
      private function assignWindowBitmapByAsset(param1:IWindowContainer, param2:String, param3:String) : void
      {
         var _loc5_:* = null;
         var _loc4_:IBitmapWrapperWindow = param1.getChildByName(param2) as IBitmapWrapperWindow;
         if(_loc4_ != null)
         {
            _loc5_ = this._widget.getImageGalleryAssetBitmap(param3);
            if(_loc5_ != null)
            {
               _loc4_.bitmap = _loc5_;
               _loc4_.width = _loc5_.width;
               _loc4_.height = _loc5_.height;
            }
         }
      }
      
      private function createWindow() : void
      {
         if(this._widget == null)
         {
            return;
         }
         var _loc1_:XmlAsset = this._widget.assets.getAssetByName("playlisteditor_main_window") as XmlAsset;
         Logger.log("Show window: " + _loc1_);
         this.var_15 = this._widget.windowManager.buildFromXML(_loc1_.content as XML) as IWindowContainer;
         if(this.var_15 == null)
         {
            throw new Error("Failed to construct window from XML!");
         }
         this.var_15.position = new Point(80,0);
         var _loc2_:IWindowContainer = this.var_15.getChildByName("content_area") as IWindowContainer;
         if(_loc2_ == null)
         {
            throw new Error("Window is missing \'content_area\' element");
         }
         this.var_1013 = _loc2_.getChildByName("my_music_border") as IBorderWindow;
         this.var_1014 = _loc2_.getChildByName("playlist_border") as IBorderWindow;
         if(this.var_1013 == null)
         {
            throw new Error("Window content area is missing \'my_music_border\' window element");
         }
         if(this.var_1014 == null)
         {
            throw new Error("Window content area is missing \'playlist_border\' window element");
         }
         this.var_1978 = this.var_1013.getChildByName("music_inventory_scrollbar") as IScrollbarWindow;
         this.var_1977 = this.var_1014.getChildByName("playlist_scrollbar") as IScrollbarWindow;
         if(this.var_1978 == null)
         {
            throw new Error("Window content area is missing \'music_inventory_scrollbar\' window element");
         }
         if(this.var_1977 == null)
         {
            throw new Error("Window content area is missing \'playlist_scrollbar\' window element");
         }
         var _loc3_:IWindow = this.var_15.findChildByTag("close");
         if(_loc3_ != null)
         {
            _loc3_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onClose);
         }
      }
      
      private function getMusicInventoryGrid() : IItemGridWindow
      {
         return this.var_1013.getChildByName("music_inventory_itemgrid") as IItemGridWindow;
      }
      
      private function getPlayListEditorItemList() : IItemListWindow
      {
         return this.var_1014.getChildByName("playlist_editor_itemlist") as IItemListWindow;
      }
      
      private function getMusicInventoryStatusContainer() : IWindowContainer
      {
         return this.var_1013.getChildByName("preview_play_container") as IWindowContainer;
      }
      
      private function getPlayListStatusContainer() : IWindowContainer
      {
         return this.var_1014.getChildByName("now_playing_container") as IWindowContainer;
      }
      
      private function selectPlayListStatusViewByFurniPlayListState() : void
      {
         var _loc1_:IPlayListController = this.var_70.getRoomItemPlaylist();
         if(_loc1_ == null)
         {
            return;
         }
         if(_loc1_.isPlaying)
         {
            this.var_232.selectView(PlayListStatusView.const_611);
         }
         else if(_loc1_.length > 0)
         {
            this.var_232.selectView(PlayListStatusView.const_1215);
         }
         else
         {
            this.var_232.selectView(PlayListStatusView.const_695);
         }
      }
      
      private function selectMusicStatusViewByMusicState() : void
      {
         if(this.isPreviewPlaying())
         {
            this.var_212.show();
            this.var_212.selectView(MusicInventoryStatusView.const_734);
         }
         else if(this.var_70.getSongDiskInventorySize() <= const_1456)
         {
            this.var_212.show();
            this.var_212.selectView(MusicInventoryStatusView.const_933);
         }
         else
         {
            this.var_212.hide();
         }
      }
      
      private function updatePlaylistEditorView() : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc1_:IPlayListController = this.var_70.getRoomItemPlaylist();
         var _loc2_:* = [];
         var _loc3_:int = -1;
         if(_loc1_ != null)
         {
            _loc4_ = 0;
            while(_loc4_ < _loc1_.length)
            {
               _loc5_ = _loc1_.getEntry(_loc4_);
               if(_loc5_ != null)
               {
                  _loc2_.push(_loc5_);
               }
               _loc4_++;
            }
            _loc3_ = _loc1_.playPosition;
         }
         this.var_813.refresh(_loc2_,_loc3_);
      }
      
      private function onPlayListUpdatedEvent(param1:PlayListStatusEvent) : void
      {
         var _loc4_:* = null;
         this.updatePlaylistEditorView();
         this.selectPlayListStatusViewByFurniPlayListState();
         var _loc2_:IPlayListController = this.var_70.getRoomItemPlaylist();
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:int = _loc2_.nowPlayingSongId;
         if(_loc3_ != -1)
         {
            _loc4_ = this.var_70.getSongInfo(_loc3_);
            this.var_232.nowPlayingTrackName = _loc4_.name;
            this.var_232.nowPlayingAuthorName = _loc4_.creator;
         }
         this.var_1977.visible = _loc2_.length > const_1457;
      }
      
      private function onPlayListFullEvent(param1:PlayListStatusEvent) : void
      {
         this._widget.alertPlayListFull();
      }
      
      private function onSongDiskInventoryReceivedEvent(param1:SongDiskInventoryReceivedEvent) : void
      {
         this.var_536.refresh();
         this.selectMusicStatusViewByMusicState();
         this.var_1978.visible = this.var_536.itemCount > const_1458;
      }
      
      private function onNowPlayingChanged(param1:NowPlayingEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         switch(param1.type)
         {
            case NowPlayingEvent.const_324:
               this.selectPlayListStatusViewByFurniPlayListState();
               this.var_813.setItemIndexPlaying(param1.position);
               if(param1.id != -1)
               {
                  _loc3_ = this.var_70.getSongInfo(param1.id);
                  if(_loc3_ != null)
                  {
                     this.var_232.nowPlayingTrackName = _loc3_.name;
                     this.var_232.nowPlayingAuthorName = _loc3_.creator;
                  }
                  else
                  {
                     this.var_232.nowPlayingTrackName = "";
                     this.var_232.nowPlayingAuthorName = "";
                  }
               }
               break;
            case NowPlayingEvent.const_538:
               this.var_536.setPreviewIconToPause();
               _loc2_ = this.var_70.getSongInfo(param1.id);
               if(_loc2_ != null)
               {
                  this.var_212.songName = _loc2_.name;
                  this.var_212.authorName = _loc2_.creator;
               }
               else
               {
                  this.var_212.songName = "";
                  this.var_212.authorName = "";
               }
               this.selectMusicStatusViewByMusicState();
               break;
            case NowPlayingEvent.const_578:
               this.var_536.setPreviewIconToPlay();
               this.selectMusicStatusViewByMusicState();
         }
      }
      
      private function onClose(param1:WindowMouseEvent) : void
      {
         this.hide();
      }
      
      private function isPreviewPlaying() : Boolean
      {
         return this.var_70.getSongIdPlayingAtPriority(HabboMusicPrioritiesEnum.const_436) != -1;
      }
   }
}
