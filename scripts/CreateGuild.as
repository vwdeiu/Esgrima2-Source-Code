package
{
   import flash.accessibility.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.net.drm.*;
   import flash.system.*;
   import flash.text.*;
   import flash.text.ime.*;
   import flash.ui.*;
   import flash.utils.*;
   import playerio.*;
   
   public dynamic class CreateGuild extends MovieClip
   {
       
      
      public var createbtn:SimpleButton;
      
      public var choosefile:SimpleButton;
      
      public var prvbtn:SimpleButton;
      
      public var bg:MovieClip;
      
      public var closebtn:Close;
      
      public var nxtbtn:SimpleButton;
      
      public var guildname:TextField;
      
      public var filetxt:TextField;
      
      public var emblem:Emblem;
      
      public var emblemo:DisplayObject;
      
      public var file:FileReference;
      
      public var movieClipLoader:Loader;
      
      public function CreateGuild()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(!_loc1_)
            {
               addr22:
               addFrameScript(0,this.frame1);
            }
            return;
         }
         §§goto(addr22);
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.clear();
            if(!_loc2_)
            {
               root.q.removeChildFade(root.gcreatemc);
               if(_loc1_)
               {
                  root.gcreatemc = null;
               }
            }
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.emblem.b)
            {
               if(_loc2_)
               {
                  §§goto(addr32);
               }
            }
            §§goto(addr39);
         }
         addr32:
         this.emblem.b.bitmapData.dispose();
         if(!_loc1_)
         {
            addr39:
            removeEventListener(MouseEvent.CLICK,this.clicked);
         }
      }
      
      public function clicked(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var emblemn:String = null;
         var fileFilter:FileFilter = null;
         var e:MouseEvent = param1;
         var n:String = e.target.name;
         if(!_loc4_)
         {
            if(root.q.Loading)
            {
               return;
            }
            §§push(n);
            if(!_loc4_)
            {
               §§push("closebtn");
               if(!_loc4_)
               {
                  if(§§pop() == §§pop())
                  {
                     this.close();
                  }
                  else
                  {
                     §§push(n);
                     if(_loc3_)
                     {
                        §§push("createbtn");
                        if(_loc3_)
                        {
                           addr66:
                           if(§§pop() == §§pop())
                           {
                              if(!_loc4_)
                              {
                                 if(this.guildname.text.length < 3)
                                 {
                                    return;
                                 }
                                 this.guildname.text = root.q.capitalize(this.guildname.text);
                                 if(root.client.payVault.coins < 50)
                                 {
                                    return;
                                 }
                                 root.q.loading("");
                                 emblemn = String(this.emblem.currentFrame);
                                 if(this.file !== null)
                                 {
                                    emblemn = Math.round(Math.random() * 9999) + this.guildname.text + this.file.name;
                                 }
                                 root.createGuild(this.guildname.text,emblemn,function():void
                                 {
                                    close();
                                 });
                                 §§goto(addr302);
                              }
                              else
                              {
                                 addr172:
                                 this.emblemo = null;
                                 this.filetxt.text = root.getTxt("NoFile");
                                 this.file = null;
                                 if(!_loc4_)
                                 {
                                    addr187:
                                    this.emblem.raster();
                                    if(_loc4_)
                                    {
                                       addr259:
                                    }
                                 }
                                 §§goto(addr302);
                              }
                              §§goto(addr302);
                           }
                           else
                           {
                              §§push(n);
                              if(!_loc4_)
                              {
                                 addr139:
                                 §§push("nxtbtn");
                                 if(_loc3_)
                                 {
                                    addr150:
                                    if(§§pop() == §§pop())
                                    {
                                       this.emblem.gotoAndStop((this.emblem.currentFrame + 1) % this.emblem.totalFrames);
                                       if(this.emblemo)
                                       {
                                          if(_loc3_)
                                          {
                                             removeChild(this.emblemo);
                                             §§goto(addr172);
                                          }
                                          else
                                          {
                                             addr241:
                                             this.emblemo = null;
                                             this.filetxt.text = root.getTxt("NoFile");
                                             this.file = null;
                                             if(_loc3_)
                                             {
                                                addr256:
                                                this.emblem.raster();
                                                §§goto(addr259);
                                             }
                                             §§goto(addr302);
                                          }
                                       }
                                       §§goto(addr187);
                                    }
                                    else
                                    {
                                       §§push(n);
                                       if(!_loc4_)
                                       {
                                          §§push("prvbtn");
                                          if(!_loc4_)
                                          {
                                             addr201:
                                             if(§§pop() == §§pop())
                                             {
                                                if(this.emblem.currentFrame == 1)
                                                {
                                                   this.emblem.gotoAndStop(this.emblem.totalFrames);
                                                   if(_loc3_)
                                                   {
                                                      addr232:
                                                      if(this.emblemo)
                                                      {
                                                         removeChild(this.emblemo);
                                                         if(_loc3_)
                                                         {
                                                            §§goto(addr241);
                                                         }
                                                         §§goto(addr259);
                                                      }
                                                      §§goto(addr256);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(this.emblem);
                                                   §§push(this.emblem.currentFrame - 1);
                                                   if(_loc3_)
                                                   {
                                                      §§push(§§pop() % this.emblem.totalFrames);
                                                   }
                                                   §§pop().gotoAndStop(§§pop());
                                                   if(!_loc4_)
                                                   {
                                                      §§goto(addr232);
                                                   }
                                                }
                                                §§goto(addr302);
                                                this.file.addEventListener(Event.SELECT,this.onFileUploadSelect);
                                                §§goto(addr302);
                                             }
                                             else
                                             {
                                                addr262:
                                                §§push(n);
                                                §§push("choosefile");
                                             }
                                             §§goto(addr302);
                                          }
                                          if(§§pop() == §§pop())
                                          {
                                             if(_loc4_)
                                             {
                                             }
                                             §§goto(addr267);
                                          }
                                          §§goto(addr302);
                                       }
                                       §§goto(addr262);
                                    }
                                 }
                                 §§goto(addr201);
                              }
                              §§goto(addr262);
                           }
                        }
                        §§goto(addr150);
                     }
                     §§goto(addr139);
                  }
                  addr302:
                  return;
               }
               §§goto(addr66);
            }
            §§goto(addr139);
         }
         §§goto(addr172);
      }
      
      public function onFileUploadSelect(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.file.removeEventListener(Event.SELECT,this.onFileUploadSelect);
            if(_loc2_)
            {
               addr34:
               this.file.addEventListener(Event.COMPLETE,this.onFileLoaded);
               if(_loc2_)
               {
                  this.file.load();
               }
            }
            return;
         }
         §§goto(addr34);
      }
      
      public function onFileLoaded(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.file.removeEventListener(Event.COMPLETE,this.onFileLoaded);
            if(!_loc2_)
            {
               §§goto(addr35);
            }
            §§goto(addr54);
         }
         addr35:
         if(this.file.size > 80000)
         {
            if(!_loc2_)
            {
               this.filetxt.text = "File too big";
               addr54:
               this.file = null;
               if(_loc2_)
               {
                  §§goto(addr74);
               }
            }
            return;
         }
         this.movieClipLoader.loadBytes(this.file.data);
         this.movieClipLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onMovieClipLoaderComplete);
         addr74:
      }
      
      public function onMovieClipLoaderComplete(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:DisplayObject = param1.target.content;
         var _loc3_:Loader = param1.target.loader as Loader;
         if(_loc5_)
         {
            if(this.emblemo)
            {
               removeChild(this.emblemo);
            }
         }
         this.emblemo = this.formEmblem(_loc2_);
         addChildAt(this.emblemo,getChildIndex(this.emblem) + 1);
         this.emblemo.x = this.emblem.x;
         if(_loc5_)
         {
            this.emblemo.y = this.emblem.y;
            if(!_loc4_)
            {
               addr84:
               this.filetxt.text = this.file.name;
            }
            return;
         }
         §§goto(addr84);
      }
      
      public function formEmblem(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1.width === 130);
            if(!_loc3_)
            {
               §§push(!§§pop());
               if(!_loc3_)
               {
                  if(!§§pop())
                  {
                     if(_loc2_)
                     {
                        §§pop();
                        if(_loc2_)
                        {
                           §§push(param1.height === 130);
                           if(_loc2_)
                           {
                              addr58:
                              if(!§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    param1.scaleX = 130 / param1.width;
                                    if(!_loc3_)
                                    {
                                       addr71:
                                       param1.scaleY = 130 / param1.height;
                                    }
                                 }
                              }
                           }
                           §§goto(addr58);
                        }
                        return param1;
                     }
                  }
               }
            }
            §§goto(addr58);
         }
         §§goto(addr71);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.guildname.restrict = "a-zA-z žčņāšģķļēūī";
         if(_loc1_)
         {
            this.emblem.raster();
            this.movieClipLoader = new Loader();
            addEventListener(MouseEvent.CLICK,this.clicked);
            root.getTxt("Name",this.guildname);
            this.guildname.text = "";
            this.bg.titletxt.text = root.getTxt("Guild Creation",this.bg.titletxt);
            this.bg.namelabel.text = root.getTxt("Enter name",this.bg.namelabel) + ":";
            if(_loc1_)
            {
               this.bg.symbolsmaxtxt.text = root.getTxt("SymbolsMax",this.bg.symbolsmaxtxt);
            }
            this.bg.ownemblem.text = root.getTxt("OwnEmblem",this.bg.ownemblem);
            this.bg.ownimage.text = root.getTxt("UploadImage",this.bg.ownimage);
            this.bg.chooseemblem.text = root.getTxt("ChooseEmblem",this.bg.chooseemblem);
            if(_loc1_)
            {
               addr125:
               root.translateButtons(this);
               root.q.raster(this.bg);
            }
            return;
         }
         §§goto(addr125);
      }
   }
}
