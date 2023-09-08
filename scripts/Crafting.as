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
   
   public dynamic class Crafting extends MovieClip
   {
       
      
      public var denartxt:TextField;
      
      public var craftbtn:SimpleButton;
      
      public var cs:Slot;
      
      public var s0:Slot;
      
      public var drag:MovieClip;
      
      public var s1:Slot;
      
      public var s2:Slot;
      
      public var bg:MovieClip;
      
      public var s3:Slot;
      
      public var closebtn:Close;
      
      public var s4:Slot;
      
      public var txt0:TextField;
      
      public var txt1:TextField;
      
      public var txt2:TextField;
      
      public var txt3:TextField;
      
      public var txt4:TextField;
      
      public var recipe:String;
      
      public var have:Boolean;
      
      public function Crafting()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(_loc1_)
            {
               addr23:
               addFrameScript(0,this.frame1);
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function refreshnew() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.refresh();
            if(_loc1_)
            {
               addr22:
               root.setSlot(this.cs,"None");
            }
            return;
         }
         §§goto(addr22);
      }
      
      public function refresh() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.craftbtn.visible = false;
            if(_loc3_)
            {
               this.denartxt.text = "";
            }
         }
         var _loc1_:int = 0;
         if(_loc3_)
         {
            while(_loc1_ < 5)
            {
               §§push(this);
               §§push("s");
               if(_loc3_)
               {
                  §§push(§§pop() + _loc1_);
               }
               §§pop()[§§pop()].visible = false;
               if(!_loc2_)
               {
                  §§push(this);
                  §§push("txt");
                  if(!_loc2_)
                  {
                     §§push(§§pop() + _loc1_);
                  }
                  §§pop()[§§pop()].text = "";
                  if(_loc2_)
                  {
                     continue;
                  }
               }
               _loc1_++;
            }
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            root.dettachTool(this);
            if(!_loc2_)
            {
               removeEventListener(MouseEvent.CLICK,this.clickm);
               if(_loc1_)
               {
                  addr38:
                  this.cs.removeEventListener(MouseEvent.MOUSE_UP,this.up);
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.clear();
            if(_loc2_)
            {
               root.craftmc = null;
               if(!_loc1_)
               {
                  addr37:
                  root.q.removeChildFade(this);
               }
            }
            return;
         }
         §§goto(addr37);
      }
      
      public function list() : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:uint = 0;
         var _loc10_:TextFormat = null;
         var _loc11_:TextField = null;
         var _loc1_:Vector.<String> = Vector.<String>(root.items[this.cs.item.split("_")[0]].Materials.split("/"));
         var _loc2_:uint = uint(root.items[this.cs.item.split("_")[0]]["Crafting Price"].split("_")[1]);
         var _loc3_:int = _loc1_.length;
         if(_loc12_)
         {
            this.refresh();
         }
         var _loc4_:* = uint(0);
         var _loc5_:int = 0;
         if(!_loc13_)
         {
            while(_loc5_ < _loc3_)
            {
               §§push(_loc1_[_loc5_]);
               if(!_loc13_)
               {
                  §§push(_loc6_ = §§pop());
                  §§push("_");
                  if(_loc12_)
                  {
                     if(§§pop().indexOf(§§pop()) >= 0)
                     {
                        §§push(_loc6_);
                        §§push("_");
                        if(_loc12_)
                        {
                           addr108:
                           _loc6_ = §§pop().split(§§pop())[1];
                           addr113:
                           §§push(_loc6_);
                           §§push("=");
                           if(!_loc13_)
                           {
                              addr121:
                              _loc7_ = §§pop().split(§§pop())[0];
                              addr117:
                              if(_loc12_)
                              {
                                 §§push(int(int(_loc6_.split("=")[1])));
                                 if(!_loc13_)
                                 {
                                    _loc8_ = §§pop();
                                    addr137:
                                    if(_loc6_.indexOf("=") < 0)
                                    {
                                       if(!_loc13_)
                                       {
                                          addr153:
                                          _loc8_ = 1;
                                          addr154:
                                          trace(_loc7_);
                                          if(_loc12_)
                                          {
                                             root.setSlot(this["s" + _loc5_],_loc7_);
                                             if(!_loc12_)
                                             {
                                             }
                                             addr181:
                                             _loc9_ = root.countItem(_loc7_);
                                             _loc10_ = new TextFormat();
                                             if(!_loc13_)
                                             {
                                                §§push(_loc9_);
                                                if(_loc12_)
                                                {
                                                   if(§§pop() < _loc8_)
                                                   {
                                                      if(!_loc13_)
                                                      {
                                                         _loc10_.color = 16711680;
                                                         if(!_loc12_)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr212:
                                                         §§push(_loc4_);
                                                         if(!_loc13_)
                                                         {
                                                            addr215:
                                                            §§push(uint(§§pop() + 1));
                                                         }
                                                         _loc4_ = §§pop();
                                                      }
                                                   }
                                                   else
                                                   {
                                                      _loc10_.color = 65280;
                                                      if(_loc12_)
                                                      {
                                                         §§goto(addr212);
                                                      }
                                                   }
                                                   §§push(this);
                                                   §§push("txt");
                                                   if(!_loc13_)
                                                   {
                                                      §§push(§§pop() + _loc5_);
                                                   }
                                                   (_loc11_ = §§pop()[§§pop()]).defaultTextFormat = _loc10_;
                                                   if(_loc12_)
                                                   {
                                                      _loc11_.text = _loc9_ + "/" + _loc8_;
                                                      if(_loc12_)
                                                      {
                                                         _loc5_++;
                                                      }
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr215);
                                             }
                                             §§goto(addr212);
                                          }
                                          §§push(this);
                                          §§push("s");
                                          if(_loc12_)
                                          {
                                             §§push(§§pop() + _loc5_);
                                          }
                                          §§pop()[§§pop()].visible = true;
                                       }
                                       §§goto(addr181);
                                    }
                                    §§goto(addr154);
                                 }
                                 §§goto(addr153);
                              }
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr108);
               }
               §§goto(addr121);
            }
            §§push(_loc4_ >= _loc3_);
            if(_loc12_)
            {
               if(§§pop())
               {
                  if(!_loc13_)
                  {
                     addr257:
                     §§pop();
                     §§push(root.pChar.Money >= _loc2_);
                  }
               }
               if(§§pop())
               {
                  this.craftbtn.visible = true;
                  this.denartxt.textColor = 16711680;
                  §§goto(addr264);
               }
               §§goto(addr282);
            }
            §§goto(addr257);
         }
         addr264:
         if(!_loc13_)
         {
            addr282:
            this.denartxt.text = root.getTxt("Price") + ": " + root.q.comma(_loc2_);
         }
      }
      
      public function clickm(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1.target.name == "closebtn")
            {
               if(_loc2_)
               {
                  this.close();
                  if(!_loc3_)
                  {
                     addr44:
                  }
               }
               else
               {
                  addr53:
                  root.getC().send("Craft",this.cs.item.split("_")[0]);
               }
            }
            else if(param1.target.name == "craftbtn")
            {
               if(!_loc3_)
               {
                  §§goto(addr53);
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function up(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(Boolean(root.dragmc));
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§pop();
                     if(!_loc3_)
                     {
                        §§goto(addr50);
                     }
                     §§goto(addr53);
                  }
               }
            }
            addr50:
            if(root.dragmc.type == "Recipe")
            {
               if(!_loc3_)
               {
                  addr53:
                  root.setSlot(this.cs,root.dragmc.item);
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr64);
               }
               this.list();
               §§goto(addr64);
            }
            addr64:
            return;
         }
         §§goto(addr53);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.have = false;
            root.setSlot(this.cs,"None");
            if(_loc2_)
            {
               §§goto(addr30);
            }
            §§goto(addr37);
         }
         addr30:
         this.refresh();
         root.attachTool(this);
         if(_loc2_)
         {
            addEventListener(MouseEvent.CLICK,this.clickm);
            addr37:
            if(_loc2_)
            {
               this.cs.addEventListener(MouseEvent.MOUSE_UP,this.up);
               root.q.createDrag(this.drag,this);
               this.bg.titletxt.text = root.getTxt("Crafting",this.bg.titletxt);
            }
         }
         this.bg.recipelabel.text = root.getTxt("InsertRecipe",this.bg.recipelabel);
         if(!_loc1_)
         {
            root.q.raster(this.bg);
         }
      }
   }
}
