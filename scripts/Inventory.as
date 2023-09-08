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
   
   public dynamic class Inventory extends MovieClip
   {
       
      
      public var s37:Slot;
      
      public var s19:Slot;
      
      public var s28:Slot;
      
      public var s38:Slot;
      
      public var s29:Slot;
      
      public var s39:Slot;
      
      public var goldtxt:TextField;
      
      public var moneytxt:TextField;
      
      public var s40:Slot;
      
      public var s41:Slot;
      
      public var s42:Slot;
      
      public var rb:Slot;
      
      public var s43:Slot;
      
      public var s44:Slot;
      
      public var s0:Slot;
      
      public var drag:MovieClip;
      
      public var s45:Slot;
      
      public var s10:Slot;
      
      public var s1:Slot;
      
      public var s46:Slot;
      
      public var s11:Slot;
      
      public var s20:Slot;
      
      public var s2:Slot;
      
      public var bg:MovieClip;
      
      public var s30:Slot;
      
      public var s47:Slot;
      
      public var closebtn:Close;
      
      public var s12:Slot;
      
      public var s21:Slot;
      
      public var s3:Slot;
      
      public var s31:Slot;
      
      public var s13:Slot;
      
      public var s22:Slot;
      
      public var s4:Slot;
      
      public var s32:Slot;
      
      public var s23:Slot;
      
      public var s5:Slot;
      
      public var s14:Slot;
      
      public var s33:Slot;
      
      public var s6:Slot;
      
      public var s15:Slot;
      
      public var s24:Slot;
      
      public var s34:Slot;
      
      public var s7:Slot;
      
      public var s16:Slot;
      
      public var s25:Slot;
      
      public var s35:Slot;
      
      public var s8:Slot;
      
      public var s17:Slot;
      
      public var s26:Slot;
      
      public var s36:Slot;
      
      public var s9:Slot;
      
      public var s18:Slot;
      
      public var s27:Slot;
      
      public var over:Function;
      
      public var out:Function;
      
      public function Inventory()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(_loc1_)
            {
               addFrameScript(0,this.frame1);
            }
         }
      }
      
      public function close(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.clear();
            if(!_loc2_)
            {
               MovieClip(root).q.removeChildFade(this);
               if(!_loc2_)
               {
                  addr38:
                  MovieClip(root).invmc = null;
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            removeEventListener(MouseEvent.MOUSE_DOWN,this.down);
            if(!_loc1_)
            {
               removeEventListener(MouseEvent.MOUSE_UP,this.up);
               if(_loc2_)
               {
                  addr50:
                  removeEventListener(MouseEvent.MOUSE_OVER,this.over);
                  if(_loc2_)
                  {
                     §§goto(addr59);
                  }
               }
               §§goto(addr67);
            }
            §§goto(addr50);
         }
         addr59:
         removeEventListener(MouseEvent.MOUSE_OUT,this.out);
         if(_loc2_)
         {
            addr67:
            removeEventListener(MouseEvent.RIGHT_MOUSE_DOWN,this.rclick);
         }
      }
      
      public function generate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.listinv();
         }
      }
      
      public function listinv() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         var _loc1_:Vector.<String> = Vector.<String>(MovieClip(root).pChar.Inventory);
         if(!_loc4_)
         {
            trace("Inventory list: " + _loc1_);
         }
         var _loc2_:* = 30;
         if(_loc5_)
         {
            §§push("BP");
            if(!_loc4_)
            {
               §§push(§§pop() in root.account);
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     §§push(48);
                     if(!_loc4_)
                     {
                        _loc2_ = §§pop();
                        if(!_loc4_)
                        {
                           addr65:
                           MovieClip(root).itemlist(this,_loc1_,_loc2_,"Inventory");
                           if(!_loc4_)
                           {
                              §§goto(addr79);
                           }
                           §§goto(addr90);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr65);
               }
               addr79:
               §§goto(addr76);
            }
            addr76:
            if(!("BP" in root.account))
            {
               if(_loc5_)
               {
                  addr90:
                  §§push(30);
                  if(!_loc4_)
                  {
                     _loc3_ = §§pop();
                     if(_loc5_)
                     {
                        addr97:
                        loop0:
                        while(true)
                        {
                           §§push(_loc3_);
                           addr111:
                           while(§§pop() < 48)
                           {
                              root.setSlot(this["s" + _loc3_],"Locked");
                              if(!_loc4_)
                              {
                                 _loc3_++;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
                  §§goto(addr111);
               }
               §§goto(addr97);
            }
            return;
         }
         §§goto(addr65);
      }
      
      public function down(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Bitmap = null;
         if(!_loc4_)
         {
            §§push(param1.target is MovieClip);
            if(param1.target is MovieClip)
            {
               §§pop();
               §§goto(addr76);
            }
            §§push(Boolean(§§pop()));
            if(!_loc4_)
            {
               §§push(§§pop());
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     if(!_loc4_)
                     {
                        §§goto(addr56);
                     }
                     §§goto(addr88);
                  }
               }
               §§goto(addr69);
            }
            addr56:
            §§push(Boolean(param1.target.item !== "None"));
            if(!_loc4_)
            {
               addr69:
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     §§pop();
                     if(_loc5_)
                     {
                        §§goto(addr76);
                     }
                     §§goto(addr85);
                  }
               }
            }
            §§goto(addr76);
         }
         addr76:
         if(!_loc4_)
         {
            §§push(param1.target.slot);
         }
         if(param1.target.currentFrameLabel !== "Rubbish")
         {
            if(_loc5_)
            {
               addr85:
               trace("Mouse down on inv slot");
            }
            addr88:
            _loc2_ = MovieClip(root).dragb = new Bitmap(param1.target.bd,"auto",true);
            if(!_loc4_)
            {
               MovieClip(root).addChildAt(MovieClip(root).dragb,root.getChildIndex(MovieClip(root).mouse));
               if(_loc5_)
               {
                  addr130:
                  MovieClip(root).dragmc = param1.target;
               }
               _loc2_ = null;
               §§goto(addr139);
            }
            §§goto(addr130);
         }
         addr139:
      }
      
      public function rclick(param1:MouseEvent) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:Connection = null;
         trace("Right mouse");
         §§push(MovieClip(root).dragmc == null);
         §§push(MovieClip(root).dragmc == null);
         if(!_loc6_)
         {
            if(§§pop())
            {
               if(_loc5_)
               {
                  §§pop();
                  if(_loc5_)
                  {
                     addr46:
                     §§push(Boolean(param1.target is MovieClip && param1.target.slot));
                     if(!_loc6_)
                     {
                        §§push(§§pop());
                        if(!_loc6_)
                        {
                           addr72:
                           if(§§pop())
                           {
                              addr62:
                              §§pop();
                              addr68:
                              §§push(Boolean(param1.target.item !== "None"));
                           }
                           if(§§pop())
                           {
                              §§pop();
                              §§push(param1.target.currentFrame !== "Rubbish");
                              if(_loc5_)
                              {
                                 addr82:
                                 if(§§pop())
                                 {
                                    trace("Send equip");
                                    if(root[param1.target.item.split("_")[0] + "Function"])
                                    {
                                       root[param1.target.item.split("_")[0] + "Function"]();
                                       if(_loc5_)
                                       {
                                          return;
                                       }
                                       addr166:
                                       §§push(_loc2_);
                                    }
                                    else
                                    {
                                       §§goto(addr137);
                                    }
                                    §§goto(addr167);
                                 }
                                 §§goto(addr228);
                              }
                              addr137:
                              if("Useable" in root.items[param1.target.item.split("_")[0]])
                              {
                                 root.getC().send("UseItem",param1.target.item.split("_")[0]);
                                 if(!_loc6_)
                                 {
                                    return;
                                 }
                              }
                              else
                              {
                                 §§push(MovieClip(root).isEquipable(param1.target.item));
                                 if(_loc5_)
                                 {
                                    _loc2_ = §§pop();
                                    if(!_loc6_)
                                    {
                                       §§goto(addr166);
                                    }
                                 }
                                 addr167:
                                 if(§§pop() != "false")
                                 {
                                    _loc3_ = MovieClip(root).connection;
                                    if(!_loc6_)
                                    {
                                       if(MovieClip(root).battle)
                                       {
                                          if(_loc5_)
                                          {
                                             _loc3_ = MovieClip(root).battle;
                                          }
                                          §§goto(addr214);
                                       }
                                       if(MovieClip(root).pChar["Equip." + _loc2_] == param1.target.item)
                                       {
                                          if(!_loc5_)
                                          {
                                             §§goto(addr228);
                                          }
                                       }
                                       else
                                       {
                                          _loc3_.send("SwapSlots",param1.target.id,0,param1.target.arrayid,"Equip." + _loc2_);
                                          §§goto(addr228);
                                       }
                                       addr228:
                                       return;
                                    }
                                    addr214:
                                    return;
                                 }
                              }
                              return;
                           }
                           §§goto(addr82);
                        }
                        §§goto(addr72);
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr166);
               }
               §§goto(addr62);
            }
            §§goto(addr46);
         }
         §§goto(addr72);
      }
      
      public function up(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Connection = null;
         §§push(param1.target is MovieClip);
         if(_loc3_)
         {
            §§push(§§pop());
            if(§§pop())
            {
               §§pop();
               if(!_loc4_)
               {
                  addr36:
                  §§push(Boolean(param1.target.slot && MovieClip(root).dragmc));
                  §§push(Boolean(param1.target.slot && MovieClip(root).dragmc));
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           §§pop();
                           §§push(param1.target === MovieClip(root).dragmc);
                           if(_loc4_)
                           {
                           }
                           addr68:
                           §§push(§§pop());
                           if(!_loc4_)
                           {
                              addr72:
                              if(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    §§pop();
                                    if(!_loc4_)
                                    {
                                       addr92:
                                       §§push(Boolean(MovieClip(root).dragmc.slot));
                                       if(Boolean(MovieClip(root).dragmc.slot))
                                       {
                                          addr94:
                                          §§pop();
                                          §§push(MovieClip(root).dragmc.arrayid === "H1");
                                          if(_loc3_)
                                          {
                                             addr105:
                                             §§push(!§§pop());
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          §§goto(addr107);
                                       }
                                       §§goto(addr175);
                                    }
                                    addr107:
                                    _loc2_ = MovieClip(root).connection;
                                    if(_loc3_)
                                    {
                                       if(MovieClip(root).battle)
                                       {
                                          if(_loc3_)
                                          {
                                             _loc2_ = MovieClip(root).battle;
                                          }
                                          §§goto(addr155);
                                       }
                                       if(param1.target.currentFrameLabel == "Rubbish")
                                       {
                                          if(!_loc4_)
                                          {
                                             _loc2_.send("Bin",root.dragmc.item,root.dragmc.arrayid);
                                             if(_loc4_)
                                             {
                                                §§goto(addr175);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          _loc2_.send("SwapSlots",MovieClip(root).dragmc.id,param1.target.id,MovieClip(root).dragmc.arrayid,param1.target.arrayid);
                                          §§goto(addr175);
                                       }
                                       addr175:
                                       return;
                                    }
                                    addr155:
                                    return;
                                 }
                                 §§goto(addr105);
                              }
                           }
                           §§goto(addr92);
                        }
                        §§push(!§§pop());
                        if(_loc3_)
                        {
                           addr66:
                           §§goto(addr68);
                           §§push(Boolean(§§pop()));
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr72);
               }
               §§goto(addr94);
            }
            §§goto(addr36);
         }
         §§goto(addr66);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.closebtn.addEventListener(MouseEvent.CLICK,this.close);
            this.bg.invtxt.text = root.getTxt("Inventory",this.bg.invtxt);
            if(!_loc2_)
            {
               MovieClip(root).q.raster(this.bg);
               if(_loc1_)
               {
                  MovieClip(root).q.createDrag(this.drag,this);
                  addr62:
                  this.generate();
                  §§goto(addr64);
               }
               §§goto(addr99);
            }
            addr64:
            root.setSlot(this.rb,"Bin");
            if(!_loc2_)
            {
               addEventListener(MouseEvent.MOUSE_DOWN,this.down);
               addEventListener(MouseEvent.RIGHT_MOUSE_DOWN,this.rclick);
               if(_loc1_)
               {
                  addEventListener(MouseEvent.MOUSE_UP,this.up);
                  addr99:
                  MovieClip(root).attachTool(this);
               }
            }
            return;
         }
         §§goto(addr62);
      }
   }
}
