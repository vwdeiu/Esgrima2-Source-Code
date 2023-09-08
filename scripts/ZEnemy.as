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
   import fr.kouma.display.AnimatedBitmap;
   import playerio.*;
   
   public dynamic class ZEnemy extends MovieClip
   {
       
      
      public var xtra:MovieClip;
      
      public var deathdialog:String;
      
      public var deathquest:String;
      
      public var meetdialog:String;
      
      public var meetquest:String;
      
      public var slash:Boolean;
      
      public var projectile:String;
      
      public var intro:Boolean;
      
      public var iadd:int;
      
      public var worldx:int;
      
      public var worldy:int;
      
      public var ppos:Point;
      
      public var lastposx:Point;
      
      public var removeh:Number;
      
      public var hp:int;
      
      public var maxhp:int;
      
      public var mp:int;
      
      public var plvl:int;
      
      public var enemy:Boolean;
      
      public var group:int;
      
      public var buffs:Vector.<String>;
      
      public var pname:String;
      
      public var pclass:String;
      
      public var pface:int;
      
      public var pskin:uint;
      
      public var pequip:Vector.<String>;
      
      public var actionchain:Vector.<String>;
      
      public var action:String;
      
      public var battleaction:String;
      
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
      
      public var alphadummy:Object;
      
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
      
      public var commandclickable:Boolean;
      
      public var strikes:Vector.<String>;
      
      public var strike:int;
      
      public var atkNum:int;
      
      public var atkAnim:int;
      
      public var halfhalf:int;
      
      public var damageTexts:Vector.<Bitmap>;
      
      public var damageTextsData:Vector.<BitmapData>;
      
      public var hpmc:MovieClip;
      
      public var targetted:Boolean;
      
      public function ZEnemy()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(_loc1_)
            {
               addFrameScript(0,this.frame1,17,this.frame18,25,this.frame26,55,this.frame56,66,this.frame67,95,this.frame96,96,this.frame97,99,this.frame100,114,this.frame115,120,this.frame121,130,this.frame131,132,this.frame133,144,this.frame145,145,this.frame146,150,this.frame151,152,this.frame153,155,this.frame156,160,this.frame161,167,this.frame168,169,this.frame170,171,this.frame172,178,this.frame179,188,this.frame189,198,this.frame199);
            }
         }
      }
      
      public function init(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.removeh = 0;
         if(!_loc2_)
         {
            this.actionchain = new Vector.<String>();
            this.action = "";
            this.stance = "breathing";
            if(_loc3_)
            {
               this.alphadummy = {"alpha":1};
               this.arold = null;
               this.ar = null;
               this.damageTexts = new Vector.<Bitmap>();
               this.damageTextsData = new Vector.<BitmapData>();
               §§goto(addr45);
            }
            §§goto(addr74);
         }
         addr45:
         if(_loc3_)
         {
            this.h = height;
            if(_loc3_)
            {
               addr74:
               this.w = width;
               if(!_loc2_)
               {
                  §§push(this);
                  §§push(this.h);
                  if(_loc3_)
                  {
                     §§push(§§pop() / 2);
                  }
                  §§pop().h2 = §§pop();
               }
               §§push(this);
               §§push(this.w);
               if(_loc3_)
               {
                  §§push(§§pop() / 2);
               }
               §§pop().w2 = §§pop();
            }
         }
         this.hpmc = new BattleHP() as MovieClip;
      }
      
      public function calc() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.h = height;
            if(_loc2_)
            {
               addr24:
               this.w = width;
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function remove(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(this.titlebd)
         {
            this.titlebd.dispose();
            if(!_loc2_)
            {
               §§goto(addr25);
            }
            §§goto(addr65);
         }
         addr25:
         this.titlebd = null;
         §§push(Boolean(this.titleb));
         §§push(Boolean(this.titleb));
         if(!_loc2_)
         {
            if(§§pop())
            {
               §§pop();
               §§push(this.titleb.stage !== null);
            }
            if(§§pop())
            {
               this.titleb.parent.removeChild(this.titleb);
            }
            this.titleb = null;
            if(this.bubbler)
            {
               if(_loc3_)
               {
                  this.bubbler.bitmapData.dispose();
                  if(_loc3_)
                  {
                     addr65:
                     if(this.bubbler.stage !== null)
                     {
                        if(!_loc2_)
                        {
                           parent.removeChild(this.bubbler);
                           addr76:
                           bubller = null;
                           getChildAt(0).getChildAt(0).stop();
                           if(!_loc3_)
                           {
                           }
                           §§goto(addr189);
                        }
                        if(this.ar)
                        {
                           this.ar.stop();
                        }
                        if(this.arold)
                        {
                           this.arold.stop();
                        }
                        if(!MovieClip(root).q.vectorContains(MovieClip(root).battlelist,this.pname))
                        {
                           MovieClip(root).pmcs[this.pname + "_mc"] = null;
                           if(!_loc2_)
                           {
                              addr131:
                              MovieClip(root).playerRemove(this.pname);
                              if(_loc3_)
                              {
                                 trace("Removing mc from stage:");
                                 §§push(param1);
                                 if(!_loc2_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(!_loc2_)
                                       {
                                          MovieClip(root).q.removeChildFade(this.ar);
                                          addr168:
                                          this.ar = null;
                                          if(!_loc2_)
                                          {
                                             addr174:
                                             this.arold = null;
                                             if(!_loc2_)
                                             {
                                                §§goto(addr184);
                                             }
                                             §§goto(addr189);
                                          }
                                          §§goto(addr220);
                                       }
                                       §§goto(addr206);
                                    }
                                    else
                                    {
                                       this.ar.destroy();
                                       addr160:
                                       if(this.arold)
                                       {
                                          this.arold.destroy();
                                          if(!_loc2_)
                                          {
                                             §§goto(addr168);
                                          }
                                          §§goto(addr224);
                                       }
                                    }
                                    §§goto(addr168);
                                 }
                                 §§goto(addr189);
                              }
                              §§goto(addr174);
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr131);
                     }
                  }
                  §§goto(addr76);
               }
            }
            §§goto(addr76);
         }
         addr184:
         §§push(Boolean(this.xtra));
         if(Boolean(this.xtra))
         {
            §§pop();
            if(_loc3_)
            {
               addr189:
               §§goto(addr205);
            }
            §§goto(addr224);
         }
         addr205:
         §§push(this.xtra.stage === null);
         if(_loc3_)
         {
            §§push(!§§pop());
         }
         if(§§pop())
         {
            addr206:
            this.xtra.stop();
            root.removeChild(this.xtra);
         }
         root.q.toggleMC(this,"stop");
         if(_loc3_)
         {
            addr220:
            if(this.stage !== null)
            {
               addr224:
               root.q.remove(this);
            }
         }
      }
      
      public function createtitle() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(this.titlebd)
         {
            this.titlebd.dispose();
         }
         if(this.titleb)
         {
            if(!_loc1_)
            {
               removeChild(this.titleb);
               if(!_loc1_)
               {
                  addr34:
                  if(titlemc.txt.text == "")
                  {
                     if(!_loc1_)
                     {
                        titlemc.txt.text = root.getTxt("Level",titlemc.txt) + this.plvl;
                        addr42:
                        if(!_loc1_)
                        {
                           addr62:
                           titlemc.txt2.text = this.pname;
                           this.titlebd = new BitmapData(titlemc.width,titlemc.height,true,0);
                           if(!_loc1_)
                           {
                              this.titlebd.draw(titlemc);
                              if(!_loc1_)
                              {
                                 this.titleb = new Bitmap(this.titlebd,"auto",true);
                                 addr102:
                                 this.titleb.x = titlemc.x;
                                 this.titleb.y = titlemc.y;
                                 if(_loc2_)
                                 {
                                    addr114:
                                    root.addChild(this.titleb);
                                    addr118:
                                    titlemc.visible = false;
                                 }
                                 return;
                                 addr87:
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr87);
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr62);
               }
               §§goto(addr42);
            }
            §§goto(addr62);
         }
         §§goto(addr34);
      }
      
      public function createhp(param1:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Point = null;
         var _loc3_:Number = -1;
         if(_loc4_)
         {
            if(this.titlebd)
            {
               this.titlebd.dispose();
            }
            if(this.titleb)
            {
               _loc3_ = this.titleb.alpha;
               _loc2_ = new Point(this.titleb.x,this.titleb.y);
               if(_loc4_)
               {
                  if(this.titleb.stage !== null)
                  {
                     if(!_loc4_)
                     {
                     }
                     addr61:
                     this.hpmc.gotoAndStop(2);
                     if(_loc4_)
                     {
                        this.hpmc.lvltxt.text = root.getTxt("Level",!!this.hpmc.formatted ? null : this.hpmc.lvltxt) + " " + this.plvl;
                        if(_loc4_)
                        {
                           this.hpmc.nametxt.text = root.getTxt(this.pname,!!this.hpmc.formatted ? null : this.hpmc.nametxt);
                           if(!_loc5_)
                           {
                              addr121:
                              this.hpmc.formatted = true;
                              if(_loc4_)
                              {
                                 this.hpmc.hptxt.text = this.hp + "/" + this.maxhp;
                                 this.hpmc.hpbar.scaleX = this.hp / this.maxhp;
                                 if(this.buffs)
                                 {
                                    addr151:
                                    this.hpmc.createBuffs(this.buffs,root);
                                    addr157:
                                    this.titlebd = new BitmapData(this.hpmc.width,this.hpmc.height,true,0);
                                    stage.quality = "high";
                                    this.titlebd.draw(this.hpmc);
                                    stage.quality = "low";
                                    if(_loc4_)
                                    {
                                       addr182:
                                       this.titleb = new Bitmap(this.titlebd,"auto",true);
                                    }
                                    if(_loc2_ !== null)
                                    {
                                       this.titleb.x = _loc2_.x;
                                       this.titleb.y = _loc2_.y;
                                       addr198:
                                    }
                                    this.hpmc.visible = false;
                                    if(!_loc5_)
                                    {
                                       if(this.ar)
                                       {
                                          addr219:
                                          root.addChildAt(this.titleb,root.getChildIndex(root.chatmin) + 1);
                                       }
                                       return;
                                    }
                                    §§goto(addr219);
                                 }
                                 §§goto(addr157);
                              }
                              §§goto(addr182);
                           }
                           §§goto(addr198);
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr151);
                  }
                  §§goto(addr61);
               }
               root.removeChild(this.titleb);
            }
            §§goto(addr61);
         }
         §§goto(addr121);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            stop();
            if(_loc1_)
            {
               this.removeh = 0;
               if(_loc1_)
               {
                  addr36:
                  this.mp = 0;
                  if(!_loc1_)
                  {
                  }
                  §§goto(addr45);
               }
               this.enemy = true;
            }
            addr45:
            return;
         }
         §§goto(addr36);
      }
      
      function frame18() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.projectile = "GoblinArrow";
         }
      }
      
      function frame26() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.deathdialog = "Defeat";
         }
      }
      
      function frame56() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.projectile = "MaestroSplash";
         }
      }
      
      function frame67() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.projectile = "SkyArrow";
         }
      }
      
      function frame96() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.projectile = "SwampArrow";
         }
      }
      
      function frame97() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.projectile = "DestroyerRocket";
            if(!_loc2_)
            {
               this.meetdialog = "Meet";
               if(!_loc2_)
               {
                  this.meetquest = "Advanced Technology";
                  if(_loc1_)
                  {
                     addr40:
                     this.deathdialog = "Death";
                     if(!_loc1_)
                     {
                     }
                     §§goto(addr49);
                  }
               }
               this.deathquest = "Advanced Technology";
            }
            addr49:
            return;
         }
         §§goto(addr40);
      }
      
      function frame100() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.intro = true;
         }
      }
      
      function frame115() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.projectile = "Knife";
         }
      }
      
      function frame121() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.projectile = "Fireball";
         }
      }
      
      function frame131() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.projectile = "Fireball";
         }
      }
      
      function frame133() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.intro = true;
         }
      }
      
      function frame145() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.deathdialog = "Death";
         }
      }
      
      function frame146() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.projectile = "SwampArrow";
         }
      }
      
      function frame151() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.deathdialog = "GoodFight";
         }
      }
      
      function frame153() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.meetdialog = "Meet";
            if(!_loc2_)
            {
               this.meetquest = "The Archons of Dusk";
               if(_loc1_)
               {
                  this.deathdialog = "Death";
                  if(_loc1_)
                  {
                     addr41:
                     this.deathquest = "The Archons of Dusk";
                  }
               }
               return;
            }
         }
         §§goto(addr41);
      }
      
      function frame156() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.projectile = "SwampArrow";
         }
      }
      
      function frame161() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.projectile = "Fireball";
         }
      }
      
      function frame168() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.projectile = "SkyArrow";
         }
      }
      
      function frame170() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.projectile = "EnergyBall";
         }
      }
      
      function frame172() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.meetdialog = "Meet";
            if(_loc2_)
            {
               this.meetquest = "Secret Documents Ep.3";
            }
         }
      }
      
      function frame179() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.projectile = "SkyArrow";
         }
      }
      
      function frame189() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.projectile = "Shuriken";
         }
      }
      
      function frame199() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.deathdialog = "GoodFight";
         }
      }
   }
}
