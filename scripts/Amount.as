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
   import playerio.Client;
   
   public dynamic class Amount extends MovieClip
   {
       
      
      public var costtxt:TextField;
      
      public var okbtn:SimpleButton;
      
      public var drag:MovieClip;
      
      public var bg:MovieClip;
      
      public var inputtxt:TextField;
      
      public var closebtn:Close;
      
      public var cost:uint;
      
      public var goldmall:Boolean;
      
      public var warriorshop:Boolean;
      
      public var trade:Boolean;
      
      public var item:String;
      
      public var additional:String;
      
      public var buytype:String;
      
      public function Amount()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               addr22:
               addFrameScript(0,this.frame1);
            }
            return;
         }
         §§goto(addr22);
      }
      
      public function updatecost(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.costtxt.text = MovieClip(root).q.comma(String(this.cost * uint(this.inputtxt.text)));
         }
      }
      
      public function focusin(param1:FocusEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            param1.target.text = "";
         }
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
               MovieClip(root).amountmc = null;
               if(!_loc1_)
               {
                  MovieClip(root).q.removeChildFade(this);
               }
            }
         }
      }
      
      public function clickm(param1:MouseEvent) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:Client = null;
         var _loc4_:Vector.<String> = null;
         if(_loc5_)
         {
            if(param1.target.name == "closebtn")
            {
               if(!_loc6_)
               {
                  this.close();
                  if(_loc6_)
                  {
                     addr71:
                     _loc3_ = root.client;
                     §§push(this.goldmall);
                     if(!_loc6_)
                     {
                        if(§§pop())
                        {
                           if(!_loc6_)
                           {
                              §§push(_loc3_.payVault.coins);
                              if(_loc5_)
                              {
                                 §§push(int(§§pop()));
                                 if(_loc5_)
                                 {
                                    _loc2_ = §§pop();
                                    addr94:
                                    §§push(this.warriorshop);
                                    if(!_loc6_)
                                    {
                                       addr98:
                                       if(§§pop())
                                       {
                                          §§push(int(root.countItem("Warrior Stone")));
                                          if(_loc5_)
                                          {
                                             addr105:
                                             _loc2_ = §§pop();
                                             if(_loc5_)
                                             {
                                                §§goto(addr117);
                                             }
                                             §§goto(addr168);
                                          }
                                       }
                                       §§goto(addr117);
                                    }
                                    §§goto(addr129);
                                 }
                                 §§goto(addr105);
                              }
                              §§goto(addr117);
                           }
                           addr117:
                           §§push(_loc2_ < uint(this.costtxt.text));
                           if(!_loc6_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    addr129:
                                    §§pop();
                                    if(_loc5_)
                                    {
                                       §§push(this.buytype);
                                       if(_loc5_)
                                       {
                                          §§push("Sell");
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() === §§pop());
                                             if(_loc6_)
                                             {
                                             }
                                             §§goto(addr144);
                                          }
                                       }
                                       §§goto(addr163);
                                    }
                                    §§goto(addr168);
                                 }
                              }
                              addr144:
                              §§goto(addr143);
                           }
                           addr143:
                           if(!§§pop())
                           {
                              if(_loc5_)
                              {
                                 return;
                              }
                              addr168:
                              this.item += "_1";
                           }
                           else
                           {
                              trace(this.item + "_" + uint(this.inputtxt.text));
                              addr163:
                              if(this.item.indexOf("_") < 0)
                              {
                                 if(_loc5_)
                                 {
                                    §§goto(addr168);
                                 }
                              }
                           }
                           (_loc4_ = Vector.<String>(this.item.split("_")))[1] = this.inputtxt.text;
                           this.item = _loc4_.join("_");
                           if(_loc5_)
                           {
                              trace(this.buytype);
                              trace(this.additional);
                              trace(this.item);
                              MovieClip(root).getC().send(this.buytype,this.item,this.additional,this.goldmall,this.warriorshop,this.trade);
                              if(!_loc5_)
                              {
                              }
                              §§goto(addr239);
                           }
                           this.close();
                           §§goto(addr239);
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr239);
               }
            }
            else
            {
               §§push(param1.target.name == "okbtn");
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        §§pop();
                        if(_loc5_)
                        {
                           §§push(this.inputtxt.text === "");
                           if(!_loc6_)
                           {
                              addr61:
                              §§push(!§§pop());
                           }
                        }
                        §§goto(addr71);
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc6_)
                     {
                        _loc2_ = int(root.pChar.Money);
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr239);
               }
               §§goto(addr61);
            }
            addr239:
            return;
         }
         §§goto(addr71);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.closebtn.removeEventListener(MouseEvent.CLICK,this.clickm);
            if(!_loc2_)
            {
               this.inputtxt.removeEventListener(FocusEvent.FOCUS_IN,this.focusin);
               if(_loc1_)
               {
                  addr43:
                  this.inputtxt.removeEventListener(Event.CHANGE,this.updatecost);
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         trace(this.cost);
         this.bg.titletxt.text = root.getTxt("Enter amount",this.bg.titletxt);
         root.translateButtons(this);
         if(this.cost == 0)
         {
            this.bg.bag.visible = false;
            if(!_loc1_)
            {
               this.costtxt.visible = false;
               if(!_loc1_)
               {
                  addr52:
                  §§push(this.goldmall);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        this.bg.bag.gotoAndStop(2);
                        addr57:
                     }
                     §§push(this.warriorshop);
                  }
                  if(§§pop())
                  {
                     this.bg.bag.gotoAndStop(3);
                  }
                  MovieClip(root).q.raster(this.bg);
                  this.inputtxt.text = "1";
                  this.costtxt.text = String(this.cost);
                  if(!_loc1_)
                  {
                     this.inputtxt.restrict = "0-9";
                     this.inputtxt.addEventListener(FocusEvent.FOCUS_IN,this.focusin);
                     this.inputtxt.addEventListener(Event.CHANGE,this.updatecost);
                     if(!_loc2_)
                     {
                     }
                     §§goto(addr133);
                  }
                  MovieClip(root).q.createDrag(this.drag,this);
                  §§goto(addr133);
               }
               §§goto(addr57);
            }
            addr133:
            addEventListener(MouseEvent.CLICK,this.clickm);
            return;
         }
         §§goto(addr52);
      }
   }
}
