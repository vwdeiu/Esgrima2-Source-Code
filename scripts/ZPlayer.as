package
{
   import Esgrima2_fla.*;
   import fl.motion.*;
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
   
   public dynamic class ZPlayer extends MovieClip
   {
       
      
      public var titlemc:MovieClip;
      
      public var a:MovieClip;
      
      public var bubble:SpeechBubble;
      
      public var projectile:String;
      
      public var setWeaponBlends:Boolean;
      
      public var guild:String;
      
      public var shop:Vector.<String>;
      
      public var slash:Boolean;
      
      public var posinit:Boolean;
      
      public var worldx:int;
      
      public var worldy:int;
      
      public var lastgroupx:int;
      
      public var ppos:Point;
      
      public var pposinit:Point;
      
      public var lastposx:Point;
      
      public var hp:int;
      
      public var maxhp:int;
      
      public var mp:int;
      
      public var maxmp:int;
      
      public var plvl:int;
      
      public var enemy:Boolean;
      
      public var group:int;
      
      public var buffs:Vector.<String>;
      
      public var pname:String;
      
      public var pclass:String;
      
      public var pface:uint;
      
      public var pskin:uint;
      
      public var pequip:Vector.<String>;
      
      public var actionchain:String;
      
      public var action:String;
      
      public var battleaction:String;
      
      public var actiongroup:int;
      
      public var actiondone:Boolean;
      
      public var slashdone:Boolean;
      
      public var reactions:Vector.<String>;
      
      public var target:MovieClip;
      
      public var targetdist:Point;
      
      public var targetxwant:int;
      
      public var targetp:Point;
      
      public var stance:String;
      
      public var h:Number;
      
      public var w:Number;
      
      public var h2:Number;
      
      public var w2:Number;
      
      public var removeh:Number;
      
      public var alphadummy:Object;
      
      public var real:Boolean;
      
      public var landpoint:Number;
      
      public var ar:AnimatedBitmap;
      
      public var arold:AnimatedBitmap;
      
      public var rasterdone:Boolean;
      
      public var titleb:Bitmap;
      
      public var titlebd:BitmapData;
      
      public var hpb:Bitmap;
      
      public var bubbler:Bitmap;
      
      public var bubbley:int;
      
      public var team:int;
      
      public var id:int;
      
      public var labelbefore:String;
      
      public var strikes:Vector.<String>;
      
      public var strike:int;
      
      public var atkAnim:int;
      
      public var commandclickable:Boolean;
      
      public var atkNum:int;
      
      public var halfhalf:int;
      
      public var damageTexts:Vector.<Bitmap>;
      
      public var damageTextsData:Vector.<BitmapData>;
      
      public var hpmc:MovieClip;
      
      public var targetted:Boolean;
      
      public var iadd:int;
      
      public var calced:Boolean;
      
      public var escaped:Boolean;
      
      public var lvlup:MovieClip;
      
      public var wep1:String;
      
      public var wep2:String;
      
      public var backmc:MovieClip;
      
      public var back:String;
      
      public var buffFX:DisplayObject;
      
      public var StunP:Point;
      
      public var BurnP:Point;
      
      public var PoisonP:Point;
      
      public var xposinit:Vector.<Number>;
      
      public function ZPlayer()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(!_loc2_)
            {
               addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4,4,this.frame5,5,this.frame6,6,this.frame7,7,this.frame8,8,this.frame9);
            }
         }
      }
      
      public function init(param1:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            var This:MovieClip = null;
            var backLoader:Loader = null;
            var url:URLRequest = null;
            if(_loc4_)
            {
               var done:* = undefined;
               var battle:Boolean = param1;
               this.posinit = false;
               this.back = this.pequip[3].split("_")[0];
               This = this;
               §§push(this.back);
               if(!_loc3_)
               {
                  §§push("None");
                  if(_loc4_)
                  {
                     if(§§pop() !== §§pop())
                     {
                        done = function(param1:Event):*
                        {
                           var _loc2_:Boolean = false;
                           var _loc3_:Boolean = true;
                           backmc = backLoader.content.a;
                           backmc.mouseChildren = false;
                           if(_loc3_)
                           {
                              backmc.mouseEnabled = false;
                              if(_loc3_)
                              {
                                 backLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,done);
                                 root.addChild(backmc);
                                 if(_loc3_)
                                 {
                                    §§goto(addr31);
                                 }
                              }
                              §§goto(addr46);
                           }
                           addr31:
                           root.backDecs.push(backmc);
                           backmc.mc = This;
                           This = null;
                           backLoader.unloadAndStop();
                           if(_loc3_)
                           {
                              addr46:
                              backLoader = null;
                              if(_loc3_)
                              {
                                 trace("Done back");
                              }
                           }
                        };
                        backLoader = new Loader();
                        if(!_loc3_)
                        {
                           url = new URLRequest("http://mallorca-immobilien@mallorca-immobilien.biz/Esgrima2/Back/" + this.back + ".swf");
                           backLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,done);
                           backLoader.load(url);
                           addr103:
                           trace(".");
                           if(!_loc3_)
                           {
                              var aa:MovieClip = getChildAt(0).getChildAt(0) as MovieClip;
                              this.wep1 = "wep";
                              this.wep2 = "wep2";
                              if(_loc4_)
                              {
                                 if(aa.wep)
                                 {
                                    this.wep1 = "wep";
                                    if(!_loc4_)
                                    {
                                    }
                                    addr394:
                                    visible = false;
                                    if(this.titlemc)
                                    {
                                       if(_loc4_)
                                       {
                                          this.titlemc.visible = true;
                                          addr407:
                                          if(this.bubble)
                                          {
                                             if(!_loc3_)
                                             {
                                                addr412:
                                                this.bubble.visible = true;
                                                addr416:
                                                if(this.parent)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(!battle)
                                                      {
                                                         this.createtitle();
                                                         addr434:
                                                         this.titleb.visible = false;
                                                         addr448:
                                                         this.bubbley = this.bubble.y + this.bubble.height;
                                                         addr438:
                                                      }
                                                      else
                                                      {
                                                         this.hpmc = new BattleHP() as MovieClip;
                                                         if(!_loc3_)
                                                         {
                                                            §§goto(addr448);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr457);
                                                }
                                                §§goto(addr448);
                                             }
                                             §§goto(addr438);
                                          }
                                          §§goto(addr416);
                                       }
                                       §§goto(addr434);
                                    }
                                    §§goto(addr407);
                                 }
                                 if(aa.wep1)
                                 {
                                    if(_loc4_)
                                    {
                                       this.wep1 = "wep1";
                                       addr148:
                                       if(aa.weapon)
                                       {
                                          this.wep1 = "weapon";
                                       }
                                       if(aa.weapon1)
                                       {
                                          if(!_loc3_)
                                          {
                                             this.wep1 = "weapon1";
                                             addr164:
                                             if(aa.wep2)
                                             {
                                                this.wep2 = "wep2";
                                                if(_loc4_)
                                                {
                                                   addr173:
                                                   if(aa.weapon2)
                                                   {
                                                      this.wep2 = "weapon2";
                                                   }
                                                   if(aa.shield)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         addr187:
                                                         this.wep2 = "shield";
                                                         addr190:
                                                         aa[this.wep1].gotoAndStop(this.pequip[2].split("_")[0]);
                                                         if(_loc4_)
                                                         {
                                                            if(aa[this.wep2])
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  addr218:
                                                                  if(this.pclass !== "Samurai")
                                                                  {
                                                                     addr226:
                                                                     aa[this.wep2].gotoAndStop(this.pequip[4].split("_")[0]);
                                                                     if(_loc3_)
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     aa[this.wep2].gotoAndStop(this.pequip[2].split("_")[0]);
                                                                     if(!_loc4_)
                                                                     {
                                                                     }
                                                                     addr348:
                                                                     visible = true;
                                                                     this.h = this.a.height;
                                                                     this.w = this.a.width;
                                                                     if(_loc4_)
                                                                     {
                                                                        addr364:
                                                                        trace("Init height: " + this.h);
                                                                        trace("Init width: " + this.w);
                                                                        if(_loc4_)
                                                                        {
                                                                           addr378:
                                                                           §§push(this);
                                                                           §§push(this.h);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(§§pop() / 2);
                                                                           }
                                                                           §§pop().h2 = §§pop();
                                                                           §§push(this);
                                                                           §§push(this.w);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(§§pop() / 2);
                                                                           }
                                                                           §§pop().w2 = §§pop();
                                                                        }
                                                                        §§goto(addr394);
                                                                     }
                                                                  }
                                                                  §§goto(addr412);
                                                               }
                                                            }
                                                            trace("..");
                                                            if(_loc4_)
                                                            {
                                                               this.real = true;
                                                               addr269:
                                                               trace(root);
                                                               if(_loc4_)
                                                               {
                                                                  root.generateBlends(this);
                                                                  this.group = 0;
                                                                  if(!_loc3_)
                                                                  {
                                                                     this.lastgroupx = 0;
                                                                     if(!_loc3_)
                                                                     {
                                                                        this.alphadummy = {"alpha":1};
                                                                        this.damageTexts = new Vector.<Bitmap>();
                                                                        if(_loc4_)
                                                                        {
                                                                           addr302:
                                                                           this.actionchain = "";
                                                                           if(_loc4_)
                                                                           {
                                                                              this.strikes = new Vector.<String>();
                                                                              if(_loc4_)
                                                                              {
                                                                                 this.escaped = false;
                                                                                 this.action = "";
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    addr326:
                                                                                    this.stance = "breathing";
                                                                                    if(this.titlemc)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr335:
                                                                                          this.titlemc.visible = false;
                                                                                          addr339:
                                                                                          if(!this.bubble)
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr348);
                                                                                       }
                                                                                       this.bubble.visible = false;
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§goto(addr348);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr339);
                                                                                 }
                                                                                 §§goto(addr364);
                                                                              }
                                                                              §§goto(addr394);
                                                                           }
                                                                           §§goto(addr339);
                                                                        }
                                                                        §§goto(addr412);
                                                                     }
                                                                     §§goto(addr434);
                                                                  }
                                                                  §§goto(addr339);
                                                               }
                                                               §§goto(addr302);
                                                            }
                                                            addr457:
                                                            return;
                                                         }
                                                         §§goto(addr348);
                                                      }
                                                      §§goto(addr378);
                                                   }
                                                   §§goto(addr190);
                                                }
                                                §§goto(addr335);
                                             }
                                             §§goto(addr173);
                                          }
                                          §§goto(addr412);
                                       }
                                       §§goto(addr164);
                                    }
                                    §§goto(addr226);
                                 }
                                 §§goto(addr148);
                              }
                              §§goto(addr187);
                           }
                           §§goto(addr326);
                        }
                        §§goto(addr269);
                     }
                     §§goto(addr103);
                  }
               }
               §§goto(addr218);
            }
            §§goto(addr394);
         }
         §§goto(addr348);
      }
      
      public function calc() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(this.calced)
         {
            return;
         }
         this.calced = true;
         visible = true;
         if(this.hpmc)
         {
            this.hpmc.visible = false;
            if(_loc1_)
            {
               addr34:
               if(this.titlemc)
               {
                  if(_loc1_)
                  {
                     this.titlemc.visible = false;
                     addr44:
                     if(this.bubble)
                     {
                        if(_loc1_)
                        {
                           this.bubble.visible = false;
                           addr54:
                           this.h = this.a.height;
                           this.w = this.a.width;
                           if(_loc1_)
                           {
                              §§push(this);
                              §§push(this.h);
                              if(!_loc2_)
                              {
                                 §§push(§§pop() / 2);
                              }
                              §§pop().h2 = §§pop();
                              if(!_loc2_)
                              {
                                 addr85:
                                 §§push(this);
                                 §§push(this.w);
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop() / 2);
                                 }
                                 §§pop().w2 = §§pop();
                                 trace("set height: " + this.h);
                                 trace("set width: " + this.w);
                                 if(!_loc2_)
                                 {
                                    addr108:
                                    if(this.hpmc)
                                    {
                                       if(!_loc2_)
                                       {
                                          this.hpmc.visible = true;
                                       }
                                       §§goto(addr147);
                                    }
                                    if(this.titlemc)
                                    {
                                       if(_loc1_)
                                       {
                                          this.titlemc.visible = true;
                                       }
                                    }
                                 }
                                 if(this.bubble)
                                 {
                                    if(!_loc2_)
                                    {
                                       this.bubble.visible = true;
                                    }
                                    §§goto(addr147);
                                 }
                                 visible = false;
                              }
                           }
                           §§goto(addr108);
                        }
                        addr147:
                        return;
                     }
                     §§goto(addr54);
                  }
                  §§goto(addr85);
               }
               §§goto(addr44);
            }
            §§goto(addr108);
         }
         §§goto(addr34);
      }
      
      public function remove(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.group = 0;
            this.lastgroupx = 0;
            §§push(Boolean(this.pposinit));
            §§push(Boolean(this.pposinit));
            if(!_loc4_)
            {
               if(§§pop())
               {
                  §§pop();
                  if(_loc5_)
                  {
                     addr38:
                     if(this.ppos)
                     {
                        if(_loc5_)
                        {
                           this.ppos.x = this.pposinit.x;
                           this.ppos.y = this.pposinit.y;
                           if(!_loc4_)
                           {
                              addr55:
                              if(this.buffFX)
                              {
                                 if(!_loc4_)
                                 {
                                    root.q.remove(this.buffFX);
                                    if(_loc5_)
                                    {
                                       addr69:
                                       this.buffFX = null;
                                       if(this.hpmc)
                                       {
                                          if(_loc5_)
                                          {
                                             root.q.remove(this.hpmc);
                                             addr82:
                                             this.hpmc = null;
                                             if(_loc5_)
                                             {
                                                if(this.target)
                                                {
                                                   root.q.remove(this.target);
                                                }
                                                this.target = null;
                                                if(!_loc4_)
                                                {
                                                   if(this.titlebd)
                                                   {
                                                      this.titlebd.dispose();
                                                      addr106:
                                                      this.titlebd = null;
                                                      if(_loc5_)
                                                      {
                                                         if(this.titleb)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               root.q.remove(this.titleb);
                                                               addr123:
                                                               this.titleb = null;
                                                               if(_loc5_)
                                                               {
                                                                  if(this.bubble.bubblebd)
                                                                  {
                                                                     this.bubble.bubblebd.dispose();
                                                                  }
                                                                  if(this.bubbler)
                                                                  {
                                                                     root.q.remove(this.bubbler);
                                                                     if(_loc5_)
                                                                     {
                                                                        addr147:
                                                                        this.bubbler = null;
                                                                        if(!_loc4_)
                                                                        {
                                                                           this.a.getChildAt(0).stop();
                                                                           if(this.ar)
                                                                           {
                                                                              addr160:
                                                                              this.ar.stop();
                                                                           }
                                                                           if(this.arold)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 this.arold.stop();
                                                                                 addr171:
                                                                                 if(this.arold)
                                                                                 {
                                                                                    this.arold.destroy();
                                                                                    addr177:
                                                                                    if(this.backmc)
                                                                                    {
                                                                                       this.backmc.mc = null;
                                                                                       addr184:
                                                                                       if(this.backmc.stage !== null)
                                                                                       {
                                                                                          addr189:
                                                                                          root.q.remove(this.backmc);
                                                                                          addr194:
                                                                                          this.backmc = null;
                                                                                       }
                                                                                       §§goto(addr194);
                                                                                    }
                                                                                    trace(MovieClip(root).battlelist);
                                                                                    §§push(!MovieClip(root).q.vectorContains(MovieClip(root).battlelist,this.pname));
                                                                                    if(!MovieClip(root).q.vectorContains(MovieClip(root).battlelist,this.pname))
                                                                                    {
                                                                                       §§pop();
                                                                                       §§push(Boolean(param2));
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr230:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr233:
                                                                                                trace("Delete p object " + this.pname);
                                                                                                addr239:
                                                                                                MovieClip(root).pmcs[this.pname + "_mc"] = null;
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   delete MovieClip(root).pmcs[this.pname + "_mc"];
                                                                                                   addr261:
                                                                                                   MovieClip(root).playerRemove(this.pname);
                                                                                                   trace("Removing mc from stage: ");
                                                                                                }
                                                                                                trace("Object: " + MovieClip(root).pmcs.hasOwnProperty(this.pname + "_mc"));
                                                                                                trace("player array: " + MovieClip(root).pChars);
                                                                                                addr292:
                                                                                                if(!param1)
                                                                                                {
                                                                                                   MovieClip(root).q.removeChildFade(this.ar);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   trace("Destroy " + this.ar);
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      root.q.remove(this.ar);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         if(this.ar !== null)
                                                                                                         {
                                                                                                            addr321:
                                                                                                            this.ar.destroy();
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               this.ar = null;
                                                                                                               addr329:
                                                                                                               trace("1");
                                                                                                               this.ar = null;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr329);
                                                                                                      }
                                                                                                      this.arold = null;
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         trace("2");
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            addr345:
                                                                                                            this.stance = "";
                                                                                                         }
                                                                                                      }
                                                                                                      try
                                                                                                      {
                                                                                                         this.a.gotoAndStop("standing");
                                                                                                      }
                                                                                                      catch(e:Error)
                                                                                                      {
                                                                                                      }
                                                                                                      root.q.toggleMC(this,"stop");
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         trace("3");
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            §§push(this === null);
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               §§push(!§§pop());
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           addr399:
                                                                                                                           §§push(this.stage === null);
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              §§goto(addr406);
                                                                                                                           }
                                                                                                                           addr406:
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr413);
                                                                                                                        }
                                                                                                                        root.removeChild(this);
                                                                                                                        §§goto(addr413);
                                                                                                                     }
                                                                                                                     §§goto(addr406);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr406);
                                                                                                         }
                                                                                                         addr413:
                                                                                                         return;
                                                                                                      }
                                                                                                      §§goto(addr399);
                                                                                                   }
                                                                                                   §§goto(addr321);
                                                                                                }
                                                                                                §§goto(addr329);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr261);
                                                                                       }
                                                                                       §§goto(addr292);
                                                                                    }
                                                                                    §§goto(addr230);
                                                                                 }
                                                                                 §§goto(addr177);
                                                                              }
                                                                              §§goto(addr239);
                                                                           }
                                                                           §§goto(addr171);
                                                                        }
                                                                        §§goto(addr177);
                                                                     }
                                                                     §§goto(addr194);
                                                                  }
                                                                  §§goto(addr147);
                                                               }
                                                               §§goto(addr189);
                                                            }
                                                            §§goto(addr147);
                                                         }
                                                         §§goto(addr123);
                                                      }
                                                      §§goto(addr233);
                                                   }
                                                   §§goto(addr106);
                                                }
                                                §§goto(addr184);
                                             }
                                             §§goto(addr177);
                                          }
                                          §§goto(addr233);
                                       }
                                       §§goto(addr82);
                                    }
                                    §§goto(addr123);
                                 }
                                 §§goto(addr160);
                              }
                              §§goto(addr69);
                           }
                           §§goto(addr106);
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr55);
                  }
                  §§goto(addr345);
               }
               §§goto(addr38);
            }
         }
         §§goto(addr177);
      }
      
      public function createtitle() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.titlebd)
            {
               this.titlebd.dispose();
               if(!_loc2_)
               {
                  addr27:
                  if(this.titleb)
                  {
                     root.removeChild(this.titleb);
                     if(_loc1_)
                     {
                        addr37:
                        if(this.titlemc.txt.text == "")
                        {
                           this.titlemc.txt.text = root.getTxt("Level",this.titlemc.txt) + " " + this.plvl;
                           root.getTxt("Name",this.titlemc.txt2,true,false,"Familiar Pro",0.8);
                           if(_loc1_)
                           {
                              root.getTxt("Name",this.titlemc.guildtxt,true,false,"Familiar Pro",0.8);
                              addr81:
                              this.titlemc.txt2.text = this.pname;
                              if(!_loc2_)
                              {
                                 this.titlemc.guildtxt.text = this.guild;
                                 §§push(!this.shop);
                                 if(_loc1_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc1_)
                                       {
                                          addr113:
                                          §§pop();
                                          §§push(Boolean(root.onlyNone(this.shop)));
                                       }
                                    }
                                    if(§§pop())
                                    {
                                       this.titlemc.shop.visible = false;
                                    }
                                    else
                                    {
                                       this.titlemc.shop.visible = true;
                                       if(_loc2_)
                                       {
                                       }
                                    }
                                    §§goto(addr134);
                                 }
                                 §§goto(addr113);
                              }
                              addr134:
                              this.titlebd = new BitmapData(this.titlemc.width,this.titlemc.height,true,0);
                              stage.quality = "high";
                              this.titlebd.draw(this.titlemc);
                              stage.quality = "low";
                              if(_loc1_)
                              {
                                 this.titleb = new Bitmap(this.titlebd,"auto",true);
                                 if(_loc2_)
                                 {
                                 }
                                 §§goto(addr199);
                              }
                              this.titleb.x = this.titlemc.x;
                              this.titleb.y = this.titlemc.y;
                              §§goto(addr188);
                           }
                           addr188:
                           root.addChildAt(this.titleb,root.getChildIndex(this));
                           this.titlemc.visible = false;
                           §§goto(addr199);
                        }
                        §§goto(addr81);
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr37);
               }
               addr199:
               return;
            }
            §§goto(addr27);
         }
         §§goto(addr134);
      }
      
      public function createhp(param1:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Number = NaN;
         var _loc3_:Point = null;
         if(this.titleb)
         {
            if(this.titlebd)
            {
               this.titlebd.dispose();
               if(_loc5_)
               {
                  §§goto(addr33);
               }
               §§goto(addr225);
            }
            addr33:
            _loc2_ = this.titleb.alpha;
            _loc3_ = new Point(this.titleb.x,this.titleb.y);
            if(!_loc4_)
            {
               if(this.titleb.root)
               {
                  if(!_loc4_)
                  {
                     root.removeChild(this.titleb);
                     this.hpmc.lvltxt.text = root.getTxt("Level",!!this.hpmc.formatted ? null : this.hpmc.lvltxt) + " " + this.plvl;
                  }
               }
            }
            §§goto(addr61);
         }
         addr61:
         if(_loc5_)
         {
            if(!this.hpmc.formatted)
            {
               if(!_loc4_)
               {
                  root.getTxt("Name",this.hpmc.nametxt);
                  if(!_loc4_)
                  {
                     §§goto(addr101);
                  }
                  §§goto(addr236);
               }
               §§goto(addr174);
            }
            §§goto(addr101);
         }
         addr101:
         this.hpmc.nametxt.text = this.pname;
         this.hpmc.formatted = true;
         this.hpmc.hptxt.text = this.hp + "/" + this.maxhp;
         if(_loc5_)
         {
            this.hpmc.hpbar.scaleX = this.hp / this.maxhp;
            if(!_loc4_)
            {
               this.hpmc.mptxt.text = this.mp + "/" + this.maxmp;
               this.hpmc.mpbar.scaleX = this.mp / this.maxmp;
               if(_loc5_)
               {
                  if(this.mp == 0)
                  {
                     this.hpmc.mpbar.scaleX = 0;
                     addr174:
                     if(this.buffs)
                     {
                        this.hpmc.createBuffs(this.buffs,root);
                        if(!_loc4_)
                        {
                           addr185:
                           this.titlebd = new BitmapData(this.hpmc.width,this.hpmc.height,true,0);
                           if(!_loc4_)
                           {
                              stage.quality = "high";
                              if(!_loc4_)
                              {
                                 this.titlebd.draw(this.hpmc);
                                 stage.quality = "low";
                                 if(!_loc4_)
                                 {
                                    this.titleb = new Bitmap(this.titlebd,"auto",true);
                                    addr225:
                                    §§push(param1);
                                    if(_loc5_)
                                    {
                                       if(§§pop())
                                       {
                                          this.titleb.alpha = 0;
                                       }
                                       if(_loc3_ !== null)
                                       {
                                          addr236:
                                          this.titleb.x = _loc3_.x;
                                          this.titleb.y = _loc3_.y;
                                       }
                                       if(this.ar)
                                       {
                                          root.addChildAt(this.titleb,root.getChildIndex(root.chatmin) + 1);
                                          addr259:
                                          §§push(Boolean(this.bubbler));
                                          if(!_loc4_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§pop();
                                                   §§goto(addr298);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr259);
                                    }
                                    if(!§§pop())
                                    {
                                    }
                                    §§goto(addr294);
                                 }
                                 root.addChildAt(this.bubbler,root.getChildIndex(root.chatmin) + 1);
                                 addr294:
                                 this.hpmc.visible = false;
                                 §§goto(addr298);
                              }
                              §§goto(addr259);
                           }
                           §§goto(addr225);
                        }
                        §§goto(addr273);
                     }
                  }
                  §§goto(addr174);
               }
               §§goto(addr236);
            }
            §§goto(addr185);
         }
         addr298:
         if(_loc5_)
         {
            addr273:
            §§push(Boolean(this.ar));
         }
         if(this.pname == MovieClip(root).pChar.key)
         {
            if(!_loc4_)
            {
               MovieClip(root).generatePI(this);
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            mouseChildren = false;
            mouseEnabled = false;
            stop();
            this.guild = "";
            this.enemy = false;
            if(!_loc1_)
            {
               this.removeh = 0;
               if(_loc2_)
               {
                  this.ar = null;
               }
               this.arold = null;
            }
            this.damageTextsData = new Vector.<BitmapData>();
         }
      }
      
      function frame2() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            mouseChildren = false;
         }
         mouseEnabled = false;
         stop();
         if(!_loc2_)
         {
            this.StunP = new Point(19.05,-116);
            this.BurnP = new Point(-2.5,-86.7);
            if(!_loc2_)
            {
               this.PoisonP = new Point(4.6,-92.6);
               addr61:
               this.xposinit = Vector.<Number>([getChildAt(0).x,getChildAt(0).x]);
            }
            this.removeh = 0;
            return;
         }
         §§goto(addr61);
      }
      
      function frame3() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.xposinit = Vector.<Number>([getChildAt(0).x,-3.2]);
            this.StunP = new Point(3.05,-103.3);
            this.BurnP = new Point(-2.5,-86.7);
            this.PoisonP = new Point(4.6,-92.6);
            this.removeh = 0;
         }
         mouseChildren = false;
         if(_loc2_)
         {
            mouseEnabled = false;
         }
      }
      
      function frame4() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.xposinit = Vector.<Number>([getChildAt(0).x,-3.55]);
            if(_loc2_)
            {
               this.StunP = new Point(1.7,-118.3);
               if(_loc2_)
               {
                  this.BurnP = new Point(-2.5,-86.7);
                  if(_loc2_)
                  {
                     this.PoisonP = new Point(4.6,-92.6);
                     if(_loc1_)
                     {
                     }
                     §§goto(addr89);
                  }
                  this.projectile = "ClericBall";
                  addr77:
                  this.removeh = 0;
                  if(_loc2_)
                  {
                     addr83:
                     mouseChildren = false;
                     mouseEnabled = false;
                  }
               }
               addr89:
               return;
            }
            §§goto(addr83);
         }
         §§goto(addr77);
      }
      
      function frame5() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.xposinit = Vector.<Number>([getChildAt(0).x,-2.65]);
         this.StunP = new Point(4.75,-129.8);
         if(!_loc1_)
         {
            this.BurnP = new Point(3.5,-88.7);
            this.PoisonP = new Point(4.6,-92.6);
            this.projectile = "FireBall";
            if(_loc2_)
            {
               §§goto(addr69);
            }
            §§goto(addr77);
         }
         addr69:
         this.removeh = 0;
         if(!_loc1_)
         {
            mouseChildren = false;
            addr77:
            mouseEnabled = false;
         }
      }
      
      function frame6() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.xposinit = Vector.<Number>([getChildAt(0).x,2.55]);
         }
         this.StunP = new Point(4.75,-129.8);
         this.BurnP = new Point(3.5,-88.7);
         if(_loc2_)
         {
            this.PoisonP = new Point(4.6,-92.6);
            this.removeh = 0;
            mouseChildren = false;
            if(_loc2_)
            {
               addr73:
               mouseEnabled = false;
            }
            return;
         }
         §§goto(addr73);
      }
      
      function frame7() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.xposinit = Vector.<Number>([getChildAt(0).x,-32.5]);
         if(!_loc2_)
         {
            this.StunP = new Point(6.75,-135.8);
            this.BurnP = new Point(3.5,-88.7);
         }
         this.PoisonP = new Point(4.6,-92.6);
         this.removeh = 25;
         if(!_loc2_)
         {
            mouseChildren = false;
            mouseEnabled = false;
         }
      }
      
      function frame8() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.xposinit = Vector.<Number>([getChildAt(0).x,-4.35]);
         this.StunP = new Point(1.7,-118.3);
         this.BurnP = new Point(-2.5,-86.7);
         this.PoisonP = new Point(4.6,-92.6);
         this.removeh = 0;
         if(!_loc1_)
         {
            mouseChildren = false;
            if(!_loc1_)
            {
               addr73:
               mouseEnabled = false;
            }
            return;
         }
         §§goto(addr73);
      }
      
      function frame9() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.xposinit = Vector.<Number>([getChildAt(0).x,-25.5]);
         this.StunP = new Point(3.35,-121.1);
         this.BurnP = new Point(-35.45,-95.15);
         this.PoisonP = new Point(12.1,-99.25);
         this.projectile = "SamuraiArrow";
         if(_loc1_)
         {
            this.removeh = 0;
            if(_loc1_)
            {
               addr71:
               mouseChildren = false;
               mouseEnabled = false;
            }
            return;
         }
         §§goto(addr71);
      }
   }
}
