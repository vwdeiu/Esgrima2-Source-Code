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
   import playerio.*;
   
   public dynamic class Warehouse extends MovieClip
   {
       
      
      public var drag:MovieClip;
      
      public var s0:Slot;
      
      public var s10:Slot;
      
      public var s1:Slot;
      
      public var s11:Slot;
      
      public var s2:Slot;
      
      public var bg:MovieClip;
      
      public var closebtn:Close;
      
      public var s3:Slot;
      
      public var s4:Slot;
      
      public var s5:Slot;
      
      public var s6:Slot;
      
      public var s7:Slot;
      
      public var s8:Slot;
      
      public var s9:Slot;
      
      public var over:Function;
      
      public var out:Function;
      
      public function Warehouse()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               addr24:
               addFrameScript(0,this.frame1);
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function close(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.clear();
            if(!_loc3_)
            {
               MovieClip(root).q.removeChildFade(this);
               if(!_loc3_)
               {
                  addr39:
                  MovieClip(root).warehousemc = null;
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            removeEventListener(MouseEvent.MOUSE_DOWN,this.down);
            if(_loc1_)
            {
               removeEventListener(MouseEvent.MOUSE_UP,this.up);
               if(_loc1_)
               {
                  removeEventListener(MouseEvent.MOUSE_OVER,this.over);
                  if(!_loc2_)
                  {
                     addr58:
                     removeEventListener(MouseEvent.MOUSE_OUT,this.out);
                  }
               }
               §§goto(addr58);
            }
            return;
         }
         §§goto(addr58);
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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Vector.<String> = Vector.<String>(MovieClip(root).account.Warehouse);
         var _loc2_:* = 4;
         if(_loc4_)
         {
            if("WarehouseSlots" in root.account)
            {
               if(!_loc5_)
               {
                  addr40:
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     §§push(int(§§pop() + root.account.WarehouseSlots));
                     if(_loc4_)
                     {
                        _loc2_ = §§pop();
                        §§goto(addr60);
                     }
                  }
                  §§goto(addr63);
               }
            }
            addr60:
            §§push(_loc2_);
            if(!_loc5_)
            {
               addr63:
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!_loc5_)
            {
               while(_loc3_ < 12)
               {
                  root.setSlot(this["s" + _loc3_],"Locked");
                  if(!_loc5_)
                  {
                     _loc3_++;
                  }
               }
               if(_loc4_)
               {
                  trace("Inventory list: " + _loc1_);
                  if(_loc5_)
                  {
                  }
                  §§goto(addr109);
               }
               MovieClip(root).itemlist(this,_loc1_,_loc2_,"Warehouse");
            }
            addr109:
            return;
         }
         §§goto(addr40);
      }
      
      public function down(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Bitmap = null;
         if(_loc4_)
         {
            §§push(param1.target is MovieClip);
            if(param1.target is MovieClip)
            {
               §§pop();
               §§goto(addr91);
            }
            §§push(Boolean(§§pop()));
            if(!_loc5_)
            {
               §§push(§§pop());
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        §§pop();
                        if(!_loc5_)
                        {
                           §§push(param1.target.item === "None");
                           if(!_loc4_)
                           {
                           }
                           addr71:
                           if(§§pop())
                           {
                              if(!_loc5_)
                              {
                                 addr75:
                                 §§pop();
                                 if(!_loc5_)
                                 {
                                    §§goto(addr85);
                                 }
                                 §§goto(addr88);
                              }
                           }
                           addr85:
                           if(param1.target.currentFrameLabel !== "Locked")
                           {
                              if(_loc4_)
                              {
                                 addr88:
                                 trace("Mouse down on inv slot");
                              }
                           }
                        }
                        §§goto(addr91);
                     }
                     §§push(Boolean(!§§pop()));
                     if(!_loc5_)
                     {
                        §§goto(addr71);
                     }
                     §§goto(addr85);
                  }
               }
               §§goto(addr71);
            }
            §§goto(addr75);
         }
         addr91:
         if(!_loc5_)
         {
            §§push(param1.target.slot);
         }
         _loc2_ = MovieClip(root).dragb = new Bitmap(param1.target.bd,"auto",true);
         if(!_loc5_)
         {
            MovieClip(root).addChildAt(MovieClip(root).dragb,root.getChildIndex(MovieClip(root).mouse));
            if(_loc4_)
            {
               MovieClip(root).dragmc = param1.target;
            }
         }
         _loc2_ = null;
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
                  addr35:
                  §§push(param1.target.slot);
                  if(param1.target.slot)
                  {
                     §§pop();
                     §§push(param1.target.currentFrameLabel === "Locked");
                     if(_loc3_)
                     {
                        addr49:
                        §§push(Boolean(!§§pop() && MovieClip(root).dragmc));
                        if(!_loc4_)
                        {
                           §§push(§§pop());
                           if(_loc3_)
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 if(!_loc4_)
                                 {
                                    §§push(param1.target === MovieClip(root).dragmc);
                                    if(!_loc4_)
                                    {
                                       addr85:
                                       §§push(!§§pop());
                                       if(_loc3_)
                                       {
                                          §§goto(addr91);
                                       }
                                       §§goto(addr114);
                                    }
                                    §§goto(addr95);
                                 }
                                 §§goto(addr116);
                              }
                              addr91:
                              §§push(Boolean(§§pop()));
                              §§push(Boolean(§§pop()));
                              if(_loc3_)
                              {
                                 if(§§pop())
                                 {
                                    addr95:
                                    §§pop();
                                 }
                                 §§goto(addr102);
                              }
                              addr102:
                              §§push(Boolean(MovieClip(root).dragmc.slot));
                              if(Boolean(MovieClip(root).dragmc.slot))
                              {
                                 §§pop();
                                 §§push(MovieClip(root).dragmc.arrayid === "H1");
                                 if(_loc3_)
                                 {
                                    addr114:
                                    §§push(!§§pop());
                                 }
                              }
                              if(§§pop())
                              {
                                 addr116:
                                 _loc2_ = MovieClip(root).connection;
                                 if(!_loc4_)
                                 {
                                    if(MovieClip(root).battle)
                                    {
                                       if(!_loc4_)
                                       {
                                          _loc2_ = MovieClip(root).battle;
                                          addr132:
                                       }
                                       §§goto(addr165);
                                    }
                                    root.getC().send("SwapSlots",MovieClip(root).dragmc.id,param1.target.id,MovieClip(root).dragmc.arrayid,param1.target.arrayid);
                                    §§goto(addr165);
                                 }
                                 §§goto(addr132);
                              }
                              addr165:
                              return;
                           }
                        }
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr49);
               }
               §§goto(addr95);
            }
            §§goto(addr35);
         }
         §§goto(addr85);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.closebtn.addEventListener(MouseEvent.CLICK,this.close);
         if(_loc2_)
         {
            this.bg.init();
            MovieClip(root).q.raster(this.bg);
            if(!_loc1_)
            {
               MovieClip(root).q.createDrag(this.drag,this);
               this.generate();
               if(!_loc1_)
               {
                  addEventListener(MouseEvent.MOUSE_DOWN,this.down);
                  addr70:
                  addEventListener(MouseEvent.MOUSE_UP,this.up);
                  if(_loc2_)
                  {
                     MovieClip(root).attachTool(this);
                  }
               }
            }
            return;
         }
         §§goto(addr70);
      }
   }
}
