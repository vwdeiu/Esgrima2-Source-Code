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
   
   public dynamic class MemberRC extends MovieClip
   {
       
      
      public var PromoteBtn:SimpleButton;
      
      public var KickBtn:SimpleButton;
      
      public var MakeLeaderBtn:SimpleButton;
      
      public var bg:MovieClip;
      
      public var closebtn:Close;
      
      public var DemoteBtn:SimpleButton;
      
      public var reali:int;
      
      public var lastbtn:SimpleButton;
      
      public var ranks:Vector.<String>;
      
      public var btns:Vector.<String>;
      
      public var n:int;
      
      public var member:String;
      
      public var membero:DatabaseObject;
      
      public var mc:MovieClip;
      
      public var i:int;
      
      public var btnn:String;
      
      public var btn:SimpleButton;
      
      public function MemberRC()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               addFrameScript(0,this.frame1);
            }
         }
      }
      
      public function removed(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            removeEventListener(MouseEvent.CLICK,this.clicked);
            if(!_loc2_)
            {
               addr26:
               removeEventListener(Event.REMOVED_FROM_STAGE,this.removed);
            }
            return;
         }
         §§goto(addr26);
      }
      
      public function clicked(param1:Event) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         var _loc6_:* = 0;
         var _loc2_:String = param1.target.name;
         var _loc3_:* = 0;
         if(!_loc8_)
         {
            §§push(_loc2_);
            if(!_loc8_)
            {
               §§push("PromoteBtn");
               if(!_loc8_)
               {
                  §§push(§§pop() == §§pop());
                  §§push(§§pop() == §§pop());
                  if(!_loc8_)
                  {
                     if(!§§pop())
                     {
                        §§pop();
                        if(!_loc8_)
                        {
                           §§push(_loc2_);
                           if(_loc7_)
                           {
                              §§push("DemoteBtn");
                              if(_loc7_)
                              {
                                 addr54:
                                 §§push(§§pop() == §§pop());
                                 §§push(§§pop() == §§pop());
                                 if(!_loc8_)
                                 {
                                    addr58:
                                    if(!§§pop())
                                    {
                                       §§pop();
                                       if(_loc7_)
                                       {
                                          §§push(_loc2_);
                                          if(!_loc8_)
                                          {
                                             addr66:
                                             §§push("MakeLeaderBtn");
                                             if(!_loc8_)
                                             {
                                                addr70:
                                                if(§§pop() == §§pop())
                                                {
                                                   root.getC().send("PromoteDemote",_loc2_.split("Btn")[0],this.member);
                                                   if(!_loc8_)
                                                   {
                                                      §§push(0);
                                                      if(_loc7_)
                                                      {
                                                         _loc4_ = §§pop();
                                                         if(_loc7_)
                                                         {
                                                            loop1:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               if(_loc7_)
                                                               {
                                                                  if(§§pop() >= this.ranks.length)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(Boolean(this.mc));
                                                                        §§push(Boolean(this.mc));
                                                                        if(!_loc8_)
                                                                        {
                                                                           addr192:
                                                                           if(§§pop())
                                                                           {
                                                                              §§pop();
                                                                              §§push(this.mc.stage !== null);
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              this.mc.o.GuildRank = this.ranks[_loc3_];
                                                                              addr209:
                                                                              this.mc.displayrank();
                                                                              if(!_loc8_)
                                                                              {
                                                                                 addr215:
                                                                                 §§push(this.mc.o.GuildRank == "Leader");
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          §§pop();
                                                                                          §§push(root.pChar.GuildRank == "Leader");
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             addr238:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                this.mc.parent.parent.pmc.o.GuildRank = "Officer";
                                                                                                this.mc.parent.parent.pmc.displayrank();
                                                                                                root.pChar.GuildRank = "Officer";
                                                                                                addr355:
                                                                                                return;
                                                                                                addr257:
                                                                                             }
                                                                                             §§goto(addr257);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr282:
                                                                                             §§pop();
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                addr290:
                                                                                                if(root.guildmc.a2)
                                                                                                {
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      addr293:
                                                                                                      §§push(int(root.guildmc.a2.length));
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         addr301:
                                                                                                         _loc6_ = §§pop();
                                                                                                         addr302:
                                                                                                         §§push(0);
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      _loc4_ = §§pop();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc4_);
                                                                                                         break loop1;
                                                                                                      }
                                                                                                      addr343:
                                                                                                   }
                                                                                                   §§goto(addr302);
                                                                                                }
                                                                                                §§goto(addr355);
                                                                                             }
                                                                                             §§goto(addr302);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr238);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr281:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          §§goto(addr282);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr290);
                                                                                 }
                                                                                 §§goto(addr238);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr269:
                                                                                 root.getC().send("GuildKick",this.member);
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    addr277:
                                                                                    §§goto(addr281);
                                                                                    §§push(Boolean(root.guildmc));
                                                                                    §§push(Boolean(root.guildmc));
                                                                                 }
                                                                                 §§goto(addr355);
                                                                              }
                                                                           }
                                                                           §§goto(addr355);
                                                                        }
                                                                        §§goto(addr281);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr353:
                                                                        this.close();
                                                                        §§goto(addr355);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(this.ranks[_loc4_]);
                                                                     if(!_loc8_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!_loc8_)
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           if(!_loc7_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(this.membero.GuildRank == _loc5_)
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§push(_loc2_);
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§push("PromoteBtn");
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(§§pop() == §§pop())
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             §§push(§§pop() + 1);
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                §§push(int(§§pop()));
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   _loc3_ = §§pop();
                                                                                                   addr132:
                                                                                                   §§push(_loc2_);
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      §§push("DemoteBtn");
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         addr139:
                                                                                                         if(§§pop() == §§pop())
                                                                                                         {
                                                                                                            §§push(_loc4_);
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               addr143:
                                                                                                               §§push(§§pop() - 1);
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  §§push(int(§§pop()));
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr164:
                                                                                                                  _loc3_ = §§pop();
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     addr175:
                                                                                                                     _loc4_++;
                                                                                                                  }
                                                                                                                  continue;
                                                                                                               }
                                                                                                               addr163:
                                                                                                               §§goto(addr164);
                                                                                                               §§push(int(§§pop()));
                                                                                                            }
                                                                                                            _loc3_ = §§pop();
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               addr153:
                                                                                                               §§push(_loc2_);
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  addr158:
                                                                                                                  if(§§pop() == "MakeLeaderBtn")
                                                                                                                  {
                                                                                                                  }
                                                                                                                  §§goto(addr175);
                                                                                                               }
                                                                                                               addr162:
                                                                                                               §§goto(addr163);
                                                                                                               §§push(§§pop() - 1);
                                                                                                            }
                                                                                                            §§goto(addr162);
                                                                                                            §§push(this.ranks.length);
                                                                                                         }
                                                                                                         §§goto(addr153);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr158);
                                                                                                }
                                                                                                §§goto(addr164);
                                                                                             }
                                                                                             §§goto(addr163);
                                                                                          }
                                                                                          §§goto(addr143);
                                                                                       }
                                                                                       §§goto(addr132);
                                                                                    }
                                                                                    §§goto(addr139);
                                                                                 }
                                                                                 §§goto(addr153);
                                                                              }
                                                                           }
                                                                           §§goto(addr175);
                                                                        }
                                                                     }
                                                                     §§goto(addr158);
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            for(; §§pop() < _loc6_; §§goto(addr343))
                                                            {
                                                               if(root.guildmc.a2[_loc4_].key == this.membero.key)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     root.guildmc.a2.splice(_loc4_,1);
                                                                     if(_loc8_)
                                                                     {
                                                                     }
                                                                     addr342:
                                                                     _loc4_++;
                                                                     continue;
                                                                  }
                                                                  root.guildmc.list();
                                                                  if(_loc8_)
                                                                  {
                                                                     continue;
                                                                  }
                                                               }
                                                               §§goto(addr342);
                                                            }
                                                            if(!_loc8_)
                                                            {
                                                               §§goto(addr290);
                                                            }
                                                            §§goto(addr355);
                                                         }
                                                         §§goto(addr215);
                                                      }
                                                      §§goto(addr301);
                                                   }
                                                   §§goto(addr209);
                                                }
                                                else
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc7_)
                                                   {
                                                      addr262:
                                                      §§push("KickBtn");
                                                      if(_loc7_)
                                                      {
                                                         addr266:
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               §§goto(addr269);
                                                            }
                                                            §§goto(addr301);
                                                         }
                                                         else
                                                         {
                                                            addr351:
                                                            §§push(_loc2_);
                                                            §§push("closebtn");
                                                         }
                                                         §§goto(addr355);
                                                      }
                                                      if(§§pop() == §§pop())
                                                      {
                                                         §§goto(addr353);
                                                      }
                                                   }
                                                   §§goto(addr351);
                                                }
                                             }
                                             §§goto(addr266);
                                          }
                                          §§goto(addr262);
                                       }
                                       §§goto(addr277);
                                    }
                                    §§goto(addr70);
                                 }
                                 §§goto(addr192);
                              }
                              §§goto(addr266);
                           }
                           §§goto(addr351);
                        }
                        §§goto(addr293);
                     }
                     §§goto(addr54);
                  }
                  §§goto(addr58);
               }
               §§goto(addr70);
            }
            §§goto(addr66);
         }
         §§goto(addr293);
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            root.guildrc = null;
            if(!_loc2_)
            {
               addr22:
               root.q.removeChildFade(this);
            }
            return;
         }
         §§goto(addr22);
      }
      
      function frame1() : *
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         this.reali = 0;
         if(!_loc4_)
         {
            this.ranks = Vector.<String>(["Recruit","Member","Officer","Leader"]);
            if(_loc3_)
            {
               this.btns = Vector.<String>(["Promote","Demote","Kick","MakeLeader"]);
               this.n = this.btns.length;
               if(!_loc4_)
               {
                  root.translateButtons(this,0.6,0);
                  if(_loc3_)
                  {
                     this.i = 0;
                  }
                  §§goto(addr66);
               }
               §§goto(addr372);
            }
            addr66:
            while(this.i < this.n)
            {
               this.btnn = this.btns[this.i];
               if(!_loc3_)
               {
                  continue;
               }
               this.btn = this[this.btnn + "Btn"];
               this.btn.visible = false;
               if(!_loc4_)
               {
                  §§push(this.btnn);
                  if(!_loc4_)
                  {
                     §§push("Promote");
                     if(!_loc4_)
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc3_)
                        {
                           §§push(§§pop());
                           if(_loc3_)
                           {
                              if(!§§pop())
                              {
                                 §§pop();
                                 §§push(this.btnn);
                                 if(_loc3_)
                                 {
                                    §§push("Demote");
                                    if(_loc3_)
                                    {
                                       addr114:
                                       §§push(§§pop() == §§pop());
                                       §§push(§§pop() == §§pop());
                                       if(!_loc4_)
                                       {
                                          if(!§§pop())
                                          {
                                             §§pop();
                                             if(_loc3_)
                                             {
                                                §§push(this.btnn);
                                                if(_loc3_)
                                                {
                                                   addr126:
                                                   §§push("MakeLeader");
                                                   if(!_loc4_)
                                                   {
                                                      addr129:
                                                      §§push(§§pop() == §§pop());
                                                      if(!_loc4_)
                                                      {
                                                         addr132:
                                                         §§push(§§pop());
                                                         if(_loc3_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  §§pop();
                                                                  §§push(root.pChar.GuildRank === "Leader");
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr150:
                                                                        if(!§§pop())
                                                                        {
                                                                           §§push(this.btnn);
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§push("Promote");
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§push(this.membero.GuildRank == "Officer");
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             addr176:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr319:
                                                                                                var _loc1_:*;
                                                                                                §§push((_loc1_ = this).i);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§push(§§pop() + 1);
                                                                                                }
                                                                                                var _loc2_:* = §§pop();
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   _loc1_.i = _loc2_;
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             §§push(this.btnn);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                addr190:
                                                                                                §§push("Demote");
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   addr194:
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               addr207:
                                                                                                               §§push(this.membero.GuildRank == "Recruit");
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  addr215:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     §§goto(addr319);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr220:
                                                                                                                     §§push(this.btnn == "Kick");
                                                                                                                     if(this.btnn == "Kick")
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        addr229:
                                                                                                                        §§push(root.pChar.GuildRank !== "Officer");
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           addr232:
                                                                                                                           addr233:
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              addr249:
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 addr236:
                                                                                                                                 §§pop();
                                                                                                                                 §§push(this.membero.GuildRank == "Officer");
                                                                                                                              }
                                                                                                                              §§pop();
                                                                                                                              §§push(this.membero.GuildRank == "Leader");
                                                                                                                              if(this.membero.GuildRank == "Leader")
                                                                                                                              {
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    addr259:
                                                                                                                                    §§pop();
                                                                                                                                    addr266:
                                                                                                                                    if(root.pChar.GuildRank === "Leader")
                                                                                                                                    {
                                                                                                                                       this.btn.y = 12.9 + this.reali * this.btn.height;
                                                                                                                                       if(this.reali > 0)
                                                                                                                                       {
                                                                                                                                          this.btn.y += 2.6;
                                                                                                                                       }
                                                                                                                                       this.btn.visible = true;
                                                                                                                                       §§push((_loc1_ = this).reali);
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + 1);
                                                                                                                                       }
                                                                                                                                       _loc2_ = §§pop();
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          _loc1_.reali = _loc2_;
                                                                                                                                       }
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       this.lastbtn = this.btn;
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr319);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr266);
                                                                                                                           }
                                                                                                                           §§push(§§pop());
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr249);
                                                                                                                                 }
                                                                                                                                 §§goto(addr259);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr249);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr236);
                                                                                                            }
                                                                                                            §§goto(addr232);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr233);
                                                                                                   }
                                                                                                   §§goto(addr215);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr220);
                                                                                             §§goto(addr319);
                                                                                          }
                                                                                          §§goto(addr259);
                                                                                       }
                                                                                       §§goto(addr249);
                                                                                    }
                                                                                    §§goto(addr176);
                                                                                 }
                                                                                 §§goto(addr220);
                                                                              }
                                                                              §§goto(addr194);
                                                                           }
                                                                           §§goto(addr190);
                                                                        }
                                                                        §§goto(addr319);
                                                                     }
                                                                     §§goto(addr229);
                                                                  }
                                                                  §§goto(addr259);
                                                               }
                                                            }
                                                            §§goto(addr150);
                                                         }
                                                         §§goto(addr232);
                                                      }
                                                      §§goto(addr249);
                                                   }
                                                   §§goto(addr194);
                                                }
                                                §§goto(addr220);
                                             }
                                             §§goto(addr236);
                                          }
                                          §§goto(addr132);
                                       }
                                    }
                                    §§goto(addr220);
                                 }
                                 §§goto(addr126);
                              }
                              §§goto(addr114);
                           }
                           §§goto(addr249);
                        }
                        §§goto(addr259);
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr190);
               }
               §§goto(addr207);
            }
            this.bg.height = this.lastbtn.y + this.lastbtn.height / 2 + 2.6;
            §§goto(addr340);
         }
         addr340:
         if(_loc3_)
         {
            addEventListener(MouseEvent.CLICK,this.clicked);
            if(_loc3_)
            {
               addr372:
               addEventListener(Event.REMOVED_FROM_STAGE,this.removed);
            }
         }
      }
   }
}
