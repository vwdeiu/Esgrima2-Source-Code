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
   
   public dynamic class Character extends MovieClip
   {
       
      
      public var endtxt:TextField;
      
      public var elementsbtn:SimpleButton;
      
      public var h1s:Slot;
      
      public var necklaces:Slot;
      
      public var h2s:Slot;
      
      public var backs:Slot;
      
      public var lucktxt:TextField;
      
      public var inttxt:TextField;
      
      public var mptxt:TextField;
      
      public var classtxt:TextField;
      
      public var drag:MovieClip;
      
      public var reptxt:TextField;
      
      public var r1s:Slot;
      
      public var wistxt:TextField;
      
      public var r2s:Slot;
      
      public var blktxt:TextField;
      
      public var bg:MovieClip;
      
      public var closebtn:Close;
      
      public var strtxt:TextField;
      
      public var lvltxt:TextField;
      
      public var apparels:Slot;
      
      public var hptxt:TextField;
      
      public var medals:Slot;
      
      public var dgetxt:TextField;
      
      public var luktxt:TextField;
      
      public var headwears:Slot;
      
      public var nametxt:TextField;
      
      public var pvpwins:TextField;
      
      public var boots:Slot;
      
      public var crittxt:TextField;
      
      public var hats:Slot;
      
      public var deftxt:TextField;
      
      public var armors:Slot;
      
      public var atktxt:TextField;
      
      public function Character()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(!_loc1_)
            {
               addr23:
               addFrameScript(0,this.frame1);
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function clickm(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1.target.name == "closebtn")
            {
               if(!_loc2_)
               {
                  this.close();
                  if(!_loc3_)
                  {
                  }
                  §§goto(addr49);
               }
            }
            else if(param1.target.name == "elementsbtn")
            {
               if(!_loc2_)
               {
                  root.openelements();
               }
            }
         }
         addr49:
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.clear();
            if(_loc1_)
            {
               MovieClip(root).q.removeChildFade(this);
               if(!_loc2_)
               {
                  addr37:
                  MovieClip(root).charmc = null;
               }
               return;
            }
         }
         §§goto(addr37);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            removeEventListener(MouseEvent.MOUSE_UP,this.up);
            if(_loc1_)
            {
               removeEventListener(MouseEvent.MOUSE_DOWN,this.down);
               if(_loc1_)
               {
                  addr43:
                  MovieClip(root).dettachTool(this);
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function generate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.listequip();
         }
         var _loc1_:DatabaseObject = MovieClip(root).pChar;
         var _loc2_:Object = root.playerstats;
         if(!_loc4_)
         {
            this.reptxt.text = "0";
            if(root.account.Reputation)
            {
               this.reptxt.text = root.account.Reputation;
               if(!_loc4_)
               {
                  addr48:
                  trace(".");
                  this.nametxt.text = _loc1_.key;
                  if(_loc3_)
                  {
                     this.lvltxt.text = _loc1_.Level;
                     if(!_loc4_)
                     {
                        this.classtxt.text = root.getTxt(_loc1_.Class,this.classtxt);
                        if(!_loc4_)
                        {
                           this.atktxt.text = _loc2_.ATK;
                           this.crittxt.text = "x" + _loc2_.CRIT;
                           this.deftxt.text = _loc2_.DEF;
                           this.pvpwins.text = _loc2_.PVPWIN;
                           trace("..");
                           addr90:
                           if(!_loc4_)
                           {
                              addr113:
                              this.dgetxt.text = root.q.round(_loc2_.DODGE * 100) + "%";
                              this.hptxt.text = _loc2_.HP;
                              addr130:
                              this.mptxt.text = _loc2_.MP;
                              if(!_loc4_)
                              {
                                 trace("...");
                                 this.strtxt.text = _loc2_.STR;
                                 this.endtxt.text = _loc2_.END;
                                 this.wistxt.text = _loc2_.WIS;
                                 this.luktxt.text = root.q.round(_loc2_.LUCK * 100) + "%";
                                 if(_loc3_)
                                 {
                                    this.lucktxt.text = _loc2_.LUK;
                                    addr183:
                                    this.inttxt.text = _loc2_.INT;
                                 }
                                 this.blktxt.text = _loc2_.BLOCK;
                                 visible = true;
                                 if(_loc4_)
                                 {
                                 }
                              }
                              §§goto(addr201);
                           }
                           root.statschanged = false;
                        }
                        addr201:
                        return;
                     }
                     §§goto(addr183);
                  }
                  §§goto(addr90);
               }
               §§goto(addr130);
            }
            §§goto(addr48);
         }
         §§goto(addr113);
      }
      
      public function down(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Bitmap = null;
         if(_loc5_)
         {
            §§push(Boolean(param1.target is MovieClip));
            if(_loc5_)
            {
               §§push(§§pop());
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     if(_loc5_)
                     {
                        §§goto(addr42);
                     }
                     §§goto(addr66);
                  }
               }
            }
            §§goto(addr42);
         }
         addr42:
         §§push(Boolean(param1.target.slot));
         if(Boolean(param1.target.slot))
         {
            if(!_loc4_)
            {
               §§pop();
               if(_loc5_)
               {
                  §§goto(addr62);
               }
               §§goto(addr72);
            }
            addr62:
            §§goto(addr63);
         }
         addr63:
         if(param1.target.item !== "None")
         {
            if(!_loc4_)
            {
               addr66:
               trace("Mouse down on inv slot");
               if(!_loc4_)
               {
                  addr72:
                  param1.target.id = 0;
               }
            }
            _loc2_ = MovieClip(root).dragb = new Bitmap(param1.target.bd,"auto",true);
            if(!_loc4_)
            {
               MovieClip(root).addChildAt(MovieClip(root).dragb,root.getChildIndex(MovieClip(root).mouse));
               if(_loc5_)
               {
                  MovieClip(root).dragmc = param1.target;
               }
            }
            _loc2_ = null;
         }
      }
      
      public function up(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Connection = null;
         if(_loc4_)
         {
            if(root.dragmc)
            {
               if(_loc4_)
               {
                  trace(root.dragmc.type);
               }
               addr127:
               _loc2_ = MovieClip(root).connection;
               if(_loc4_)
               {
                  if(MovieClip(root).battle)
                  {
                     if(!_loc3_)
                     {
                        addr151:
                        _loc2_ = MovieClip(root).battle;
                        addr157:
                        _loc2_.send("SwapSlots",MovieClip(root).dragmc.id,0,MovieClip(root).dragmc.arrayid,param1.target.arrayid);
                     }
                     §§goto(addr174);
                  }
                  §§goto(addr157);
               }
               §§goto(addr151);
            }
            §§push(param1.target is MovieClip);
            §§push(param1.target is MovieClip);
            if(_loc4_)
            {
               if(§§pop())
               {
                  §§pop();
                  §§push(Boolean(param1.target.slot));
               }
               if(§§pop())
               {
                  trace(param1.target.type);
               }
               §§push(param1.target is MovieClip);
               if(_loc4_)
               {
                  §§push(§§pop() && param1.target.slot);
                  if(§§pop() && param1.target.slot)
                  {
                     §§pop();
                     if(!_loc3_)
                     {
                        addr75:
                        §§push(Boolean(MovieClip(root).dragmc));
                        if(!_loc3_)
                        {
                           §§push(§§pop());
                           if(_loc4_)
                           {
                              if(§§pop())
                              {
                                 addr92:
                                 §§pop();
                                 if(!_loc3_)
                                 {
                                    §§push(param1.target === MovieClip(root).dragmc);
                                    if(_loc4_)
                                    {
                                       addr109:
                                       §§push(Boolean(!§§pop()));
                                       if(Boolean(!§§pop()))
                                       {
                                          §§pop();
                                          if(!_loc3_)
                                          {
                                             addr114:
                                             §§push(MovieClip(root).dragmc.type == param1.target.type);
                                          }
                                          §§goto(addr127);
                                       }
                                    }
                                    if(§§pop())
                                    {
                                       addr124:
                                       trace("Mouse up on equip");
                                       §§goto(addr127);
                                    }
                                    addr174:
                                    return;
                                 }
                                 §§goto(addr124);
                              }
                           }
                           §§goto(addr109);
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr75);
               }
            }
            §§goto(addr109);
         }
         §§goto(addr127);
      }
      
      public function listequip() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Object = MovieClip(root).pChar.Equip;
         if(!_loc3_)
         {
            trace("hat:" + _loc1_.Head[0]);
            MovieClip(root).setSlot(this.hats,_loc1_.Head[0]);
            if(_loc2_)
            {
               this.hats.slot = true;
               if(_loc2_)
               {
                  this.hats.type = "Head";
                  this.hats.arrayid = "Equip.Head";
                  if(_loc2_)
                  {
                     MovieClip(root).setSlot(this.medals,_loc1_.Medal[0]);
                     this.medals.slot = true;
                     this.medals.type = "Skill Manual";
                     if(_loc2_)
                     {
                        this.medals.arrayid = "Equip.Medal";
                        if(_loc2_)
                        {
                           MovieClip(root).setSlot(this.headwears,_loc1_.Headwear[0]);
                           this.headwears.slot = true;
                           this.headwears.type = "Head";
                           this.headwears.arrayid = "Equip.Headwear";
                           if(!_loc3_)
                           {
                              MovieClip(root).setSlot(this.h1s,_loc1_.H1[0]);
                              if(!_loc3_)
                              {
                                 this.h1s.slot = true;
                                 this.h1s.type = "Weapon";
                                 if(_loc2_)
                                 {
                                    this.h1s.arrayid = "Equip.H1";
                                    addr139:
                                    MovieClip(root).setSlot(this.h2s,_loc1_.H2[0]);
                                 }
                                 addr212:
                                 this.apparels.type = "Armor";
                                 this.apparels.arrayid = "Equip.Apparel";
                                 MovieClip(root).setSlot(this.r1s,_loc1_.R1[0]);
                                 this.r1s.slot = true;
                                 if(_loc2_)
                                 {
                                    this.r1s.type = "Ring";
                                    if(!_loc3_)
                                    {
                                       this.r1s.arrayid = "Equip.R1";
                                       §§goto(addr248);
                                    }
                                 }
                                 §§goto(addr301);
                              }
                              §§goto(addr139);
                           }
                           this.h2s.slot = true;
                           if(!_loc3_)
                           {
                              this.h2s.type = "Weapon";
                              this.h2s.arrayid = "Equip.H2";
                              if(!_loc3_)
                              {
                                 MovieClip(root).setSlot(this.armors,_loc1_.Armor[0]);
                                 addr184:
                                 this.armors.slot = true;
                                 this.armors.type = "Armor";
                                 this.armors.arrayid = "Equip.Armor";
                                 MovieClip(root).setSlot(this.apparels,_loc1_.Apparel[0]);
                                 if(!_loc3_)
                                 {
                                    this.apparels.slot = true;
                                    §§goto(addr212);
                                 }
                                 §§goto(addr301);
                                 addr167:
                              }
                              §§goto(addr212);
                           }
                           §§goto(addr293);
                        }
                        §§goto(addr268);
                     }
                     §§goto(addr212);
                  }
                  §§goto(addr167);
               }
               addr248:
               MovieClip(root).setSlot(this.r2s,_loc1_.R2[0]);
               this.r2s.slot = true;
               if(!_loc3_)
               {
                  this.r2s.type = "Ring";
                  addr268:
                  this.r2s.arrayid = "Equip.R2";
                  if(_loc2_)
                  {
                     MovieClip(root).setSlot(this.backs,_loc1_.Back[0]);
                     if(!_loc3_)
                     {
                        this.backs.slot = true;
                        if(_loc2_)
                        {
                           addr293:
                           this.backs.type = "Back";
                           this.backs.arrayid = "Equip.Back";
                        }
                        §§goto(addr301);
                     }
                     addr301:
                     MovieClip(root).setSlot(this.boots,_loc1_.Boots[0]);
                     §§goto(addr311);
                  }
                  §§goto(addr330);
               }
               addr311:
               this.boots.slot = true;
               if(!_loc3_)
               {
                  this.boots.type = "Boots";
                  if(_loc2_)
                  {
                     this.boots.arrayid = "Equip.Boots";
                     if(!_loc3_)
                     {
                        MovieClip(root).setSlot(this.necklaces,_loc1_.Necklace[0]);
                        addr330:
                     }
                  }
               }
               this.necklaces.slot = true;
               if(!_loc3_)
               {
                  this.necklaces.type = "Necklace";
               }
               this.necklaces.arrayid = "Equip.Necklace";
               return;
            }
            §§goto(addr184);
         }
         §§goto(addr139);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         addEventListener(MouseEvent.CLICK,this.clickm);
         root.translateButtons(this);
         if(!_loc2_)
         {
            MovieClip(root).q.createDrag(this.drag,this);
            visible = false;
            this.generate();
            addEventListener(MouseEvent.MOUSE_DOWN,this.down);
            if(!_loc2_)
            {
               addEventListener(MouseEvent.MOUSE_UP,this.up);
               if(!_loc2_)
               {
                  §§goto(addr72);
               }
            }
            §§goto(addr80);
         }
         addr72:
         MovieClip(root).attachTool(this);
         if(_loc1_)
         {
            addr80:
            MovieClip(root).q.raster(this.bg);
         }
      }
   }
}
