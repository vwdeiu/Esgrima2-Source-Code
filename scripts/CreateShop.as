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
   
   public dynamic class CreateShop extends MovieClip
   {
       
      
      public var s0:Slot;
      
      public var drag:MovieClip;
      
      public var s10:Slot;
      
      public var s1:Slot;
      
      public var s11:Slot;
      
      public var s2:Slot;
      
      public var bg:MovieClip;
      
      public var closebtn:Close;
      
      public var s12:Slot;
      
      public var s3:Slot;
      
      public var s13:Slot;
      
      public var s4:Slot;
      
      public var s5:Slot;
      
      public var s14:Slot;
      
      public var s6:Slot;
      
      public var s7:Slot;
      
      public var s8:Slot;
      
      public var s9:Slot;
      
      public var p:MovieClip;
      
      public var full:Boolean;
      
      public var wares:Vector.<String>;
      
      public function CreateShop()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(!_loc2_)
            {
               addFrameScript(0,this.frame1);
            }
         }
      }
      
      public function list() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:MovieClip = null;
         if(_loc5_)
         {
            this.full = false;
            if(_loc5_)
            {
               if(this.p.pname !== root.pChar.key)
               {
                  if(!_loc6_)
                  {
                     this.wares = this.p.shop;
                     if(!_loc6_)
                     {
                        addr43:
                     }
                  }
                  §§goto(addr43);
               }
               else
               {
                  this.wares = Vector.<String>(root.pChar.Shop);
               }
               var _loc1_:* = 5;
               if(_loc5_)
               {
                  if("ShopSlots" in root.account)
                  {
                     if(!_loc6_)
                     {
                        §§push(_loc1_);
                        if(_loc5_)
                        {
                           §§push(int(§§pop() + root.account.ShopSlots));
                           if(_loc5_)
                           {
                              addr77:
                              _loc1_ = §§pop();
                              §§push(int(this.wares.length));
                           }
                           var _loc2_:* = §§pop();
                           var _loc3_:int = 0;
                           if(!_loc6_)
                           {
                              while(_loc3_ < 15)
                              {
                                 §§push(this);
                                 §§push("s");
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() + _loc3_);
                                 }
                                 (_loc4_ = §§pop()[§§pop()]).id = _loc3_;
                                 §§push(_loc3_);
                                 if(_loc5_)
                                 {
                                    §§push(_loc1_);
                                    if(_loc5_)
                                    {
                                       §§push(§§pop() >= §§pop());
                                       if(_loc5_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                addr126:
                                                §§pop();
                                                §§push(this.p.pname == root.pChar.key);
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             root.setSlot(_loc4_,"Locked");
                                          }
                                          else
                                          {
                                             §§push(_loc3_);
                                             if(_loc5_)
                                             {
                                                addr143:
                                                §§push(_loc2_);
                                                if(!_loc6_)
                                                {
                                                   addr147:
                                                   if(§§pop() < §§pop())
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         root.setSlot(_loc4_,this.wares[_loc3_]);
                                                         addr167:
                                                         addr166:
                                                         if(_loc3_ + 1 >= _loc1_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               this.full = true;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      root.setSlot(_loc4_,"None");
                                                      if(_loc6_)
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   _loc4_.slot = true;
                                                   addr185:
                                                   _loc3_++;
                                                   continue;
                                                }
                                                §§goto(addr167);
                                             }
                                             §§goto(addr166);
                                          }
                                          §§goto(addr185);
                                       }
                                       §§goto(addr126);
                                    }
                                    §§goto(addr147);
                                 }
                                 §§goto(addr143);
                              }
                           }
                           return;
                        }
                        §§goto(addr77);
                     }
                  }
               }
               §§goto(addr77);
            }
         }
         §§goto(addr43);
      }
      
      public function mouseup(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(!root.dragmc);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     §§pop();
                     if(_loc3_)
                     {
                        §§goto(addr45);
                     }
                     return;
                  }
               }
            }
            addr45:
            if(!root.dragmc.item)
            {
               if(!_loc3_)
               {
                  §§goto(addr54);
               }
            }
            else
            {
               root.addshop(root.dragmc.item);
               §§goto(addr54);
            }
            §§goto(addr54);
         }
         addr54:
      }
      
      public function mouseclick(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1.target is MovieClip);
            if(!_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_)
               {
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        §§goto(addr139);
                     }
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     §§pop();
                     §§push(param1.target.item === "None");
                     if(!_loc3_)
                     {
                     }
                  }
                  §§goto(addr54);
               }
               §§push(!§§pop());
            }
            addr54:
            if(§§pop())
            {
               if(this.p.pname !== root.pChar.key)
               {
                  root.amountbuy(param1.target.item.split("?")[0],"PlayerBuy",uint(param1.target.item.split("?")[1]),this.p.pname + "_" + param1.target.id);
                  if(_loc2_)
                  {
                  }
               }
               else if(this.p.pname == root.pChar.key)
               {
                  if(_loc3_)
                  {
                     root.amountbuy(param1.target.item,"PlayerBuy",0,this.p.pname + "_" + param1.target.id);
                  }
               }
            }
            else if(param1.target.name == "closebtn")
            {
               §§goto(addr139);
            }
            §§goto(addr139);
         }
         addr139:
         if(!_loc2_)
         {
            §§push(Boolean(param1.target.slot));
         }
         this.close();
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            removeEventListener(MouseEvent.CLICK,this.mouseclick);
            if(!_loc1_)
            {
               §§goto(addr33);
            }
            §§goto(addr42);
         }
         addr33:
         removeEventListener(MouseEvent.MOUSE_UP,this.mouseup);
         if(_loc2_)
         {
            addr42:
            root.dettachTool(this);
         }
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.clear();
            if(_loc2_)
            {
               root.pshopmc = null;
               if(!_loc1_)
               {
                  addr28:
                  root.q.removeChildFade(this);
               }
            }
            return;
         }
         §§goto(addr28);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.bg.itemstxt.text = root.getTxt("Items",this.bg.itemstxt);
         this.bg.txt.text = this.p.pname + "\'s " + root.getTxt("Shop",this.bg.txt);
         root.q.raster(this.bg);
         if(_loc1_)
         {
            if(!root.pChar.Shop)
            {
               root.pChar.Shop = [];
               if(_loc1_)
               {
                  addr66:
                  this.list();
               }
               if(this.p.pname !== root.pChar.key)
               {
                  addr92:
                  addEventListener(MouseEvent.CLICK,this.mouseclick);
               }
               else
               {
                  addEventListener(MouseEvent.MOUSE_UP,this.mouseup);
                  if(_loc1_)
                  {
                     §§goto(addr92);
                  }
               }
               root.attachTool(this);
               §§goto(addr101);
            }
            §§goto(addr66);
         }
         addr101:
         root.q.createDrag(this.drag,this);
      }
   }
}
