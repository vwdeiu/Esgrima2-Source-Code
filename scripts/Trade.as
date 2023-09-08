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
   
   public dynamic class Trade extends MovieClip
   {
       
      
      public var denars1:TextField;
      
      public var denars2:TextField;
      
      public var exchangebtn:SimpleButton;
      
      public var gold1:TextField;
      
      public var drag:MovieClip;
      
      public var gold2:TextField;
      
      public var bg:MovieClip;
      
      public var closebtn:Close;
      
      public var o1:MovieClip;
      
      public var o2:MovieClip;
      
      public var side1:MovieClip;
      
      public var side2:MovieClip;
      
      public var side:int;
      
      public var tradep:String;
      
      public var denarslast:int;
      
      public var goldlast:int;
      
      public var lock1:int;
      
      public var lock2:int;
      
      public var timer:Timer;
      
      public function Trade()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(_loc2_)
            {
               addFrameScript(0,this.frame1);
            }
         }
      }
      
      public function timed(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.denarslast);
            if(!_loc2_)
            {
               §§push(§§pop() == int(this.denars1.text));
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        addr36:
                        §§pop();
                        §§push(this.goldlast == int(this.gold1.text));
                     }
                  }
                  if(§§pop())
                  {
                     return;
                  }
                  root.getC().send("TU",int(this.denars1.text),int(this.gold1.text));
                  if(int(this.denars1.text) > root.pChar.Money)
                  {
                     addr77:
                     this.denars1.text = root.pChar.Money;
                  }
                  if(int(this.gold1.text) > root.client.payVault.coins)
                  {
                     this.gold1.text = root.client.payVault.coins;
                  }
                  this.denarslast = int(this.denars1.text);
                  if(!_loc2_)
                  {
                     this.goldlast = int(this.gold1.text);
                  }
                  return;
               }
            }
            §§goto(addr36);
         }
         §§goto(addr77);
      }
      
      public function clicked(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(param1.target.name == "exchangebtn")
         {
            if(this.lock1 == 1)
            {
               if(!_loc3_)
               {
                  this.lock1 = 2;
                  addr43:
                  this.o1.gotoAndStop(this.lock1);
                  root.getC().send("TL",this.lock1);
                  if(_loc2_)
                  {
                     return;
                  }
                  addr74:
                  root.getC().send("CT");
               }
               this.close();
            }
            else
            {
               this.lock1 = 1;
               if(_loc2_)
               {
                  §§goto(addr43);
               }
            }
         }
         else if(param1.target.name == "closebtn")
         {
            if(!_loc3_)
            {
               §§goto(addr74);
            }
         }
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            root.trademc = null;
            if(_loc2_)
            {
               root.q.remove(this);
            }
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            root.dettachTool(this);
            if(_loc1_)
            {
               this.timer.stop();
               if(_loc1_)
               {
                  this.timer.removeEventListener(TimerEvent.TIMER,this.timed);
                  if(_loc1_)
                  {
                     addr51:
                     this.side1.removeEventListener(MouseEvent.MOUSE_UP,this.mouseup);
                     if(_loc1_)
                     {
                        removeEventListener(MouseEvent.CLICK,this.clicked);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function mouseup(param1:MouseEvent) : void
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
                     §§goto(addr41);
                  }
               }
               §§goto(addr48);
            }
            addr41:
            §§pop();
            if(_loc3_)
            {
               addr48:
               if(!root.dragmc.item)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr52);
                  }
               }
               else
               {
                  root.amountbuy(root.dragmc.item,"Sell",0,"",false,false,true);
               }
            }
            return;
         }
         addr52:
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         x = stage.stageWidth / 2;
         if(_loc2_)
         {
            y = stage.stageHeight / 2;
            this.bg.name1.text = root.pChar.key;
            this.bg.name2.text = this.tradep;
            if(_loc2_)
            {
               this.denarslast = 0;
               if(_loc2_)
               {
                  this.goldlast = 0;
                  this.lock1 = 1;
                  this.lock2 = 1;
                  if(!_loc1_)
                  {
                     this.bg.init();
                     if(!_loc1_)
                     {
                        root.q.raster(this.bg);
                        if(_loc2_)
                        {
                           root.q.createDrag(this.drag,this);
                           this.timer = new Timer(1000,0);
                           if(!_loc1_)
                           {
                              addr97:
                              this.timer.addEventListener(TimerEvent.TIMER,this.timed,false,0,true);
                              this.timer.start();
                              this.side1.addEventListener(MouseEvent.MOUSE_UP,this.mouseup,false,0,true);
                              addr127:
                              addEventListener(MouseEvent.CLICK,this.clicked,false,0,true);
                              root.attachTool(this);
                              if(!_loc1_)
                              {
                                 addr142:
                                 root.translateButtons(this);
                              }
                              return;
                              addr110:
                           }
                        }
                        §§goto(addr142);
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr110);
               }
            }
            §§goto(addr127);
         }
         §§goto(addr97);
      }
   }
}
