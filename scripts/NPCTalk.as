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
   import fr.kouma.display.*;
   import playerio.*;
   
   public dynamic class NPCTalk extends MovieClip
   {
       
      
      public var txt:TextField;
      
      public var bg:MovieClip;
      
      public var npcmc:MovieClip;
      
      public var closing:Boolean;
      
      public var npc:String;
      
      public var nr:RegExp;
      
      public var dialog:String;
      
      public var dialogv:Vector.<String>;
      
      public var dialogid:int;
      
      public var url:URLRequest;
      
      public var loader:Loader;
      
      public var formatted:Boolean;
      
      public var o:Object;
      
      public var n:int;
      
      public var btnx:int;
      
      public var iuse:int;
      
      public var i:int;
      
      public var btnn:String;
      
      public var quest:String;
      
      public var n2:int;
      
      public var active:Boolean;
      
      public var i2:int;
      
      public var qu:String;
      
      public var qusplit:String;
      
      public var a:String;
      
      public var done:String;
      
      public var C:Class;
      
      public var btn:SimpleButton;
      
      public var inity:int;
      
      public var tf:TextFormat;
      
      public var btny:int;
      
      public function NPCTalk()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(!_loc1_)
            {
               addFrameScript(0,this.frame1);
            }
         }
      }
      
      public function close(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         this.closing = true;
         MovieClip(root).npctalk = null;
         §§push(this.npc);
         if(_loc3_)
         {
            §§push("Tutorial Master");
            if(!_loc4_)
            {
               §§push(§§pop() == §§pop());
               §§push(§§pop() == §§pop());
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     §§push(this.dialog);
                     if(!_loc4_)
                     {
                        §§push("Dialog1");
                        if(!_loc4_)
                        {
                           addr46:
                           if(§§pop() == §§pop())
                           {
                              if(_loc3_)
                              {
                                 root[this.npc.split(" ").join("_") + "_arr"] = root.maphelp = root.addChildAt(new MapHelp() as MovieClip,root.getChildIndex(root.mouse));
                                 root[this.npc.split(" ").join("_") + "_arr"].rotation = 180;
                                 addr94:
                                 §§push(this.dialog);
                                 if(!_loc4_)
                                 {
                                    addr99:
                                    §§push(§§pop() === null);
                                    if(!_loc4_)
                                    {
                                       addr106:
                                       §§push(!§§pop() && this.dialog + "F" in this.o);
                                    }
                                    if(§§pop())
                                    {
                                       this.o[this.dialog + "F"]();
                                       addr116:
                                    }
                                    this.clear();
                                    if(param1)
                                    {
                                       MovieClip(root).q.removeChildFade(this);
                                       if(!_loc4_)
                                       {
                                          addr149:
                                          if(!param1)
                                          {
                                             root.q.remove(this);
                                          }
                                       }
                                       return;
                                    }
                                    §§goto(addr149);
                                 }
                                 §§goto(addr110);
                              }
                              §§goto(addr116);
                           }
                           §§goto(addr94);
                        }
                     }
                     §§goto(addr110);
                  }
                  §§goto(addr46);
               }
               §§goto(addr106);
            }
            §§goto(addr110);
         }
         §§goto(addr99);
      }
      
      public function closeb(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.close();
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            removeEventListener(MouseEvent.CLICK,this.btnclick);
         }
      }
      
      public function compelted(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Bitmap = null;
         this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.compelted);
         if(this.stage !== null)
         {
            if(this.loader.content.a)
            {
               if(!_loc3_)
               {
                  this.npcmc.addChild(this.loader.content.a.getChildAt(0));
                  if(_loc4_)
                  {
                     addr74:
                     _loc2_ = MovieClip(root).q.raster(this.npcmc);
                     if(_loc4_)
                     {
                        root.q.fadeIn(_loc2_);
                        addr90:
                        this.loader.unloadAndStop();
                     }
                     §§goto(addr90);
                     addr57:
                  }
                  this.loader = null;
                  §§goto(addr96);
               }
               §§goto(addr57);
            }
            else
            {
               this.npcmc.addChild(this.loader.content);
               if(!_loc3_)
               {
                  §§goto(addr74);
               }
            }
            addr96:
            return;
         }
         §§goto(addr90);
      }
      
      public function btnclick(param1:MouseEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var quest:String = null;
         var active:Boolean = false;
         if(!_loc5_)
         {
            var i:int = 0;
            if(_loc6_)
            {
               var qu:String = null;
               if(_loc6_)
               {
                  var qusplit:String = null;
                  if(!_loc5_)
                  {
                     var a:String = null;
                     if(!_loc5_)
                     {
                        var done:String = null;
                        var bn:int = 0;
                        if(_loc6_)
                        {
                           var DateTime:Date = null;
                           var Now:Date = null;
                           var m:MovieClip = null;
                           if(_loc6_)
                           {
                              addr79:
                              var e:MouseEvent = param1;
                              if(!_loc5_)
                              {
                                 §§push(this.closing);
                                 if(_loc6_)
                                 {
                                    if(§§pop())
                                    {
                                       return;
                                    }
                                    var n:String = e.target.name;
                                    if(_loc6_)
                                    {
                                       §§push(e.target is SimpleButton);
                                       if(!_loc5_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc6_)
                                             {
                                                if(n == "Quest")
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      addr118:
                                                      n = this.o.Quests.length;
                                                      if(_loc6_)
                                                      {
                                                         active = false;
                                                         if(_loc6_)
                                                         {
                                                            addr134:
                                                            i = 0;
                                                            while(true)
                                                            {
                                                               if(i >= n)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  qu = this.o.Quests[i];
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     §§push(qu);
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(§§pop().split("(")[0].split(")")[0]);
                                                                     }
                                                                     §§pop().§§slot[7] = §§pop();
                                                                     a = MovieClip(root).q.arrayContainsSplit(MovieClip(root).pChar.Quests.Active,qusplit,"*");
                                                                     if(_loc6_)
                                                                     {
                                                                        done = MovieClip(root).q.arrayContainsSplit(MovieClip(root).pChar.Quests.Done,qusplit);
                                                                        §§push(done);
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push("false");
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(§§pop() != §§pop())
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              addr215:
                                                                              §§push(a);
                                                                              §§push("false");
                                                                           }
                                                                           if(§§pop() !== §§pop())
                                                                           {
                                                                              §§push(§§newactivation());
                                                                              §§push(a);
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                              }
                                                                              §§pop().§§slot[3] = §§pop();
                                                                              if(!_loc5_)
                                                                              {
                                                                                 active = true;
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    addr234:
                                                                                 }
                                                                                 §§goto(addr792);
                                                                              }
                                                                              addr790:
                                                                              this.close();
                                                                              addr792:
                                                                              return;
                                                                              addr269:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(§§newactivation());
                                                                              §§push(qusplit);
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                              }
                                                                              §§pop().§§slot[3] = §§pop();
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr215);
                                                                     }
                                                                     §§goto(addr269);
                                                                  }
                                                                  §§goto(addr234);
                                                               }
                                                               §§goto(addr790);
                                                            }
                                                            MovieClip(root).questTalk(quest,active,this.npc);
                                                            §§goto(addr790);
                                                         }
                                                         else
                                                         {
                                                            addr560:
                                                            root.addChildAt(m,root.getChildIndex(root.mouse));
                                                            if(!_loc5_)
                                                            {
                                                               addr571:
                                                               if(root.pChar.Money >= root.dailyBossPrice[bn])
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§goto(addr723);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  m.confirmation = function():void
                                                                  {
                                                                     root.q.addChatTxt(root.chattxt,root.getTxt("NotEnoughMoney"),"Public",16711680);
                                                                  };
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr595:
                                                                     m.txt = root.getTxt("DailyBossFee").replace("{Name}",root.dailyBossN[bn]).replace("{Money}",root.q.comma(root.dailyBossPrice[bn]));
                                                                     m.title = "Daily Boss";
                                                                  }
                                                                  else
                                                                  {
                                                                     addr752:
                                                                     root.addChildAt(root.warehousemc,root.getChildIndex(root.mouse));
                                                                     root.q.fadeIn(root.warehousemc);
                                                                     addr772:
                                                                  }
                                                                  §§goto(addr790);
                                                               }
                                                               §§goto(addr595);
                                                            }
                                                            m.confirmation = function():void
                                                            {
                                                               m.root.createInstance("Daily Boss Fight" + (bn + 1));
                                                            };
                                                         }
                                                         §§goto(addr595);
                                                      }
                                                      §§goto(addr571);
                                                   }
                                                   else
                                                   {
                                                      addr305:
                                                      this.displaydialog();
                                                      if(_loc6_)
                                                      {
                                                         return;
                                                      }
                                                      addr477:
                                                      trace(Now.valueOf() - DateTime.valueOf());
                                                      if(Now.valueOf() - DateTime.valueOf() < 86400000)
                                                      {
                                                         addr495:
                                                         DateTime = root.account.DB;
                                                         var _loc3_:*;
                                                         var _loc4_:* = (_loc3_ = DateTime).date + 1;
                                                         if(!_loc5_)
                                                         {
                                                            _loc3_.date = _loc4_;
                                                         }
                                                         root.q.addChatTxt(root.chattxt,root.getTxt("DailyBossAvailable") + " " + DateTime.toString() + ".","Public",16776960);
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr535);
                                                         }
                                                         else
                                                         {
                                                            addr630:
                                                            if("Guild" in root.pChar)
                                                            {
                                                               return;
                                                            }
                                                            root.openguildcreate();
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr550:
                                                         m = new Confirm() as MovieClip;
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr560);
                                                         }
                                                         §§goto(addr772);
                                                      }
                                                   }
                                                   §§goto(addr772);
                                                }
                                                else
                                                {
                                                   §§push(n);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(§§pop() == "End");
                                                      if(_loc6_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§goto(addr282);
                                                         }
                                                         §§goto(addr296);
                                                      }
                                                      §§goto(addr282);
                                                   }
                                                   §§goto(addr339);
                                                }
                                             }
                                             §§goto(addr333);
                                          }
                                          §§goto(addr792);
                                       }
                                       addr282:
                                       §§pop();
                                       if(!_loc5_)
                                       {
                                          §§push(this.dialog + "F");
                                          if(!_loc5_)
                                          {
                                             addr296:
                                             if(§§pop() in this.o)
                                             {
                                                §§goto(addr790);
                                             }
                                             else
                                             {
                                                §§push(n);
                                                §§push("Next");
                                                if(!_loc5_)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      §§goto(addr305);
                                                   }
                                                   else
                                                   {
                                                      §§push(n);
                                                      if(_loc6_)
                                                      {
                                                         if(§§pop() == "Shop")
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               MovieClip(root).shop(this.o.ShopType,this.o.ShopID);
                                                               §§goto(addr790);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr495);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            if(n == "Craft")
                                                            {
                                                               addr333:
                                                               root.opencraft();
                                                               §§goto(addr790);
                                                            }
                                                            else
                                                            {
                                                               addr339:
                                                               if(n == "Enchant")
                                                               {
                                                                  root.openenchant();
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr415:
                                                                     DateTime = root.account.DB;
                                                                     DateTime = new Date(DateTime.fullYearUTC,DateTime.monthUTC,DateTime.dateUTC,DateTime.hoursUTC,DateTime.minutesUTC,DateTime.secondsUTC,DateTime.millisecondsUTC);
                                                                     addr447:
                                                                     trace(root.account.DB);
                                                                     trace(Now.day);
                                                                     if(_loc6_)
                                                                     {
                                                                        addr459:
                                                                        trace(DateTime.day);
                                                                        trace(Now.hours);
                                                                        if(_loc6_)
                                                                        {
                                                                           trace(DateTime.hours);
                                                                           §§goto(addr477);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr660:
                                                                           m = new Confirm() as MovieClip;
                                                                           if(_loc6_)
                                                                           {
                                                                              root.addChildAt(m,root.getChildIndex(root.mouse));
                                                                              if(!_loc5_)
                                                                              {
                                                                                 m.title = root.getTxt("Disband guild",m.bg.titletxt);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    m.txt = root.getTxt("GuildDisband",m.titletxt);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       addr706:
                                                                                       m.confirmation = function():void
                                                                                       {
                                                                                          var _loc1_:Boolean = true;
                                                                                          var _loc2_:Boolean = false;
                                                                                          m.root.disbandguild();
                                                                                          if(_loc1_)
                                                                                          {
                                                                                             m = null;
                                                                                          }
                                                                                       };
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr790);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr752);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr752);
                                                                              }
                                                                              §§goto(addr790);
                                                                           }
                                                                        }
                                                                        §§goto(addr723);
                                                                     }
                                                                  }
                                                                  §§goto(addr790);
                                                               }
                                                               else
                                                               {
                                                                  §§push(n);
                                                                  if(_loc6_)
                                                                  {
                                                                     if(§§pop().indexOf("DailyBoss") >= 0)
                                                                     {
                                                                        bn = int(n.split("DailyBoss")[1]) - 1;
                                                                        if(_loc6_)
                                                                        {
                                                                           Now = new Date();
                                                                           Now = new Date(Now.fullYearUTC,Now.monthUTC,Now.dateUTC,Now.hoursUTC,Now.minutesUTC,Now.secondsUTC,Now.millisecondsUTC);
                                                                           §§push("DB");
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(§§pop() in root.account)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§goto(addr415);
                                                                                 }
                                                                                 addr647:
                                                                                 §§goto(addr790);
                                                                              }
                                                                              §§goto(addr550);
                                                                           }
                                                                           §§goto(addr630);
                                                                        }
                                                                        §§goto(addr415);
                                                                     }
                                                                     else
                                                                     {
                                                                        if(n == "Create_Guild")
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§goto(addr630);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr647);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(n);
                                                                           if(_loc6_)
                                                                           {
                                                                              addr643:
                                                                              if(§§pop() == "LeaveGuild")
                                                                              {
                                                                                 addr645:
                                                                                 root.leaveguild();
                                                                                 §§goto(addr647);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(n);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                 }
                                                                                 addr775:
                                                                                 if(§§pop() == "Warrior Shop")
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       addr780:
                                                                                       MovieClip(root).shop(this.o.ShopType,this.o.ShopID);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr790);
                                                                              }
                                                                           }
                                                                           §§push("DisbandGuild");
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(§§pop() == §§pop())
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§goto(addr660);
                                                                                 }
                                                                                 §§goto(addr706);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(n);
                                                                                 §§push("Warehouse");
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    addr719:
                                                                                    if(§§pop() == §§pop())
                                                                                    {
                                                                                       if(root.warehousemc)
                                                                                       {
                                                                                          addr723:
                                                                                          return;
                                                                                       }
                                                                                       root.warehousemc = new Warehouse() as MovieClip;
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          root.warehousemc.x = stage.stageWidth / 2;
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             root.warehousemc.y = stage.stageHeight / 2;
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                §§goto(addr752);
                                                                                             }
                                                                                             §§goto(addr790);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr780);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr752);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr775);
                                                                                       §§push(n);
                                                                                    }
                                                                                    §§goto(addr790);
                                                                                 }
                                                                                 §§goto(addr775);
                                                                              }
                                                                           }
                                                                           §§goto(addr719);
                                                                        }
                                                                        §§goto(addr790);
                                                                     }
                                                                  }
                                                                  §§goto(addr643);
                                                               }
                                                            }
                                                            §§goto(addr790);
                                                         }
                                                         §§goto(addr790);
                                                      }
                                                      §§goto(addr775);
                                                   }
                                                }
                                                §§goto(addr339);
                                             }
                                          }
                                          §§goto(addr630);
                                       }
                                       addr535:
                                       _loc4_ = (_loc3_ = DateTime).date - 1;
                                       if(!_loc5_)
                                       {
                                          _loc3_.date = _loc4_;
                                       }
                                       return;
                                    }
                                    §§goto(addr415);
                                 }
                                 §§goto(addr630);
                              }
                              §§goto(addr560);
                           }
                           §§goto(addr134);
                        }
                        §§goto(addr752);
                     }
                     §§goto(addr447);
                  }
                  §§goto(addr305);
               }
               §§goto(addr79);
            }
            §§goto(addr459);
         }
         §§goto(addr118);
      }
      
      public function displaydialog() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            var BC:Class = null;
            var CM:Class = null;
            var b:MovieClip = null;
            if(!_loc4_)
            {
               var C:Class = null;
               var m:MovieClip = null;
               if(!_loc4_)
               {
                  var l:Loader = null;
                  if(!_loc4_)
                  {
                     var file:URLRequest = null;
                     var loaded:* = undefined;
                     if(_loc5_)
                     {
                        var done:* = undefined;
                        if(!_loc4_)
                        {
                           addr72:
                           this.dialogv = this.o[this.dialog];
                           if(!_loc4_)
                           {
                              var dialogtxto:String = root.getTxt(this.npc + this.dialog + this.dialogid,!!this.formatted ? null : this.txt);
                              if(_loc5_)
                              {
                                 this.formatted = true;
                                 if(_loc5_)
                                 {
                                    var dialogtxt:String = MovieClip(root).q.stringCheckReplace(this.nr,dialogtxto,MovieClip(root).pChar.key);
                                    addr128:
                                    §§push(dialogtxt);
                                    if(!_loc4_)
                                    {
                                       §§push("/");
                                       if(_loc5_)
                                       {
                                          if(§§pop().indexOf(§§pop()) > 0)
                                          {
                                             addr139:
                                             §§push(§§newactivation());
                                             §§push(dialogtxt);
                                             if(_loc5_)
                                             {
                                                §§push(§§pop().split(">")[0]);
                                             }
                                             §§pop().§§slot[2] = §§pop();
                                          }
                                          §§push(dialogtxt);
                                          if(!_loc4_)
                                          {
                                             §§push("=");
                                             if(_loc5_)
                                             {
                                                if(§§pop().indexOf(§§pop()) > 0)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      dialogtxt = "";
                                                      if(!_loc4_)
                                                      {
                                                         addr171:
                                                         this.txt.text = dialogtxt;
                                                         var bbtnn:String = "Next";
                                                         if(_loc4_)
                                                         {
                                                         }
                                                         §§goto(addr394);
                                                      }
                                                      addr380:
                                                      m = new C() as MovieClip;
                                                      if(!_loc4_)
                                                      {
                                                         m.visible = false;
                                                         §§goto(addr394);
                                                      }
                                                      else
                                                      {
                                                         addr420:
                                                         done = function(param1:Event):void
                                                         {
                                                            var _loc2_:Boolean = false;
                                                            var _loc3_:Boolean = true;
                                                            root.q.remove(root.loadmc2);
                                                            root.scenemc = l.content as MovieClip;
                                                            root.scenemc.play();
                                                            if(_loc3_)
                                                            {
                                                               root.scenemc._root = MovieClip(root);
                                                               l.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS,loaded);
                                                            }
                                                            l.contentLoaderInfo.removeEventListener(Event.COMPLETE,done);
                                                            close(false);
                                                         };
                                                         root.loadmc2 = new LoaderMC() as MovieClip;
                                                         root.addChild(root.loadmc2);
                                                         l = root.sceneloader = new Loader();
                                                         file = new URLRequest("http://www.mallorca-immobilien.biz/Esgrima2/Scenes/" + dialogtxto.split("=")[1] + ".swf");
                                                         l.load(file);
                                                         if(_loc5_)
                                                         {
                                                            root.addChildAt(l,root.getChildIndex(root.loadmc2));
                                                            l.contentLoaderInfo.addEventListener(Event.COMPLETE,done);
                                                            §§goto(addr490);
                                                         }
                                                      }
                                                      §§goto(addr498);
                                                   }
                                                   §§push(this.dialogv.length);
                                                   if(_loc5_)
                                                   {
                                                      addr186:
                                                      §§push(§§pop() - 1);
                                                      var _loc2_:*;
                                                      §§push((_loc2_ = this).dialogid);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§§pop() + 1);
                                                         if(_loc5_)
                                                         {
                                                            addr197:
                                                            var _loc3_:*;
                                                            §§push(_loc3_ = §§pop());
                                                            if(_loc5_)
                                                            {
                                                               _loc2_.dialogid = _loc3_;
                                                            }
                                                         }
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            BC = getDefinitionByName("NextBtn") as Class;
                                                            if(!_loc4_)
                                                            {
                                                               addr229:
                                                               if(getChildByName("Next"))
                                                               {
                                                                  removeChild(getChildByName("Next"));
                                                               }
                                                               var nbtn:SimpleButton = new BC() as SimpleButton;
                                                               nbtn.x = 418;
                                                               if(!_loc4_)
                                                               {
                                                                  nbtn.y = 525.15;
                                                                  if(_loc5_)
                                                                  {
                                                                     nbtn.name = bbtnn;
                                                                     if(!_loc4_)
                                                                     {
                                                                        addChild(nbtn);
                                                                        root.changeButtonText(nbtn);
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(dialogtxto);
                                                                           if(_loc5_)
                                                                           {
                                                                              addr287:
                                                                              §§push("*");
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§goto(addr291);
                                                                              }
                                                                           }
                                                                           §§goto(addr411);
                                                                        }
                                                                        §§goto(addr358);
                                                                     }
                                                                     §§goto(addr335);
                                                                  }
                                                                  §§goto(addr380);
                                                               }
                                                               §§goto(addr416);
                                                            }
                                                            §§goto(addr298);
                                                         }
                                                         else
                                                         {
                                                            BC = getDefinitionByName("OkBtn") as Class;
                                                            bbtnn = "End";
                                                         }
                                                         §§goto(addr229);
                                                      }
                                                      §§goto(addr197);
                                                   }
                                                }
                                                §§goto(addr171);
                                             }
                                             §§goto(addr291);
                                          }
                                          §§goto(addr287);
                                       }
                                       addr291:
                                       if(§§pop().indexOf(§§pop()) >= 0)
                                       {
                                          addr294:
                                          this.txt.text = "";
                                          addr298:
                                          CM = getDefinitionByName(dialogtxto.split("*")[1]) as Class;
                                          if(!_loc4_)
                                          {
                                             addr314:
                                             b = new CM() as MovieClip;
                                             if(_loc5_)
                                             {
                                                addChildAt(b,getChildIndex(this.txt));
                                                if(_loc5_)
                                                {
                                                   addr335:
                                                   b.x = this.txt.x;
                                                   b.y = this.txt.y;
                                                }
                                             }
                                             §§goto(addr394);
                                          }
                                          else
                                          {
                                             addr416:
                                             loaded = function(param1:ProgressEvent):void
                                             {
                                                root.loadmc2.loadbar.x = 800 * (param1.bytesLoaded / param1.bytesTotal);
                                             };
                                             §§goto(addr420);
                                          }
                                       }
                                       else
                                       {
                                          §§push(dialogtxto);
                                          if(_loc5_)
                                          {
                                             §§push("/");
                                             if(!_loc4_)
                                             {
                                                if(§§pop().indexOf(§§pop()) >= 0)
                                                {
                                                   addr358:
                                                   trace(dialogtxto + " has /");
                                                   C = getDefinitionByName(dialogtxto.split("/")[1]) as Class;
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr380);
                                                   }
                                                   §§goto(addr490);
                                                }
                                                else
                                                {
                                                   addr411:
                                                   if(dialogtxto.indexOf("=") >= 0)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr416);
                                                      }
                                                      §§goto(addr420);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr411);
                                       }
                                       addr394:
                                       root.addChild(m);
                                       root.scenemc = m;
                                       if(_loc5_)
                                       {
                                          this.close(false);
                                       }
                                       else
                                       {
                                          addr490:
                                          l.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,loaded);
                                          addr498:
                                          root.musicPause = root.musicChannel.position;
                                          root.musicChannel.stop();
                                       }
                                       return;
                                    }
                                    §§goto(addr186);
                                 }
                                 §§goto(addr420);
                              }
                              §§goto(addr314);
                           }
                           §§goto(addr171);
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr128);
                  }
                  §§goto(addr72);
               }
               §§goto(addr294);
            }
            §§goto(addr171);
         }
         §§goto(addr380);
      }
      
      function frame1() : *
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.closing = false;
            this.txt.autoSize = TextFieldAutoSize.LEFT;
            this.nr = /{Name}/;
            this.dialogid = 0;
            this.npc = this.npc.split("_").join(" ");
            if(_loc3_)
            {
               this.url = new URLRequest("http://www.mallorca-immobilien.biz/Esgrima2/NPCs/" + this.npc + ".swf");
               this.loader = new Loader();
               if(!_loc4_)
               {
                  this.formatted = false;
                  if(!_loc4_)
                  {
                     addr67:
                     this.loader.load(this.url);
                     if(!_loc4_)
                     {
                        this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.compelted);
                        this.bg.nametxt.text = root.getTxt(this.npc,this.bg.nametxt);
                        MovieClip(root).q.raster(this.bg);
                        if(!_loc4_)
                        {
                           if(this.dialog == null)
                           {
                              §§push("Buttons");
                              if(!_loc4_)
                              {
                                 §§push(§§pop() in this.o);
                                 if(!_loc4_)
                                 {
                                    if(§§pop())
                                    {
                                       addr115:
                                       this.n = this.o.Buttons.length;
                                       this.btnx = 340;
                                       this.iuse = 0;
                                       if(!_loc4_)
                                       {
                                          this.i = 0;
                                          if(_loc3_)
                                          {
                                             addr135:
                                             loop0:
                                             while(this.i < this.n)
                                             {
                                                this.btnn = this.o.Buttons[this.i];
                                                §§push(this.btnn);
                                                if(_loc3_)
                                                {
                                                   §§push("Warrior Shop");
                                                   if(_loc3_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(!_loc4_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            addr158:
                                                            §§pop();
                                                            if(_loc3_)
                                                            {
                                                               addr174:
                                                               if(MovieClip(root).q.arrayContainsSplit(root.pChar.Quests.Done,"First Meeting") != "false")
                                                               {
                                                                  §§push(this.btnn == "Quest");
                                                                  §§push(this.btnn == "Quest");
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        §§pop();
                                                                        if(_loc3_)
                                                                        {
                                                                           addr220:
                                                                           if(MovieClip(root).q.arrayContainsSplit(MovieClip(root).pChar.Quests.Done,this.o.Quests[this.o.Quests.length - 1].split(")")[0].split("(")[0]) !== "false")
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr639:
                                                                                 var _loc1_:*;
                                                                                 §§push((_loc1_ = this).i);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(§§pop() + 1);
                                                                                 }
                                                                                 var _loc2_:* = §§pop();
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    _loc1_.i = _loc2_;
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              addr398:
                                                                              §§goto(addr639);
                                                                              §§goto(addr639);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(this.btnn);
                                                                              if(_loc3_)
                                                                              {
                                                                                 if(§§pop() == "Quest")
                                                                                 {
                                                                                    this.quest = "";
                                                                                    this.n2 = this.o.Quests.length;
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       this.active = false;
                                                                                       this.i2 = 0;
                                                                                       for(; this.i2 < this.n2; §§push((_loc1_ = this).i2),if(_loc3_)
                                                                                       {
                                                                                          §§push(§§pop() + 1);
                                                                                       },_loc2_ = §§pop(),if(_loc3_)
                                                                                       {
                                                                                          _loc1_.i2 = _loc2_;
                                                                                       })
                                                                                       {
                                                                                          this.qu = this.o.Quests[this.i2];
                                                                                          this.qusplit = this.qu.split("(")[0].split(")")[0];
                                                                                          this.a = MovieClip(root).q.arrayContainsSplit(MovieClip(root).pChar.Quests.Active,this.qusplit,"*");
                                                                                          this.done = MovieClip(root).q.arrayContainsSplit(MovieClip(root).pChar.Quests.Done,this.qusplit);
                                                                                          §§push(this.done);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push("false");
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                if(§§pop() != §§pop())
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§push(this.a);
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §§push("false");
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      if(§§pop() !== §§pop())
                                                                                                      {
                                                                                                         this.quest = this.qu;
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            this.active = true;
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               addr339:
                                                                                                               break;
                                                                                                            }
                                                                                                            addr519:
                                                                                                            addr523:
                                                                                                            addr520:
                                                                                                            if("Guild" in root.pChar)
                                                                                                            {
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                               }
                                                                                                               §§goto(addr639);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               this.C = getDefinitionByName(this.btnn + "Btn") as Class;
                                                                                                               this.btn = new this.C() as SimpleButton;
                                                                                                               this.inity = 528;
                                                                                                               addr549:
                                                                                                               addr550:
                                                                                                               addr547:
                                                                                                               if(this.btnn.indexOf("DailyBoss") >= 0)
                                                                                                               {
                                                                                                                  this.tf = this.txt.defaultTextFormat;
                                                                                                                  addr558:
                                                                                                                  this.tf.size = 20;
                                                                                                                  this.txt.defaultTextFormat = this.tf;
                                                                                                                  addr567:
                                                                                                                  this.btn.scaleX = 0.7;
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     this.btn.scaleY = 0.7;
                                                                                                                     addr577:
                                                                                                                     this.btnx = 380;
                                                                                                                  }
                                                                                                                  this.inity = 550;
                                                                                                               }
                                                                                                               this.btn.name = this.btnn;
                                                                                                               this.btny = this.inity - this.btn.height * this.iuse;
                                                                                                               addChild(this.btn);
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               this.btn.x = this.btnx;
                                                                                                            }
                                                                                                            this.btn.y = this.btny;
                                                                                                         }
                                                                                                         root.changeButtonText(this.btn);
                                                                                                         §§push((_loc1_ = this).iuse);
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§push(§§pop() + 1);
                                                                                                         }
                                                                                                         _loc2_ = §§pop();
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            _loc1_.iuse = _loc2_;
                                                                                                         }
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         §§goto(addr639);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         this.quest = this.qu;
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§goto(addr339);
                                                                                                         }
                                                                                                         §§goto(addr398);
                                                                                                      }
                                                                                                   }
                                                                                                   addr515:
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                   if(§§pop() == §§pop())
                                                                                                   {
                                                                                                      addr518:
                                                                                                      §§pop();
                                                                                                      §§goto(addr519);
                                                                                                   }
                                                                                                   §§goto(addr523);
                                                                                                }
                                                                                                §§goto(addr549);
                                                                                             }
                                                                                             addr443:
                                                                                             §§push(§§pop() == §§pop());
                                                                                             §§push(§§pop() == §§pop());
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr448:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§push("Guild");
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§push(!(§§pop() in root.pChar));
                                                                                                            §§push(!(§§pop() in root.pChar));
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               addr465:
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  addr466:
                                                                                                                  §§pop();
                                                                                                                  §§push(root.pChar.GuildRank == "Leader");
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     addr474:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        §§goto(addr639);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr479:
                                                                                                                        §§push(this.btnn == "DisbandGuild");
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 addr486:
                                                                                                                                 §§pop();
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    §§push("Guild");
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       addr492:
                                                                                                                                       §§push(!(§§pop() in root.pChar));
                                                                                                                                       §§push(!(§§pop() in root.pChar));
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          addr500:
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             addr501:
                                                                                                                                             §§pop();
                                                                                                                                             addr508:
                                                                                                                                             if(root.pChar.GuildRank !== "Leader")
                                                                                                                                             {
                                                                                                                                                addr509:
                                                                                                                                                §§goto(addr639);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr512:
                                                                                                                                                §§push(this.btnn);
                                                                                                                                                §§push("Create_Guild");
                                                                                                                                                if(!_loc4_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr515);
                                                                                                                                                }
                                                                                                                                                §§goto(addr550);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr508);
                                                                                                                                       }
                                                                                                                                       §§goto(addr515);
                                                                                                                                    }
                                                                                                                                    §§goto(addr520);
                                                                                                                                 }
                                                                                                                                 §§goto(addr509);
                                                                                                                              }
                                                                                                                              §§goto(addr519);
                                                                                                                           }
                                                                                                                           §§goto(addr508);
                                                                                                                        }
                                                                                                                        §§goto(addr486);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr508);
                                                                                                               }
                                                                                                               §§goto(addr474);
                                                                                                            }
                                                                                                            §§goto(addr500);
                                                                                                         }
                                                                                                         §§goto(addr492);
                                                                                                      }
                                                                                                      §§goto(addr547);
                                                                                                   }
                                                                                                   §§goto(addr492);
                                                                                                }
                                                                                                §§goto(addr474);
                                                                                             }
                                                                                             §§goto(addr465);
                                                                                          }
                                                                                          §§goto(addr512);
                                                                                       }
                                                                                       trace(this.qusplit);
                                                                                       trace(this.a);
                                                                                       §§push(this.a);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr381:
                                                                                          if(§§pop() !== "false")
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr386:
                                                                                                if(this.qu.indexOf(")") >= 0)
                                                                                                {
                                                                                                   §§goto(addr639);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr399:
                                                                                                   §§push(this.quest);
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §§push("");
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  §§push(root.QuestLvls[this.quest.split(")")[0].split("(")[0]] > root.pChar.Level);
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     addr435:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        §§goto(addr639);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr437:
                                                                                                                        §§push(this.btnn);
                                                                                                                        §§push("LeaveGuild");
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           §§goto(addr443);
                                                                                                                        }
                                                                                                                        §§goto(addr479);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr466);
                                                                                                               }
                                                                                                               §§goto(addr518);
                                                                                                            }
                                                                                                            §§goto(addr435);
                                                                                                         }
                                                                                                         §§goto(addr501);
                                                                                                      }
                                                                                                      §§goto(addr443);
                                                                                                   }
                                                                                                   §§goto(addr549);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr558);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             if(this.qu.indexOf("(") >= 0)
                                                                                             {
                                                                                                §§goto(addr398);
                                                                                             }
                                                                                             §§goto(addr639);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr512);
                                                                                    }
                                                                                    §§goto(addr567);
                                                                                 }
                                                                                 §§goto(addr437);
                                                                              }
                                                                              §§goto(addr386);
                                                                           }
                                                                        }
                                                                        §§goto(addr501);
                                                                     }
                                                                     §§goto(addr220);
                                                                  }
                                                                  §§goto(addr448);
                                                               }
                                                               §§goto(addr639);
                                                            }
                                                            §§goto(addr577);
                                                         }
                                                         §§goto(addr174);
                                                      }
                                                      §§goto(addr158);
                                                   }
                                                   §§goto(addr381);
                                                }
                                                §§goto(addr512);
                                             }
                                             if(_loc3_)
                                             {
                                                addr662:
                                                if("Speech" in this.o)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      this.txt.text = MovieClip(root).q.stringCheckReplace(this.nr,root.getTxt(this.npc + "Speech",this.txt),MovieClip(root).pChar.key);
                                                      if(_loc3_)
                                                      {
                                                         addr706:
                                                         addEventListener(MouseEvent.CLICK,this.btnclick);
                                                         addr703:
                                                      }
                                                   }
                                                }
                                                §§goto(addr703);
                                             }
                                             §§goto(addr706);
                                          }
                                          return;
                                       }
                                       §§goto(addr706);
                                    }
                                 }
                              }
                              §§goto(addr662);
                           }
                           else
                           {
                              this.displaydialog();
                           }
                        }
                        §§goto(addr706);
                     }
                     §§goto(addr135);
                  }
                  §§goto(addr115);
               }
               §§goto(addr706);
            }
            §§goto(addr67);
         }
         §§goto(addr662);
      }
   }
}
