package
{
   import Esgrima2_fla.*;
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
   
   public dynamic class GuildWarDeclare extends MovieClip
   {
       
      
      public var listmc:MovieClip;
      
      public var noguilds:TextField;
      
      public var guildtxt:TextField;
      
      public var maskmc1:MovieClip;
      
      public var leadertxt:TextField;
      
      public var bg:MovieClip;
      
      public var closebtn:Close;
      
      public var lvltxt:TextField;
      
      public var maskmc12:MovieClip;
      
      public var bg2:MovieClip;
      
      public var emblemmc:Emblem;
      
      public var c:Client;
      
      public function GuildWarDeclare()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(_loc2_)
            {
               addFrameScript(0,this.frame1);
            }
         }
      }
      
      public function clicked(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var e:MouseEvent = param1;
         §§push(e.target is MovieClip);
         if(_loc4_)
         {
            if(§§pop())
            {
               if(_loc4_)
               {
                  §§goto(addr36);
               }
            }
            §§goto(addr45);
         }
         addr36:
         §§pop();
         §§push(Boolean(e.target.guildselect));
         if(_loc4_)
         {
            addr45:
            if(§§pop())
            {
               if(_loc4_)
               {
                  if(e.target.o.Emblem.indexOf(".") >= 0)
                  {
                     var displayEmblem:* = function(param1:DatabaseObject):void
                     {
                        var _loc3_:Boolean = true;
                        var _loc4_:Boolean = false;
                        if(_loc3_)
                        {
                           var emblemload:Loader = null;
                           var loaded:* = undefined;
                        }
                        var o:DatabaseObject = param1;
                        loaded = function(param1:Event):void
                        {
                           var _loc4_:Boolean = false;
                           var _loc5_:Boolean = true;
                           emblemload.removeEventListener(Event.COMPLETE,loaded);
                           if(!_loc4_)
                           {
                              if(emblemmc.b)
                              {
                                 if(!_loc4_)
                                 {
                                    addr18:
                                    emblemmc.removeChild(emblemmc.b);
                                    if(!_loc5_)
                                    {
                                    }
                                    §§goto(addr28);
                                 }
                                 emblemmc.b.bitmapData.dispose();
                              }
                              addr28:
                              var _loc2_:Bitmap = emblemmc.b = emblemload.content as Bitmap;
                              if(!_loc4_)
                              {
                                 _loc2_.scaleX = 130 / _loc2_.width;
                                 if(!_loc4_)
                                 {
                                    §§goto(addr51);
                                 }
                                 §§goto(addr59);
                              }
                              addr51:
                              _loc2_.scaleY = 130 / _loc2_.height;
                              if(!_loc4_)
                              {
                                 addr59:
                                 emblemmc.addChild(_loc2_);
                              }
                              return;
                           }
                           §§goto(addr18);
                        };
                        emblemload = new Loader();
                        if(!_loc4_)
                        {
                           emblemload.loadBytes(o.EmblemData);
                           emblemload.addEventListener(Event.COMPLETE,loaded);
                        }
                     };
                     addr62:
                     if(!root[e.target.o.key + "EmblemO"])
                     {
                        if(_loc4_)
                        {
                           this.c.bigDB.load("GuildEmblems",e.target.o.key,function(param1:DatabaseObject):void
                           {
                              var _loc2_:Boolean = false;
                              var _loc3_:Boolean = true;
                              displayEmblem(param1);
                              if(_loc3_)
                              {
                                 root[e.target.o.key + "EmblemO"] = param1;
                              }
                           });
                        }
                     }
                     else
                     {
                        displayEmblem(root[e.target.o.key + "EmblemO"]);
                     }
                  }
                  else
                  {
                     this.emblemmc.gotoAndStop(e.target.o.Emblem);
                     this.emblemmc.raster();
                  }
                  this.guildtxt.text = e.target.o.key;
                  §§goto(addr134);
               }
               §§goto(addr62);
            }
            else if(e.target.name == "closebtn")
            {
               §§goto(addr193);
            }
            §§goto(addr193);
         }
         addr134:
         if("Leader" in e.target.o)
         {
            if(_loc4_)
            {
               this.leadertxt.text = root.getTxt("Leader",this.leadertxt) + ": " + e.target.o.Leader;
            }
            else
            {
               addr193:
               this.close();
               §§goto(addr195);
            }
            §§goto(addr195);
         }
         this.lvltxt.text = root.getTxt("Level",this.lvltxt) + " " + root.calcGuildLvl(e.target.o.XP).Level;
         this.maskmc1.x = 0;
         if(!_loc3_)
         {
            §§goto(addr195);
         }
         addr195:
      }
      
      public function dclicked(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var guild:String = null;
         var e:MouseEvent = param1;
         trace("Double click");
         if(!_loc4_)
         {
            §§push(e.target is MovieClip);
            if(!_loc4_)
            {
               §§push(!§§pop());
               if(_loc3_)
               {
                  addr43:
                  if(!§§pop())
                  {
                     if(_loc3_)
                     {
                        §§pop();
                        §§goto(addr56);
                     }
                  }
               }
               if(§§pop())
               {
                  §§goto(addr56);
               }
               else
               {
                  guild = e.target.o.key;
                  if(!_loc4_)
                  {
                     var m:MovieClip = new Confirm() as MovieClip;
                  }
                  m.txt = "Do you want to declare war on the guild " + guild + "?";
                  if(!_loc4_)
                  {
                     m.title = "War Declaration";
                     root.addChildAt(m,root.getChildIndex(root.mouse));
                  }
                  root.q.fadeIn(m);
                  if(!_loc4_)
                  {
                     m.x = stage.stageWidth / 2;
                     if(!_loc4_)
                     {
                        m.y = stage.stageHeight / 2;
                        if(_loc3_)
                        {
                           m.confirmation = function():void
                           {
                              var _loc1_:Boolean = true;
                              var _loc2_:Boolean = false;
                              root.getC().send("DeclareWar",guild);
                              if(_loc1_)
                              {
                                 close();
                              }
                           };
                        }
                     }
                  }
                  return;
               }
            }
            §§goto(addr43);
         }
         addr56:
         if(!_loc4_)
         {
            §§push(!e.target.guildselect);
         }
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.clear();
            if(!_loc1_)
            {
               root.q.removeChildFade(this);
               if(!_loc1_)
               {
                  addr29:
                  root.guildwarmc = null;
               }
               return;
            }
         }
         §§goto(addr29);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            removeEventListener(MouseEvent.CLICK,this.clicked);
            if(!_loc2_)
            {
               addr27:
               removeEventListener(MouseEvent.DOUBLE_CLICK,this.dclicked);
            }
            return;
         }
         §§goto(addr27);
      }
      
      function frame1() : *
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.noguilds.visible = false;
            this.c = root.client;
            if(_loc3_)
            {
               addr33:
               this.maskmc1.visible = false;
               noguild.text = root.getTxt("NoGuilds",noguild);
            }
            this.c.bigDB.loadRange("Guilds","Status",["Military Active"],null,null,1000,function(param1:Array):void
            {
               var _loc6_:Boolean = true;
               var _loc7_:Boolean = false;
               var _loc4_:DatabaseObject = null;
               var _loc5_:MovieClip = null;
               var _loc2_:* = int(param1.length);
               var _loc3_:* = 0;
               if(!_loc7_)
               {
                  while(true)
                  {
                     §§push(_loc3_);
                     if(!_loc7_)
                     {
                        §§push(_loc2_);
                        if(_loc6_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              §§goto(addr119);
                           }
                           if((_loc4_ = param1[_loc3_]).key == root.pChar.Guild)
                           {
                              if(_loc6_)
                              {
                                 param1.splice(_loc3_,1);
                                 if(!_loc7_)
                                 {
                                    addr39:
                                    §§push(_loc3_);
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() - 1);
                                       if(_loc6_)
                                       {
                                          _loc3_ = §§pop();
                                          if(!_loc6_)
                                          {
                                             continue;
                                          }
                                          addr51:
                                          §§push(_loc2_);
                                          if(!_loc7_)
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                       }
                                    }
                                    _loc2_ = §§pop();
                                    if(!_loc7_)
                                    {
                                       addr100:
                                       _loc3_++;
                                    }
                                    continue;
                                 }
                                 §§goto(addr51);
                              }
                              §§goto(addr39);
                           }
                           else
                           {
                              (_loc5_ = new GuildSelect() as MovieClip).mouseChildren = false;
                              _loc5_.doubleClickEnabled = true;
                              if(_loc6_)
                              {
                                 listmc.addChild(_loc5_);
                                 _loc5_.o = _loc4_;
                                 _loc5_.guildselect = true;
                                 if(!_loc7_)
                                 {
                                    addr87:
                                    _loc5_.y = _loc3_ * (_loc5_.height + 10);
                                 }
                                 _loc5_.nametxt.text = _loc4_.key;
                                 §§goto(addr100);
                              }
                              §§goto(addr87);
                           }
                        }
                        §§goto(addr113);
                     }
                     break;
                  }
                  addr113:
                  if(§§pop() <= §§pop())
                  {
                     if(_loc6_)
                     {
                        noguilds.visible = true;
                     }
                  }
                  addr119:
                  if(_loc6_)
                  {
                     addr111:
                     §§push(_loc2_);
                     break loop0;
                  }
                  return;
                  §§push(0);
               }
               §§goto(addr111);
            });
            addEventListener(MouseEvent.CLICK,this.clicked);
            if(!_loc2_)
            {
               doubleClickEnabled = true;
               addEventListener(MouseEvent.DOUBLE_CLICK,this.dclicked);
               if(!_loc2_)
               {
                  this.bg.selectguildtxt.text = root.getTxt("Select Guild",this.bg.selectguildtxt);
                  addr99:
                  root.q.raster(this.bg);
               }
               root.q.raster(this.bg2);
               return;
            }
            §§goto(addr99);
         }
         §§goto(addr33);
      }
   }
}
