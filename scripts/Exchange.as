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
   
   public dynamic class Exchange extends MovieClip
   {
       
      
      public var coins25:SimpleButton;
      
      public var coins1400:SimpleButton;
      
      public var coins650:SimpleButton;
      
      public var coins120:SimpleButton;
      
      public var trialpaybtn:SimpleButton;
      
      public var paypalbtn:SimpleButton;
      
      public var coins50:SimpleButton;
      
      public var bg:MovieClip;
      
      public var closebtn:Close;
      
      public var superrewardsbtn:SimpleButton;
      
      public var thankstxt:TextField;
      
      public var bg2:MovieClip;
      
      public var bg3:MovieClip;
      
      public var coins250:SimpleButton;
      
      public var chosemethod:Boolean;
      
      public var apiEasyNr:Object;
      
      public var credits:Dictionary;
      
      public var apieasy:Dictionary;
      
      public var belbeit:Dictionary;
      
      public var draugiem:Dictionary;
      
      public var bgb:Bitmap;
      
      public var bgb3:Bitmap;
      
      public function Exchange()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(!_loc1_)
            {
               addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
            }
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            removeEventListener(MouseEvent.CLICK,this.clicked);
         }
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
               root.q.removeChildFade(this);
               if(!_loc1_)
               {
                  root.exchangemc = null;
               }
            }
         }
      }
      
      public function clicked(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            var c:Client = null;
            var e:MouseEvent = param1;
            if(_loc3_)
            {
               if(e.target.name == "closebtn")
               {
                  this.close();
               }
               else if(e.target.name.indexOf("coins") >= 0)
               {
                  c = root.client;
                  if(_loc3_)
                  {
                     addr56:
                     if(!root.onKong)
                     {
                        if(root.onSpecial == "easy")
                        {
                           if(!_loc4_)
                           {
                              trace("pay " + this.apiEasyNr[e.target.name.split("coins")[1]]);
                              if(_loc3_)
                              {
                                 root.aE.pay(this.apiEasyNr[e.target.name.split("coins")[1]],function(param1:*):*
                                 {
                                    var _loc3_:Boolean = true;
                                    var _loc4_:Boolean = false;
                                    if(_loc3_)
                                    {
                                       var transaction_id:* = param1;
                                       if(!_loc4_)
                                       {
                                          trace("check pay");
                                          if(!_loc4_)
                                          {
                                             root.aE.payment_check({
                                                "required":root.ae_required,
                                                "transaction_id":transaction_id
                                             },function(param1:*):*
                                             {
                                                var _loc3_:Boolean = false;
                                                var _loc4_:Boolean = true;
                                                var result:* = param1;
                                                trace("RESULT: " + result);
                                                result = Number(result);
                                                if(_loc4_)
                                                {
                                                   if(result > 0)
                                                   {
                                                      trace("CREDIT " + credits[root.portal.split(".")[0]][result] + " gold.");
                                                      if(_loc4_)
                                                      {
                                                         addr51:
                                                         root.client.payVault.credit(credits[root.portal.split(".")[0]][result],"apieasy",function():void
                                                         {
                                                            var _loc1_:Boolean = true;
                                                            var _loc2_:Boolean = false;
                                                            root.q.remove(bgb);
                                                            if(!_loc2_)
                                                            {
                                                               gotoAndStop(2);
                                                               if(_loc1_)
                                                               {
                                                                  addr15:
                                                                  root.getC().send("PayVault");
                                                               }
                                                               return;
                                                            }
                                                            §§goto(addr15);
                                                         });
                                                      }
                                                   }
                                                   return;
                                                }
                                                §§goto(addr51);
                                             },function(param1:*):*
                                             {
                                             });
                                          }
                                       }
                                    }
                                 });
                                 return;
                              }
                              §§goto(addr153);
                           }
                           §§goto(addr153);
                        }
                        else
                        {
                           c.payVault.getBuyCoinsInfo("paypal",{
                              "coinamount":e.target.name.split("coins")[1],
                              "currency":"USD",
                              "item_name":e.target.name.split("coins")[1] + "Gold"
                           },function(param1:Object):void
                           {
                              var _loc2_:Boolean = true;
                              var _loc3_:Boolean = false;
                              navigateToURL(new URLRequest(param1.paypalurl),"_blank");
                              if(!_loc3_)
                              {
                                 afterClick();
                              }
                           });
                        }
                     }
                     else
                     {
                        root.kongregate.mtx.purchaseItems([e.target.name],function(param1:Object):*
                        {
                           var _loc3_:Boolean = false;
                           var _loc4_:Boolean = true;
                           var result:Object = param1;
                           if(result.success)
                           {
                              root.client.payVault.refresh(function():void
                              {
                                 root.shopmc.displaygold();
                              });
                              if(_loc4_)
                              {
                                 root.getC().send("PayVault");
                                 if(!_loc3_)
                                 {
                                    root.q.remove(bgb);
                                    gotoAndStop(2);
                                 }
                              }
                           }
                        });
                        §§goto(addr153);
                     }
                     §§goto(addr153);
                  }
                  return;
               }
            }
            addr153:
            return;
         }
         §§goto(addr56);
      }
      
      public function clicked3(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var e:MouseEvent = param1;
         if(e.target == this.closebtn)
         {
            root.q.remove(this.bgb3);
            removeEventListener(MouseEvent.CLICK,this.clicked3);
            if(_loc3_)
            {
               this.close();
            }
         }
         if(e.target == this.paypalbtn)
         {
            if(_loc3_)
            {
               this.chosemethod = true;
               if(!_loc4_)
               {
                  root.q.remove(this.bgb3);
                  addr68:
                  removeEventListener(MouseEvent.CLICK,this.clicked3);
                  gotoAndStop(1);
                  if(_loc4_)
                  {
                     addr94:
                  }
               }
               §§goto(addr108);
            }
            §§goto(addr68);
         }
         else
         {
            if(e.target == this.trialpaybtn)
            {
               §§goto(addr94);
            }
            else if(e.target == this.superrewardsbtn)
            {
               root.client.payVault.getBuyCoinsInfo("superrewards",{},function(param1:Object):void
               {
                  var _loc2_:Boolean = false;
                  var _loc3_:Boolean = true;
                  navigateToURL(new URLRequest(param1.superrewardsurl),"_blank");
                  if(_loc3_)
                  {
                     root.q.remove(bgb3);
                     if(_loc3_)
                     {
                        §§goto(addr21);
                     }
                     §§goto(addr39);
                  }
                  addr21:
                  removeEventListener(MouseEvent.CLICK,clicked3);
                  if(!_loc2_)
                  {
                     addEventListener(MouseEvent.CLICK,clicked,false,0,true);
                     if(!_loc2_)
                     {
                        addr39:
                        gotoAndStop(2);
                     }
                  }
               });
            }
            addr108:
            return;
         }
         §§goto(addr94);
      }
      
      function frame1() : *
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         stop();
         root.translateButtons(this);
         this.apiEasyNr = {
            "25":1,
            "50":2,
            "120":3,
            "250":4,
            "650":5,
            "1400":6
         };
         this.credits = new Dictionary();
         this.apieasy = this.credits.apieasy = new Dictionary();
         this.apieasy[1] = 20;
         this.apieasy[150] = 20;
         this.apieasy[300] = 50;
         if(!_loc3_)
         {
            this.apieasy[700] = 120;
            this.apieasy[1400] = 250;
            this.apieasy[3300] = 650;
            if(!_loc3_)
            {
               this.apieasy[6600] = 1400;
               trace("CREDIT " + this.credits["apieasy.com".split(".")[0]][1] + " gold.");
               this.belbeit = this.credits.belbeit = new Dictionary();
               this.belbeit[20] = 20;
               this.belbeit[50] = 55;
               if(_loc2_)
               {
                  this.belbeit[100] = 120;
                  if(!_loc3_)
                  {
                     this.belbeit[500] = 650;
                     if(!_loc3_)
                     {
                        this.belbeit[1000] = 1500;
                        addr150:
                        this.belbeit[1500] = 2500;
                        if(_loc2_)
                        {
                           this.draugiem = this.credits.draugiem = new Dictionary();
                           this.draugiem[99] = 15;
                           this.draugiem[250] = 40;
                           this.draugiem[300] = 75;
                           this.draugiem[1000] = 300;
                           if(!_loc3_)
                           {
                              this.draugiem[2000] = 650;
                              this.draugiem[5000] = 2000;
                              if(!_loc3_)
                              {
                                 addr211:
                                 §§push(!root.onKong);
                                 §§push(!root.onKong);
                                 if(_loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc3_)
                                       {
                                          §§pop();
                                          addr222:
                                          §§push(!this.chosemethod);
                                          if(_loc2_)
                                          {
                                             addr227:
                                             if(§§pop())
                                             {
                                                §§pop();
                                                if(!_loc3_)
                                                {
                                                   addr238:
                                                   if(root.onSpecial !== "easy")
                                                   {
                                                      gotoAndStop(3);
                                                      return;
                                                   }
                                                   trace("adding clicked");
                                                   addr246:
                                                   addEventListener(MouseEvent.CLICK,this.clicked,false,0,true);
                                                   if(!root.onKong)
                                                   {
                                                      addr258:
                                                      this.bg.gotoAndStop(2);
                                                      if(root.onSpecial == "easy")
                                                      {
                                                         this.bg.gotoAndStop(root.portal);
                                                         root.translateButtons(this.bg);
                                                         if(!_loc3_)
                                                         {
                                                            if(root.portal == "draugiem.lv")
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  this.closebtn.y = 155.1;
                                                                  this.coins1400.alpha = 0.4;
                                                                  if(!_loc2_)
                                                                  {
                                                                  }
                                                                  §§goto(addr328);
                                                               }
                                                               this.bg.title.text = root.getTxt("BuyWithCredits",this.bg.title);
                                                               this.bg.goldtxt.text = root.getTxt("Gold",this.bg.goldtxt);
                                                            }
                                                            §§goto(addr301);
                                                         }
                                                         this.coins1400.mouseEnabled = false;
                                                         if(!_loc3_)
                                                         {
                                                            addr301:
                                                            §§goto(addr328);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr328);
                                                }
                                                §§goto(addr301);
                                             }
                                             §§goto(addr238);
                                          }
                                       }
                                       §§goto(addr238);
                                    }
                                 }
                                 §§goto(addr227);
                              }
                              §§goto(addr258);
                           }
                           addr328:
                           this.bgb = root.q.raster(this.bg);
                           return;
                        }
                        §§goto(addr258);
                     }
                     §§goto(addr246);
                  }
                  §§goto(addr150);
               }
               §§goto(addr211);
            }
            §§goto(addr222);
         }
         §§goto(addr150);
      }
      
      function frame2() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.bg2.thankstxt.text = root.getTxt("Thank you!",this.bg2.thankstxt);
            if(!_loc1_)
            {
               this.thankstxt.text = root.getTxt("Thanks",this.thankstxt);
               if(_loc2_)
               {
                  addr49:
                  root.q.raster(this.bg2);
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      function frame3() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.bg3.titletxt.text = root.getTxt("ChoosePay");
            if(_loc1_)
            {
               this.bgb3 = root.q.raster(this.bg3);
               if(!_loc1_)
               {
               }
               §§goto(addr62);
            }
            addEventListener(MouseEvent.CLICK,this.clicked3,false,0,true);
            if(!_loc1_)
            {
            }
            §§goto(addr62);
         }
         addr62:
         this.trialpaybtn.mouseEnabled = false;
      }
   }
}
