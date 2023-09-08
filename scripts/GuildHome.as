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
   import playerio.Client;
   import playerio.DatabaseObject;
   
   public dynamic class GuildHome extends MovieClip
   {
       
      
      public var newstxt:TextField;
      
      public var membersbtn:SimpleButton;
      
      public var losetxt:TextField;
      
      public var statusbtn:SimpleButton;
      
      public var victorytxt:TextField;
      
      public var bg:MovieClip;
      
      public var xptxt:TextField;
      
      public var closebtn:Close;
      
      public var lvltxt:TextField;
      
      public var bar:MovieClip;
      
      public var guildname:TextField;
      
      public var emblem:Emblem;
      
      public var o:DatabaseObject;
      
      public var news:String;
      
      public var GuildLevel:Object;
      
      public var victories:int;
      
      public var loses:int;
      
      public var l:TextField;
      
      public var c:Client;
      
      public function GuildHome()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               addFrameScript(0,this.frame1);
            }
         }
      }
      
      public function displayEmblem(param1:DatabaseObject) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var imageLoader:Loader = null;
         if(_loc4_)
         {
            var completed:* = undefined;
            if(!_loc3_)
            {
               var oge:DatabaseObject = param1;
               completed = function(param1:Event):void
               {
                  var _loc3_:Boolean = true;
                  var _loc4_:Boolean = false;
                  trace("Completed emblem load");
                  if(!_loc4_)
                  {
                     imageLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,completed);
                     if(!_loc4_)
                     {
                        addr17:
                        imageLoader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,ioerror);
                     }
                     var _loc2_:Bitmap = imageLoader.content as Bitmap;
                     if(_loc3_)
                     {
                        emblem.addChild(_loc2_);
                        if(_loc3_)
                        {
                           addr38:
                           _loc2_.scaleX = 130 / _loc2_.width;
                           if(_loc3_)
                           {
                              _loc2_.scaleY = 130 / _loc2_.height;
                              if(_loc3_)
                              {
                                 addr56:
                                 emblem.visible = true;
                              }
                              return;
                           }
                        }
                        §§goto(addr56);
                     }
                     §§goto(addr38);
                  }
                  §§goto(addr17);
               };
               if(_loc4_)
               {
                  imageLoader = new Loader();
                  imageLoader.loadBytes(oge.EmblemData);
                  if(_loc3_)
                  {
                  }
                  §§goto(addr90);
               }
               imageLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,completed);
               if(_loc3_)
               {
               }
               §§goto(addr90);
            }
            imageLoader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.ioerror);
         }
         addr90:
      }
      
      public function ioerror(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            trace(String(param1));
            if(_loc3_)
            {
               imageLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,completed);
               if(!_loc2_)
               {
                  addr40:
                  imageLoader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.ioerror);
               }
            }
            return;
         }
         §§goto(addr40);
      }
      
      public function clicked(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:String = param1.target.name;
         §§push(_loc2_);
         if(_loc4_)
         {
            §§push("closebtn");
            if(!_loc3_)
            {
               if(§§pop() == §§pop())
               {
                  if(!_loc3_)
                  {
                     this.close();
                  }
                  else
                  {
                     addr46:
                     root.guildmc.o = this.o;
                     root.guildmc.x = x;
                     root.guildmc.y = y;
                     if(!_loc3_)
                     {
                        root.addChildAt(root.guildmc,root.getChildIndex(this));
                        this.clear();
                        root.q.remove(this);
                     }
                     else
                     {
                        addr124:
                        this.clear();
                        root.q.remove(this);
                     }
                  }
               }
               else
               {
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     §§push("membersbtn");
                     if(!_loc3_)
                     {
                        addr39:
                        if(§§pop() == §§pop())
                        {
                           root.guildmc = new GuildMembers() as MovieClip;
                           §§goto(addr46);
                        }
                        else
                        {
                           addr83:
                           §§push(_loc2_);
                           §§push("statusbtn");
                        }
                        §§goto(addr130);
                     }
                     if(§§pop() == §§pop())
                     {
                        root.guildmc = new GuildStatus() as MovieClip;
                        if(!_loc3_)
                        {
                           root.guildmc.o = this.o;
                           root.guildmc.x = x;
                           root.guildmc.y = y;
                           root.addChildAt(root.guildmc,root.getChildIndex(this));
                           if(_loc4_)
                           {
                              §§goto(addr124);
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr124);
                     }
                  }
                  §§goto(addr83);
               }
               addr130:
               return;
            }
            §§goto(addr39);
         }
         §§goto(addr83);
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.clear();
            if(!_loc2_)
            {
               root.guildmc = null;
               if(!_loc2_)
               {
                  addr27:
                  root.q.removeChildFade(this);
               }
            }
            return;
         }
         §§goto(addr27);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            removeEventListener(MouseEvent.CLICK,this.clicked);
            if(_loc2_)
            {
               addr34:
               if(this.newstxt.text !== this.news)
               {
                  if(!_loc1_)
                  {
                     root.getC().send("GuildNews",this.newstxt.text);
                  }
               }
            }
            return;
         }
         §§goto(addr34);
      }
      
      function frame1() : *
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         root.translateButtons(this);
         if(_loc2_)
         {
            this.bg.titletxt.text = root.getTxt("Guild",this.bg.titletxt);
            this.bg.newslabel.text = root.getTxt("Latest news",this.bg.newslabel);
            if(!_loc3_)
            {
               root.q.raster(this.bg);
               §§push("GuildRank");
               if(_loc2_)
               {
                  §§push(!(§§pop() in root.pChar));
                  if(!!(§§pop() in root.pChar))
                  {
                     §§pop();
                     if(!_loc3_)
                     {
                        §§push(root.pChar.GuildRank === "Leader");
                        if(!_loc3_)
                        {
                           addr73:
                           if(!§§pop())
                           {
                              this.newstxt.type = "dynamic";
                              if(_loc2_)
                              {
                                 this.newstxt.selectable = false;
                                 addr85:
                                 this.newstxt.text = this.o.News;
                                 this.guildname.text = this.o.key;
                                 this.news = this.newstxt.text;
                                 if(!_loc3_)
                                 {
                                    this.GuildLevel = root.calcGuildLvl(this.o.XP);
                                    this.victories = 0;
                                    if(_loc2_)
                                    {
                                       addr117:
                                       this.loses = 0;
                                       §§push("Victories");
                                       if(_loc2_)
                                       {
                                          addr124:
                                          §§push(§§pop() in this.o);
                                          if(_loc2_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc2_)
                                                {
                                                   this.victories = this.o.Victories;
                                                   addr138:
                                                   if("Loses" in this.o)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         this.loses = this.o.Loses;
                                                         if(_loc2_)
                                                         {
                                                            addr161:
                                                            this.victorytxt.text = root.getTxt("Victories",this.victorytxt) + ": " + this.victories + ".";
                                                            if(_loc2_)
                                                            {
                                                               this.losetxt.text = root.getTxt("Losses",this.losetxt) + ": " + this.loses + ".";
                                                               if(!_loc3_)
                                                               {
                                                                  this.lvltxt.text = root.getTxt("Level",this.lvltxt) + " " + this.GuildLevel.Level;
                                                                  addr210:
                                                                  this.xptxt.text = root.getTxt("Total",this.xptxt) + " EXP : " + this.o.XP;
                                                                  this.bar.bar.scaleX = this.GuildLevel.Percent;
                                                                  this.emblem.visible = false;
                                                               }
                                                               if(this.o.Emblem.indexOf(".") < 0)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     this.emblem.gotoAndStop(int(this.o.Emblem));
                                                                     addr253:
                                                                     this.emblem.visible = true;
                                                                     if(_loc2_)
                                                                     {
                                                                        this.emblem.raster();
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr311:
                                                                           addEventListener(MouseEvent.CLICK,this.clicked);
                                                                           addr266:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr301:
                                                                           §§goto(addr311);
                                                                        }
                                                                        §§goto(addr311);
                                                                     }
                                                                     §§goto(addr301);
                                                                  }
                                                                  else
                                                                  {
                                                                     this.c.bigDB.load("GuildEmblems",this.o.key,function(param1:DatabaseObject):void
                                                                     {
                                                                        var _loc2_:Boolean = false;
                                                                        var _loc3_:Boolean = true;
                                                                        displayEmblem(param1);
                                                                        if(!_loc2_)
                                                                        {
                                                                           root[o.key + "EmblemO"] = param1;
                                                                        }
                                                                     });
                                                                     addr282:
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§goto(addr301);
                                                                     }
                                                                  }
                                                                  return;
                                                               }
                                                               this.c = root.client;
                                                               if(_loc2_)
                                                               {
                                                                  if(!root[this.o.key + "EmblemO"])
                                                                  {
                                                                     §§goto(addr282);
                                                                  }
                                                                  else
                                                                  {
                                                                     this.displayEmblem(root[this.o.key + "EmblemO"]);
                                                                     §§goto(addr311);
                                                                  }
                                                               }
                                                               §§goto(addr311);
                                                               §§goto(addr311);
                                                            }
                                                            §§goto(addr301);
                                                         }
                                                         §§goto(addr210);
                                                      }
                                                      §§goto(addr266);
                                                   }
                                                   §§goto(addr161);
                                                }
                                                §§goto(addr301);
                                             }
                                          }
                                       }
                                       §§goto(addr138);
                                    }
                                    §§goto(addr311);
                                 }
                                 §§goto(addr253);
                              }
                              §§goto(addr161);
                           }
                           §§goto(addr85);
                        }
                        §§goto(addr138);
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr73);
               }
               §§goto(addr124);
            }
            §§goto(addr85);
         }
         §§goto(addr311);
      }
   }
}
