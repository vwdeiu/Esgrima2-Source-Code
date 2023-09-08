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
   
   public dynamic class SkillMenu extends MovieClip
   {
       
      
      public var s10:Slot;
      
      public var s1:Slot;
      
      public var s11:Slot;
      
      public var s2:Slot;
      
      public var s12:Slot;
      
      public var s3:Slot;
      
      public var s13:Slot;
      
      public var s4:Slot;
      
      public var s14:Slot;
      
      public var s5:Slot;
      
      public var s15:Slot;
      
      public var s6:Slot;
      
      public var s16:Slot;
      
      public var s7:Slot;
      
      public var s8:Slot;
      
      public var s9:Slot;
      
      public var type:String;
      
      public var array:Array;
      
      public var n:int;
      
      public var reali:int;
      
      public var i2:int;
      
      public var skill:Vector.<String>;
      
      public var skilln:String;
      
      public var skillnn:String;
      
      public var lvl:int;
      
      public var lastused:int;
      
      public var cd:int;
      
      public var ready:int;
      
      public function SkillMenu()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               addr24:
               addFrameScript(0,this.frame1,9,this.frame10);
            }
            return;
         }
         §§goto(addr24);
      }
      
      function frame1() : *
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.type == "Potion")
            {
               this.array = root.pChar.Inventory;
            }
            else
            {
               this.array = root.pChar.Skills.Active;
            }
            this.n = numChildren;
            this.n = this.array.length;
            if(!_loc4_)
            {
               this.reali = 1;
               this.i2 = 1;
            }
         }
         while(this.i2 <= this.n)
         {
            this.skill = Vector.<String>(this.array[this.i2 - 1].split("_"));
            if(_loc3_)
            {
               this.skilln = this.skill[0];
               this.skillnn = this.skilln.split(" ").join("_");
               §§push(this.type);
               if(_loc3_)
               {
                  §§push("Potion");
                  if(_loc3_)
                  {
                     if(§§pop() == §§pop())
                     {
                        §§push(this.skilln);
                        if(!_loc4_)
                        {
                           §§push("Potion");
                           if(!_loc4_)
                           {
                              addr100:
                              §§push(§§pop().indexOf(§§pop()) < 0);
                              §§push(§§pop().indexOf(§§pop()) < 0);
                              if(_loc3_)
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                    §§push(this.skilln);
                                    if(_loc3_)
                                    {
                                       addr114:
                                       §§push("Resurrection Scroll");
                                       if(!_loc4_)
                                       {
                                          addr120:
                                          §§push(§§pop().indexOf(§§pop()) < 0);
                                          §§push(§§pop().indexOf(§§pop()) < 0);
                                          if(!_loc4_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(_loc3_)
                                                {
                                                   §§pop();
                                                   §§push(this.skilln);
                                                   if(!_loc4_)
                                                   {
                                                      addr132:
                                                      §§push("Water Potion");
                                                      if(!_loc4_)
                                                      {
                                                         addr139:
                                                         if(§§pop().indexOf(§§pop()) < 0)
                                                         {
                                                            addr141:
                                                            §§push(this.type);
                                                            if(_loc3_)
                                                            {
                                                               addr146:
                                                               if(§§pop() == "Skill")
                                                               {
                                                                  this.lvl = int(this.skill[1]);
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  trace(this.skilln + " lvl: " + this.lvl);
                                                                  if(_loc3_)
                                                                  {
                                                                     trace(this.i2);
                                                                     if(_loc3_)
                                                                     {
                                                                        root[this.skilln.split(" ").join("_")].LevelHave = this.lvl;
                                                                        addr187:
                                                                        §§push(this);
                                                                        §§push("s");
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(§§pop() + this.reali);
                                                                        }
                                                                        §§pop()[§§pop()].gotoAndStop(this.type);
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(this);
                                                                           §§push("s");
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§push(§§pop() + this.reali);
                                                                           }
                                                                           §§pop()[§§pop()].a.gotoAndStop(this.skilln);
                                                                           if(!_loc4_)
                                                                           {
                                                                              root.q.raster(this["s" + this.reali].a);
                                                                              addr228:
                                                                              §§push(this.skilln in root.items);
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr244:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       §§pop();
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr249:
                                                                                          §§push("Cooldown");
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(§§pop() in root.items[this.skilln]);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                addr263:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      addr266:
                                                                                                      §§pop();
                                                                                                      §§push(root.pChar.key + "_LastUsed");
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         addr278:
                                                                                                         §§push(§§pop() + this.skilln in root.cooldowns);
                                                                                                      }
                                                                                                      §§goto(addr278);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   this.lastused = root.cooldowns[root.pChar.key + "_LastUsed" + this.skilln];
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      this.cd = int(root.items[this.skilln].Cooldown.split("_")[1]);
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      addr316:
                                                                                                      §§push(this);
                                                                                                      §§push(this.lastused + 1);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§push(§§pop() + this.cd);
                                                                                                      }
                                                                                                      §§pop().ready = §§pop();
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         trace(this.skilln);
                                                                                                         trace("Last used: " + this.lastused);
                                                                                                         trace("Cooldown: " + this.cd);
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            addr348:
                                                                                                            if(root.turnid - this.lastused <= this.cd)
                                                                                                            {
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  trace("Not cooled down " + this.skilln);
                                                                                                               }
                                                                                                               §§push(this);
                                                                                                               §§push("s");
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + this.reali);
                                                                                                               }
                                                                                                               §§pop()[§§pop()].na.visible = true;
                                                                                                               addr375:
                                                                                                               §§push(this);
                                                                                                               §§push("s");
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + this.reali);
                                                                                                               }
                                                                                                               §§pop()[§§pop()].addChild(this["s" + this.reali].na);
                                                                                                               addr392:
                                                                                                               §§push(this);
                                                                                                               §§push("s");
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + this.reali);
                                                                                                               }
                                                                                                               §§pop()[§§pop()].na.numtxt.text = this.ready - root.turnid;
                                                                                                               addr409:
                                                                                                               §§push(this);
                                                                                                               §§push("s");
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + this.reali);
                                                                                                               }
                                                                                                               §§pop()[§§pop()].item = this.skilln;
                                                                                                               §§push(this);
                                                                                                               §§push("s");
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + this.reali);
                                                                                                               }
                                                                                                               §§pop()[§§pop()].mouseChildren = false;
                                                                                                               §§push(this);
                                                                                                               §§push("s");
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + this.reali);
                                                                                                               }
                                                                                                               §§pop()[§§pop()].slot = true;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr409);
                                                                                                   }
                                                                                                   var _loc1_:*;
                                                                                                   §§push((_loc1_ = this).reali);
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §§push(§§pop() + 1);
                                                                                                   }
                                                                                                   var _loc2_:* = §§pop();
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      _loc1_.reali = _loc2_;
                                                                                                   }
                                                                                                   addr456:
                                                                                                   §§push((_loc1_ = this).i2);
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §§push(§§pop() + 1);
                                                                                                   }
                                                                                                   _loc2_ = §§pop();
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      _loc1_.i2 = _loc2_;
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                §§goto(addr316);
                                                                                             }
                                                                                             §§goto(addr409);
                                                                                          }
                                                                                          §§goto(addr278);
                                                                                       }
                                                                                       §§goto(addr375);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr263);
                                                                           }
                                                                           §§goto(addr249);
                                                                        }
                                                                        §§goto(addr392);
                                                                     }
                                                                  }
                                                                  §§goto(addr375);
                                                               }
                                                               §§goto(addr187);
                                                            }
                                                            §§goto(addr228);
                                                         }
                                                         §§goto(addr456);
                                                      }
                                                   }
                                                   §§goto(addr146);
                                                }
                                                §§goto(addr266);
                                             }
                                             §§goto(addr139);
                                          }
                                          §§goto(addr244);
                                       }
                                       §§goto(addr139);
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr120);
                              }
                              §§goto(addr263);
                           }
                           §§goto(addr120);
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr141);
                  }
                  §§goto(addr100);
               }
               §§goto(addr132);
            }
            §§goto(addr348);
         }
         root.attachTool(this,this.type);
      }
      
      function frame10() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            stop();
         }
      }
   }
}
