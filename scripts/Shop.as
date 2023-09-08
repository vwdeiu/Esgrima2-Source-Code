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
   
   public dynamic class Shop extends MovieClip
   {
       
      
      public var s37:Slot;
      
      public var t0:Slot;
      
      public var s19:Slot;
      
      public var s28:Slot;
      
      public var s38:Slot;
      
      public var txta:TextField;
      
      public var maskmc:MovieClip;
      
      public var t1:Slot;
      
      public var s29:Slot;
      
      public var s39:Slot;
      
      public var t2:Slot;
      
      public var goldtxt:TextField;
      
      public var moneytxt:TextField;
      
      public var s40:Slot;
      
      public var s50:Slot;
      
      public var s41:Slot;
      
      public var s51:Slot;
      
      public var s42:Slot;
      
      public var s52:Slot;
      
      public var s43:Slot;
      
      public var s53:Slot;
      
      public var s44:Slot;
      
      public var s0:Slot;
      
      public var drag:MovieClip;
      
      public var s54:Slot;
      
      public var s45:Slot;
      
      public var s10:Slot;
      
      public var s1:Slot;
      
      public var s55:Slot;
      
      public var s46:Slot;
      
      public var invmc:MovieClip;
      
      public var titletxt:TextField;
      
      public var s11:Slot;
      
      public var s20:Slot;
      
      public var s2:Slot;
      
      public var bg:MovieClip;
      
      public var s56:Slot;
      
      public var s47:Slot;
      
      public var hotitemsmc:MovieClip;
      
      public var buygoldbtn:SimpleButton;
      
      public var s30:Slot;
      
      public var s12:Slot;
      
      public var s21:Slot;
      
      public var s3:Slot;
      
      public var closebtn:Close;
      
      public var s57:Slot;
      
      public var s48:Slot;
      
      public var s22:Slot;
      
      public var s31:Slot;
      
      public var s13:Slot;
      
      public var s4:Slot;
      
      public var s58:Slot;
      
      public var s49:Slot;
      
      public var s32:Slot;
      
      public var s14:Slot;
      
      public var s23:Slot;
      
      public var s5:Slot;
      
      public var s59:Slot;
      
      public var s33:Slot;
      
      public var s15:Slot;
      
      public var s6:Slot;
      
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
      
      public var goldmall:Boolean;
      
      public var warriorshop:Boolean;
      
      public var shop:String;
      
      public var id:int;
      
      public var items:Vector.<String>;
      
      public var guildo:DatabaseObject;
      
      public var category:String;
      
      public var drop:MovieClip;
      
      public var dropp:Point;
      
      public var c:Client;
      
      public function Shop()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(!_loc1_)
            {
               addFrameScript(0,this.frame1,2,this.frame3,3,this.frame4,4,this.frame5);
            }
         }
      }
      
      public function display() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Class = null;
         if(this.titletxt)
         {
            if(_loc3_)
            {
               this.titletxt.text = root.getTxt(this.shop + " Shop",this.titletxt);
               if(!_loc2_)
               {
                  addr38:
                  §§push(Boolean(this.bg));
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           §§pop();
                           if(!_loc2_)
                           {
                              addr54:
                              if(this.bg.titletxt)
                              {
                                 if(_loc3_)
                                 {
                                    this.bg.titletxt.text = root.getTxt(this.shop + " Shop",this.bg.titletxt);
                                    addr57:
                                    if(_loc3_)
                                    {
                                       §§goto(addr79);
                                    }
                                 }
                                 §§goto(addr82);
                              }
                           }
                           addr79:
                           if(!this.drop)
                           {
                              addr82:
                              _loc1_ = getDefinitionByName(this.shop + "Drop") as Class;
                              this.drop = new _loc1_() as MovieClip;
                              this.drop.x = this.dropp.x;
                              if(_loc3_)
                              {
                                 this.drop.y = this.dropp.y;
                                 if(_loc3_)
                                 {
                                    this.drop.init();
                                 }
                              }
                              addChild(this.drop);
                              trace(this.drop.defaultCategory);
                              this.category = this.drop.defaultCategory;
                           }
                           return;
                        }
                     }
                  }
               }
               §§goto(addr54);
            }
            §§goto(addr57);
         }
         §§goto(addr38);
      }
      
      public function list() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            trace(this.category);
            if(!_loc4_)
            {
               trace(this.shop + this.id + this.category);
               if(!_loc4_)
               {
                  this.items = MovieClip(root)[this.shop + this.id + this.category];
                  addr36:
               }
               var _loc1_:String = "Shop";
               if(!_loc4_)
               {
                  if(this.shop == "Guild")
                  {
                     if(_loc3_)
                     {
                        _loc1_ = "Guild";
                     }
                  }
               }
               var _loc2_:MovieClip = this;
               if(_loc3_)
               {
                  if(this.invmc)
                  {
                     if(_loc3_)
                     {
                        _loc2_ = this.invmc;
                     }
                     §§goto(addr114);
                  }
                  MovieClip(root).itemlist(_loc2_,this.items,60,_loc1_,this.shop == "GoldMall");
                  if(_loc3_)
                  {
                     if(this.category == "SkillManuals")
                     {
                        if(_loc3_)
                        {
                           §§goto(addr114);
                        }
                     }
                     §§goto(addr114);
                  }
               }
               addr114:
               root.tip(22);
               return;
            }
         }
         §§goto(addr36);
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            addEventListener(Event.ADDED_TO_STAGE,this.added);
         }
         if(currentFrame == 1)
         {
            root.tip(7);
            if(_loc1_)
            {
               addr32:
               this.display();
               this.list();
               addEventListener(MouseEvent.CLICK,this.mclick);
               if(_loc1_)
               {
                  addEventListener(MouseEvent.MOUSE_UP,this.mup);
                  MovieClip(root).attachTool(this);
                  if(_loc1_)
                  {
                     MovieClip(root).q.raster(this.bg);
                     if(!_loc1_)
                     {
                     }
                     §§goto(addr89);
                  }
               }
               MovieClip(root).q.createDrag(this.drag,this);
            }
            addr89:
            return;
         }
         §§goto(addr32);
      }
      
      public function added(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            root.translateButtons(this);
            if(!_loc2_)
            {
               removeEventListener(Event.ADDED_TO_STAGE,this.added);
            }
         }
      }
      
      public function mclick(param1:MouseEvent) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:SimpleButton = null;
         var _loc3_:Class = null;
         var _loc4_:SimpleButton = null;
         if(param1.target.name == "buygoldbtn")
         {
            this.buygold();
            if(!_loc5_)
            {
               addr66:
               if(param1.target.name !== "a")
               {
                  if(!_loc6_)
                  {
                     this.category = param1.target.name;
                     if(this.drop.a)
                     {
                        _loc2_ = param1.target.parent.a;
                        _loc3_ = getDefinitionByName(this.category + "Btn") as Class;
                        (_loc4_ = new _loc3_() as SimpleButton).x = param1.target.parent.mainp.x;
                        _loc4_.y = param1.target.parent.mainp.y;
                        _loc4_.scaleX = _loc2_.scaleX;
                        if(_loc5_)
                        {
                           _loc4_.scaleY = _loc2_.scaleY;
                           if(_loc5_)
                           {
                              _loc4_.name = "a";
                              this.drop.removeChild(param1.target.parent.a);
                              if(!_loc6_)
                              {
                                 addr150:
                                 this.drop.gotoAndStop(1);
                                 this.drop.addChild(_loc4_);
                                 root.changeButtonText(_loc4_);
                              }
                              this.drop.a = _loc4_;
                              addr165:
                              this.list();
                              if(_loc5_)
                              {
                                 addr283:
                                 return;
                                 addr170:
                              }
                              else
                              {
                                 addr175:
                                 if(param1.target.name == "closebtn")
                                 {
                                    this.close();
                                    addr182:
                                    §§goto(addr283);
                                 }
                                 else
                                 {
                                    §§push(param1.target.slot);
                                    if(param1.target.slot)
                                    {
                                       §§pop();
                                       if(_loc5_)
                                       {
                                          §§push(param1.target.item !== "None");
                                          if(!_loc6_)
                                          {
                                             addr201:
                                             §§push(Boolean(§§pop()));
                                             §§push(Boolean(§§pop()));
                                             if(!_loc6_)
                                             {
                                                if(§§pop())
                                                {
                                                   addr207:
                                                   §§pop();
                                                   §§push(Boolean(param1.target.item.split("_")[0] in MovieClip(root).items));
                                                   if(!_loc5_)
                                                   {
                                                   }
                                                   addr261:
                                                   if(§§pop())
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         addr265:
                                                         MovieClip(root).amountbuy(param1.target.item.split("_")[0],"Buy",-1,"",this.goldmall,this.warriorshop);
                                                      }
                                                   }
                                                   §§goto(addr283);
                                                }
                                                §§push(§§pop());
                                                if(_loc5_)
                                                {
                                                   addr228:
                                                   if(§§pop())
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         addr232:
                                                         §§pop();
                                                         §§push(!param1.target.na.visible);
                                                         if(_loc5_)
                                                         {
                                                            addr242:
                                                            if(!§§pop())
                                                            {
                                                               if(_loc6_)
                                                               {
                                                               }
                                                            }
                                                            §§goto(addr261);
                                                         }
                                                         §§pop();
                                                         if(_loc5_)
                                                         {
                                                            §§goto(addr261);
                                                            §§push(this.shop !== "Guild");
                                                         }
                                                         §§goto(addr283);
                                                      }
                                                   }
                                                   §§goto(addr261);
                                                }
                                                §§goto(addr242);
                                             }
                                             §§goto(addr228);
                                          }
                                          §§goto(addr232);
                                       }
                                       §§goto(addr283);
                                    }
                                    §§goto(addr201);
                                 }
                              }
                              §§goto(addr283);
                           }
                        }
                        §§goto(addr150);
                     }
                     §§goto(addr165);
                  }
                  §§goto(addr182);
               }
               §§goto(addr170);
            }
            §§goto(addr283);
         }
         else
         {
            §§push(param1.target.parent == this.drop);
            if(_loc5_)
            {
               §§push(§§pop());
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     if(!_loc6_)
                     {
                        §§pop();
                        if(_loc5_)
                        {
                           §§push(this.drop === this);
                           if(!_loc6_)
                           {
                              addr60:
                              if(!§§pop())
                              {
                                 param1.target.parent.gotoAndStop(2);
                                 §§goto(addr66);
                              }
                              else
                              {
                                 this.drop.gotoAndStop(1);
                              }
                              §§goto(addr175);
                           }
                           §§goto(addr207);
                        }
                        §§goto(addr265);
                     }
                     §§goto(addr201);
                  }
                  §§goto(addr60);
               }
               §§goto(addr228);
            }
         }
         §§goto(addr207);
      }
      
      public function mup(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(!root.dragmc);
            if(_loc3_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     addr35:
                     §§pop();
                     §§goto(addr53);
                  }
               }
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     return;
                  }
                  §§goto(addr53);
               }
               else
               {
                  root.amountbuy(root.dragmc.item,"Sell");
                  §§goto(addr53);
               }
               addr53:
               if(_loc3_)
               {
                  §§push(!root.dragmc.item);
               }
               return;
            }
         }
         §§goto(addr35);
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.clear();
            if(!_loc1_)
            {
               MovieClip(root).shopmc = null;
               if(!_loc2_)
               {
               }
               §§goto(addr42);
            }
            MovieClip(root).q.removeChildFade(this);
         }
         addr42:
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            removeEventListener(MouseEvent.CLICK,this.mclick);
            if(_loc2_)
            {
               §§goto(addr35);
            }
            §§goto(addr44);
         }
         addr35:
         removeEventListener(MouseEvent.MOUSE_UP,this.mup);
         if(_loc2_)
         {
            addr44:
            MovieClip(root).dettachTool(this);
         }
      }
      
      public function displaygold() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            var gold:int = 0;
            if(_loc2_)
            {
               gold = root.client.payVault.coins;
               if(!_loc3_)
               {
                  root.client.payVault.refresh(function():void
                  {
                     var _loc1_:Boolean = true;
                     var _loc2_:Boolean = false;
                     goldtxt.text = root.getTxt("Gold",goldtxt) + " " + root.client.payVault.coins;
                     if(!_loc2_)
                     {
                        if(root.client.payVault.coins !== gold)
                        {
                           if(_loc1_)
                           {
                              addr27:
                              root.getC().send("PayVault");
                           }
                        }
                        return;
                     }
                     §§goto(addr27);
                  });
               }
            }
         }
      }
      
      public function buygold() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(root.exchangemc)
            {
               if(_loc1_)
               {
                  return;
               }
               addr57:
               root.q.fadeIn(root.exchangemc);
               if(!_loc2_)
               {
                  this.close();
               }
            }
            else
            {
               root.exchangemc = new Exchange() as MovieClip;
               if(_loc1_)
               {
                  root.addChildAt(root.exchangemc,root.getChildIndex(root.mouse));
                  if(!_loc2_)
                  {
                     §§goto(addr57);
                  }
               }
            }
            return;
         }
         §§goto(addr57);
      }
      
      public function displayhot(param1:DatabaseObject) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Vector.<String> = Vector.<String>(param1.Items);
         var _loc3_:int = _loc2_.length;
         if(!_loc5_)
         {
            MovieClip(root).itemlist(this.hotitemsmc,_loc2_,6,"Shop",false);
         }
      }
      
      public function displaytop(param1:Array) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = param1.length;
         var _loc3_:int = 0;
         if(_loc5_)
         {
            while(_loc3_ < _loc2_)
            {
               root.setSlot(this["t" + _loc3_],param1[_loc3_].key);
               if(!_loc4_)
               {
                  _loc3_++;
               }
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            stop();
            if(!_loc2_)
            {
               trace("Shop: " + this.shop);
               if(!_loc2_)
               {
                  trace("ID: " + this.id);
                  if(_loc1_)
                  {
                     this.dropp = new Point(41.35,14.15);
                     this.titletxt.mouseEnabled = false;
                     addr58:
                     §§push(this.shop);
                     if(!_loc2_)
                     {
                        §§push("Guild");
                        if(_loc1_)
                        {
                           if(§§pop() == §§pop())
                           {
                              §§goto(addr66);
                           }
                           else
                           {
                              §§push(this.shop);
                              if(_loc1_)
                              {
                                 addr94:
                                 §§push("GoldMall");
                                 if(_loc1_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       gotoAndStop(3);
                                       return;
                                    }
                                    §§push(this.shop);
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    gotoAndStop(4);
                                    return;
                                 }
                                 this.init();
                                 §§goto(addr101);
                              }
                              §§push("WarriorShop");
                           }
                        }
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr66);
               }
               §§goto(addr58);
            }
            addr66:
            gotoAndStop(5);
            return;
         }
         addr101:
      }
      
      function frame3() : *
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.dropp = new Point(-18,96.2);
         x = 95;
         if(!_loc3_)
         {
            y = 100;
            this.category = "Weapons";
            if(!_loc3_)
            {
               this.shop = "GoldMall";
               if(_loc2_)
               {
                  this.id = 1;
                  if(_loc2_)
                  {
                     this.goldmall = true;
                     this.bg.hotitemslabel.text = root.getTxt("Hot items",this.bg.hotitemslabel);
                     if(_loc2_)
                     {
                        this.bg.topitemslabel.text = root.getTxt("Top items",this.bg.topitemslabel);
                        if(!_loc3_)
                        {
                           this.txta.mouseEnabled = false;
                           this.txta.text = root.getTxt("Gold Mall",this.txta);
                           this.init();
                           this.c = root.client;
                           addr104:
                           root.translateButtons(this);
                           if(!_loc3_)
                           {
                              this.displaygold();
                              §§goto(addr111);
                           }
                           §§goto(addr121);
                        }
                        §§goto(addr114);
                     }
                     addr111:
                     if(!root.hotitems)
                     {
                        addr114:
                        this.c.bigDB.load("HotItems","HotItems",function(param1:DatabaseObject):void
                        {
                           displayhot(param1);
                        });
                        addr121:
                     }
                     else
                     {
                        this.displayhot(root.hotitems);
                     }
                     if(!root.topitems)
                     {
                        if(!_loc3_)
                        {
                           this.c.bigDB.loadRange("TopItems","Sold",[],null,null,3,function(param1:Array):void
                           {
                              displaytop(param1);
                           });
                           addr131:
                           if(!_loc3_)
                           {
                              addr151:
                           }
                        }
                        §§goto(addr164);
                     }
                     else
                     {
                        this.displaytop(root.topitems);
                     }
                     root.q.scrollbar(this.invmc,this.maskmc,"right");
                     §§goto(addr164);
                  }
                  §§goto(addr151);
               }
               addr164:
               return;
            }
            §§goto(addr104);
         }
         §§goto(addr131);
      }
      
      function frame4() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.dropp = new Point(41.35,14.15);
         if(_loc1_)
         {
            this.category = "Weapons";
            if(!_loc2_)
            {
               addr36:
               this.shop = "WarriorShop";
               this.id = 1;
               this.warriorshop = true;
               if(!_loc2_)
               {
                  this.init();
               }
            }
            return;
         }
         §§goto(addr36);
      }
      
      function frame5() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.dropp = new Point(41.9,-15.85);
            if(_loc2_)
            {
               addr28:
               this.init();
            }
            return;
         }
         §§goto(addr28);
      }
   }
}
