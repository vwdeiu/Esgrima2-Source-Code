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
   import fr.kouma.display.*;
   import playerio.Message;
   
   public dynamic class Lobby extends MovieClip
   {
       
      
      public var _5_2:MovieClip;
      
      public var _4_1:MovieClip;
      
      public var s_3_2:MovieClip;
      
      public var s_2_1:MovieClip;
      
      public var _4_2:MovieClip;
      
      public var s_2_2:MovieClip;
      
      public var _1_1:MovieClip;
      
      public var pn0:TextField;
      
      public var _1_2:MovieClip;
      
      public var p0:ZPlayer2;
      
      public var pn1:TextField;
      
      public var _0_1:MovieClip;
      
      public var _0_2:MovieClip;
      
      public var p1:ZPlayer2;
      
      public var pn2:TextField;
      
      public var _3_1:MovieClip;
      
      public var _3_2:MovieClip;
      
      public var p2:ZPlayer2;
      
      public var pn3:TextField;
      
      public var kick0:Close;
      
      public var _2_1:MovieClip;
      
      public var pn4:TextField;
      
      public var _2_2:MovieClip;
      
      public var p3:ZPlayer2;
      
      public var kick1:Close;
      
      public var plvl0:TextField;
      
      public var startbtn:SimpleButton;
      
      public var drag:MovieClip;
      
      public var plvl10:TextField;
      
      public var p4:ZPlayer2;
      
      public var pn5:TextField;
      
      public var plvl1:TextField;
      
      public var kick2:Close;
      
      public var kick10:Close;
      
      public var plvl11:TextField;
      
      public var p5:ZPlayer2;
      
      public var pn6:TextField;
      
      public var plvl2:TextField;
      
      public var kick3:Close;
      
      public var bg:MovieClip;
      
      public var kick11:Close;
      
      public var s_5_1:MovieClip;
      
      public var kick4:Close;
      
      public var p6:ZPlayer2;
      
      public var pn7:TextField;
      
      public var plvl3:TextField;
      
      public var closebtn:Close;
      
      public var msgtxt:TextField;
      
      public var p10:ZPlayer2;
      
      public var pn8:TextField;
      
      public var s_5_2:MovieClip;
      
      public var s_4_1:MovieClip;
      
      public var kick5:Close;
      
      public var p7:ZPlayer2;
      
      public var plvl4:TextField;
      
      public var p11:ZPlayer2;
      
      public var p8:ZPlayer2;
      
      public var pn10:TextField;
      
      public var pn9:TextField;
      
      public var s_4_2:MovieClip;
      
      public var kick6:Close;
      
      public var plvl5:TextField;
      
      public var p9:ZPlayer2;
      
      public var pn11:TextField;
      
      public var kick7:Close;
      
      public var plvl6:TextField;
      
      public var nametxt:TextField;
      
      public var kick8:Close;
      
      public var plvl7:TextField;
      
      public var s_1_1:MovieClip;
      
      public var kick9:Close;
      
      public var plvl8:TextField;
      
      public var s_1_2:MovieClip;
      
      public var s_0_1:MovieClip;
      
      public var plvl9:TextField;
      
      public var _5_1:MovieClip;
      
      public var s_0_2:MovieClip;
      
      public var s_3_1:MovieClip;
      
      public var room:Object;
      
      public var map:String;
      
      public var message:String;
      
      public var creator:String;
      
      public var ab:Vector.<AnimatedBitmap>;
      
      public var laststart:uint;
      
      public var bgb:Bitmap;
      
      public function Lobby()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(!_loc1_)
            {
               addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4);
            }
         }
      }
      
      public function kicklistener(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(param1.target.name.indexOf("kick") >= 0)
            {
               var _loc2_:int = int(param1.target.name.split("kick")[1]);
               if(!_loc4_)
               {
                  root.getC().send("Kick",_loc2_);
               }
               return;
            }
         }
      }
      
      public function Start() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            root.changeButtonText(this.startbtn);
            this.bg.backtxt.text = root.getTxt("Backrow",this.bg.backtxt);
            this.bg.fronttxt.text = root.getTxt("Front",this.bg.fronttxt);
            if(this.bg.backtxt2)
            {
               this.bg.backtxt2.text = root.getTxt("Backrow",this.bg.backtxt2);
               if(_loc1_)
               {
                  addr58:
                  if(this.bg.fronttxt2)
                  {
                     if(_loc1_)
                     {
                        this.bg.fronttxt2.text = root.getTxt("Front",this.bg.fronttxt2);
                        addr74:
                        §§push(currentFrame >= 2);
                        if(!_loc2_)
                        {
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 §§pop();
                                 if(!_loc2_)
                                 {
                                    §§push(root.RoomData.Creator === root.pChar.key);
                                    if(_loc1_)
                                    {
                                       addr98:
                                       addr97:
                                       if(!§§pop())
                                       {
                                          if(_loc1_)
                                          {
                                             addr101:
                                             this.startbtn.visible = false;
                                          }
                                       }
                                       if(root.RoomData.Creator == root.pChar.key)
                                       {
                                          if(_loc1_)
                                          {
                                             this.startbtn.visible = true;
                                          }
                                       }
                                       root.getC().addMessageHandler("StartBattle",this.battlestart);
                                       this.bgb = MovieClip(root).q.raster(this.bg);
                                       if(root.RoomData.Type !== "PVP")
                                       {
                                          if(!_loc2_)
                                          {
                                             this.nametxt.text = root.getTxt(this.map,this.nametxt);
                                             this.nametxt.mouseEnabled = false;
                                             if(this.msgtxt)
                                             {
                                                this.msgtxt.text = this.message;
                                                addr163:
                                                this.p0.visible = false;
                                                this.p1.visible = false;
                                                this.p2.visible = false;
                                                if(_loc1_)
                                                {
                                                   this.p3.visible = false;
                                                   if(_loc1_)
                                                   {
                                                      if(this.p4)
                                                      {
                                                         this.p4.visible = false;
                                                         this.p5.visible = false;
                                                         if(this.p6)
                                                         {
                                                            addr198:
                                                            this.p6.visible = false;
                                                            if(_loc1_)
                                                            {
                                                               this.p7.visible = false;
                                                               if(!_loc2_)
                                                               {
                                                                  addr210:
                                                                  if(this.p8)
                                                                  {
                                                                     if(_loc1_)
                                                                     {
                                                                        this.p8.visible = false;
                                                                        this.p9.visible = false;
                                                                        this.p10.visible = false;
                                                                        if(!_loc2_)
                                                                        {
                                                                           this.p11.visible = false;
                                                                           if(_loc1_)
                                                                           {
                                                                              this.kick0.visible = false;
                                                                              addr236:
                                                                              if(!_loc2_)
                                                                              {
                                                                                 this.kick1.visible = false;
                                                                                 this.kick2.visible = false;
                                                                              }
                                                                              addr347:
                                                                              this._0_1.addEventListener(MouseEvent.CLICK,this.selectpos,false,0,true);
                                                                              if(!_loc2_)
                                                                              {
                                                                                 addr359:
                                                                                 this._1_1.addEventListener(MouseEvent.CLICK,this.selectpos,false,0,true);
                                                                                 this._2_1.addEventListener(MouseEvent.CLICK,this.selectpos,false,0,true);
                                                                                 this._3_1.addEventListener(MouseEvent.CLICK,this.selectpos,false,0,true);
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    if(this._4_1)
                                                                                    {
                                                                                       this._4_1.addEventListener(MouseEvent.CLICK,this.selectpos,false,0,true);
                                                                                       this._5_1.addEventListener(MouseEvent.CLICK,this.selectpos,false,0,true);
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          addr416:
                                                                                          if(this._0_2)
                                                                                          {
                                                                                             addr419:
                                                                                             this._0_2.addEventListener(MouseEvent.CLICK,this.selectpos,false,0,true);
                                                                                             if(_loc1_)
                                                                                             {
                                                                                                addr431:
                                                                                                this._1_2.addEventListener(MouseEvent.CLICK,this.selectpos,false,0,true);
                                                                                                addr441:
                                                                                                this._2_2.addEventListener(MouseEvent.CLICK,this.selectpos,false,0,true);
                                                                                                addr451:
                                                                                                this._3_2.addEventListener(MouseEvent.CLICK,this.selectpos,false,0,true);
                                                                                                §§goto(addr461);
                                                                                             }
                                                                                             §§goto(addr471);
                                                                                          }
                                                                                       }
                                                                                       addr461:
                                                                                       if(this._4_2)
                                                                                       {
                                                                                          addr471:
                                                                                          this._4_2.addEventListener(MouseEvent.CLICK,this.selectpos,false,0,true);
                                                                                          if(_loc1_)
                                                                                          {
                                                                                             addr484:
                                                                                             this._5_2.addEventListener(MouseEvent.CLICK,this.selectpos,false,0,true);
                                                                                          }
                                                                                       }
                                                                                       return;
                                                                                    }
                                                                                    §§goto(addr416);
                                                                                 }
                                                                                 §§goto(addr451);
                                                                              }
                                                                              §§goto(addr419);
                                                                           }
                                                                           §§goto(addr484);
                                                                        }
                                                                        this.kick3.visible = false;
                                                                        if(this.kick4)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              this.kick4.visible = false;
                                                                              this.kick5.visible = false;
                                                                              if(this.kick6)
                                                                              {
                                                                                 this.kick6.visible = false;
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    addr284:
                                                                                    this.kick7.visible = false;
                                                                                    addr288:
                                                                                    if(!this.kick8)
                                                                                    {
                                                                                    }
                                                                                    addr310:
                                                                                    if(this.drag)
                                                                                    {
                                                                                       MovieClip(root).q.createDrag(this.drag,this);
                                                                                       if(_loc1_)
                                                                                       {
                                                                                          addr324:
                                                                                          this.closebtn.addEventListener(MouseEvent.CLICK,this.closeb,false,0,true);
                                                                                          this.startbtn.addEventListener(MouseEvent.CLICK,this.start,false,0,true);
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             §§goto(addr347);
                                                                                          }
                                                                                          §§goto(addr416);
                                                                                       }
                                                                                       §§goto(addr431);
                                                                                    }
                                                                                    §§goto(addr324);
                                                                                 }
                                                                                 this.kick8.visible = false;
                                                                                 addr295:
                                                                                 this.kick9.visible = false;
                                                                                 this.kick10.visible = false;
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    this.kick11.visible = false;
                                                                                    §§goto(addr310);
                                                                                 }
                                                                                 §§goto(addr441);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr288);
                                                                     }
                                                                     §§goto(addr295);
                                                                  }
                                                                  §§goto(addr236);
                                                               }
                                                               §§goto(addr324);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr210);
                                                   }
                                                   §§goto(addr359);
                                                }
                                                §§goto(addr484);
                                             }
                                             §§goto(addr163);
                                          }
                                          §§goto(addr198);
                                       }
                                       §§goto(addr163);
                                    }
                                    §§goto(addr98);
                                 }
                                 §§goto(addr284);
                              }
                           }
                           §§goto(addr98);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr74);
               }
               §§goto(addr236);
            }
         }
         §§goto(addr58);
      }
      
      public function clear(param1:Boolean = false) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:Vector.<String> = null;
         var _loc6_:* = 0;
         var _loc7_:MovieClip = null;
         if(!_loc9_)
         {
            §§push(param1);
            if(_loc8_)
            {
               §§push(Boolean(§§pop()));
               §§push(Boolean(§§pop()));
               if(_loc8_)
               {
                  if(§§pop())
                  {
                     if(_loc8_)
                     {
                        §§pop();
                        §§push(Boolean(root.pvpbtn));
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc9_)
                     {
                        root.pvpbtn.visible = true;
                        addr50:
                        if(param1)
                        {
                           root.connection.send("Save",false);
                           if(_loc8_)
                           {
                              §§goto(addr59);
                           }
                           §§goto(addr76);
                        }
                        addr59:
                        root.getC().removeMessageHandler("StartBattle",this.battlestart);
                        removeEventListener(MouseEvent.CLICK,this.kicklistener);
                        if(param1)
                        {
                           if(!_loc9_)
                           {
                              addr76:
                              addr80:
                              §§push(Boolean(root.battle));
                              if(Boolean(root.battle))
                              {
                                 if(!_loc9_)
                                 {
                                    addr83:
                                    §§pop();
                                    §§push(Boolean(root.battle.connected));
                                 }
                              }
                              if(§§pop())
                              {
                                 if(_loc8_)
                                 {
                                    MovieClip(root).battle.disconnect();
                                 }
                                 §§goto(addr175);
                              }
                              MovieClip(root).battle = null;
                              §§goto(addr102);
                           }
                           §§goto(addr195);
                        }
                        addr102:
                        this._0_1.removeEventListener(MouseEvent.CLICK,this.selectpos);
                        if(!_loc9_)
                        {
                           this._1_1.removeEventListener(MouseEvent.CLICK,this.selectpos);
                           this._2_1.removeEventListener(MouseEvent.CLICK,this.selectpos);
                           this._3_1.removeEventListener(MouseEvent.CLICK,this.selectpos);
                           if(this._4_1)
                           {
                              if(_loc8_)
                              {
                                 this._4_1.removeEventListener(MouseEvent.CLICK,this.selectpos);
                                 this._5_1.removeEventListener(MouseEvent.CLICK,this.selectpos);
                                 if(_loc8_)
                                 {
                                    addr154:
                                    if(this._0_2)
                                    {
                                       if(_loc8_)
                                       {
                                          this._0_2.removeEventListener(MouseEvent.CLICK,this.selectpos);
                                          if(_loc8_)
                                          {
                                             this._1_2.removeEventListener(MouseEvent.CLICK,this.selectpos);
                                             §§goto(addr175);
                                          }
                                       }
                                       §§goto(addr213);
                                    }
                                    §§goto(addr192);
                                 }
                                 §§goto(addr213);
                              }
                              §§goto(addr202);
                           }
                           §§goto(addr154);
                        }
                        §§goto(addr175);
                     }
                     addr175:
                     this._2_2.removeEventListener(MouseEvent.CLICK,this.selectpos);
                     this._3_2.removeEventListener(MouseEvent.CLICK,this.selectpos);
                     if(_loc8_)
                     {
                        addr192:
                        if(this._4_2)
                        {
                           addr195:
                           this._4_2.removeEventListener(MouseEvent.CLICK,this.selectpos);
                           addr202:
                           this._5_2.removeEventListener(MouseEvent.CLICK,this.selectpos,false);
                           if(!_loc9_)
                           {
                              addr213:
                              this.startbtn.removeEventListener(MouseEvent.CLICK,this.start);
                              this.closebtn.removeEventListener(MouseEvent.CLICK,this.closeb);
                           }
                           if(this.ab == null)
                           {
                              §§goto(addr238);
                           }
                           else
                           {
                              var _loc2_:int = this.ab.length;
                              if(_loc8_)
                              {
                                 trace(_loc2_);
                              }
                              var _loc3_:* = 0;
                              if(_loc8_)
                              {
                                 loop0:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(_loc8_)
                                    {
                                       §§push(_loc2_);
                                       if(!_loc9_)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             if(!this.ab[_loc3_])
                                             {
                                                if(!_loc8_)
                                                {
                                                   continue;
                                                }
                                             }
                                             else
                                             {
                                                this.ab[_loc3_].stop();
                                                if(!_loc8_)
                                                {
                                                   continue;
                                                }
                                                this.ab[_loc3_].destroy();
                                                if(_loc9_)
                                                {
                                                   continue;
                                                }
                                             }
                                             _loc3_++;
                                             continue;
                                          }
                                          if(_loc8_)
                                          {
                                             this.ab = null;
                                             if(!_loc9_)
                                             {
                                                §§push(0);
                                                if(_loc8_)
                                                {
                                                   _loc3_ = §§pop();
                                                   if(!_loc8_)
                                                   {
                                                   }
                                                   §§goto(addr359);
                                                }
                                                break;
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             if(_loc8_)
                                             {
                                                break loop0;
                                             }
                                             addr359:
                                             var _loc4_:int = 1;
                                             §§goto(addr358);
                                          }
                                          addr352:
                                       }
                                       while(true)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             addr358:
                                             if(!_loc9_)
                                             {
                                                while(_loc4_ < 3)
                                                {
                                                   _loc5_ = MovieClip(root)["battlepos" + _loc4_];
                                                   if(_loc9_)
                                                   {
                                                      continue;
                                                   }
                                                   trace(_loc5_);
                                                   if(_loc8_)
                                                   {
                                                      trace(_loc4_);
                                                      §§push(int(_loc5_.length));
                                                      if(!_loc9_)
                                                      {
                                                         _loc6_ = §§pop();
                                                         §§push(0);
                                                         if(_loc8_)
                                                         {
                                                            addr393:
                                                            _loc3_ = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(_loc3_);
                                                            }
                                                            addr462:
                                                         }
                                                         for(; §§pop() < _loc6_; §§goto(addr462))
                                                         {
                                                            §§push(this);
                                                            §§push("_");
                                                            if(_loc8_)
                                                            {
                                                               §§push(_loc3_);
                                                               if(!_loc9_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc8_)
                                                                  {
                                                                     addr408:
                                                                     §§push(§§pop() + "_");
                                                                     if(_loc8_)
                                                                     {
                                                                        addr413:
                                                                        §§push(§§pop() + _loc4_);
                                                                     }
                                                                  }
                                                                  §§push(!(_loc7_ = §§pop()[§§pop()]));
                                                                  if(!_loc9_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           §§pop();
                                                                           if(_loc8_)
                                                                           {
                                                                              addr433:
                                                                              if(!_loc7_.ab)
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    addr456:
                                                                                    _loc7_.ab = null;
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc7_.ab.stop();
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 addr451:
                                                                                 _loc7_.ab.destroy();
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §§goto(addr456);
                                                                                 }
                                                                              }
                                                                              _loc3_++;
                                                                              continue;
                                                                           }
                                                                           §§goto(addr451);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr433);
                                                               }
                                                               §§goto(addr413);
                                                            }
                                                            §§goto(addr408);
                                                         }
                                                         addr465:
                                                         _loc4_++;
                                                         continue;
                                                      }
                                                      §§goto(addr393);
                                                   }
                                                   §§goto(addr465);
                                                }
                                             }
                                             return;
                                          }
                                          §§push(this);
                                          §§push("p");
                                          if(_loc8_)
                                          {
                                             §§push(§§pop() + _loc3_);
                                          }
                                          if(!§§pop()[§§pop()])
                                          {
                                             if(_loc8_)
                                             {
                                                addr351:
                                                _loc3_++;
                                             }
                                             else
                                             {
                                                addr341:
                                                §§push(this);
                                                §§push("p");
                                                if(_loc8_)
                                                {
                                                   §§push(§§pop() + _loc3_);
                                                }
                                                §§pop()[§§pop()] = null;
                                                if(!_loc9_)
                                                {
                                                   §§goto(addr351);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             root.q.toggleMC(this["p" + _loc3_],"stop");
                                             if(!_loc9_)
                                             {
                                                removeChild(this["p" + _loc3_]);
                                                if(_loc8_)
                                                {
                                                   §§goto(addr341);
                                                }
                                             }
                                          }
                                          §§goto(addr352);
                                          §§goto(addr359);
                                       }
                                       addr357:
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§goto(addr357);
                                    §§goto(addr352);
                                 }
                              }
                              §§goto(addr359);
                           }
                        }
                        §§goto(addr213);
                     }
                     §§goto(addr238);
                  }
                  §§goto(addr50);
               }
               §§goto(addr80);
            }
            §§goto(addr83);
         }
         addr238:
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            trace("close");
            if(_loc2_)
            {
               this.clear(true);
               if(_loc2_)
               {
                  addr36:
                  MovieClip(root).lobbymc = null;
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr50);
               }
               MovieClip(root).q.removeChildFade(this);
            }
            addr50:
            return;
         }
         §§goto(addr36);
      }
      
      public function closeb(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.close();
         }
      }
      
      public function generatePos() : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc2_:Vector.<String> = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:MovieClip = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Vector.<String> = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:MovieClip = null;
         if(!_loc11_)
         {
            trace("Generate pos");
         }
         var _loc1_:int = 1;
         if(!_loc11_)
         {
            loop0:
            for(; _loc1_ < 3; _loc1_++)
            {
               _loc2_ = MovieClip(root)["battlepos" + _loc1_];
               if(!_loc11_)
               {
                  §§push(root.RoomData.Type == "Battle");
                  if(!_loc11_)
                  {
                     if(§§pop())
                     {
                        if(!_loc11_)
                        {
                           §§pop();
                           §§push(_loc1_);
                           if(!_loc11_)
                           {
                              §§push(2);
                              if(!_loc11_)
                              {
                                 addr86:
                                 if(§§pop() == §§pop())
                                 {
                                    continue;
                                 }
                                 trace(_loc2_);
                                 addr91:
                                 trace(_loc1_);
                                 §§push(int(_loc2_.length));
                                 if(_loc12_)
                                 {
                                    addr99:
                                    _loc3_ = §§pop();
                                    if(_loc11_)
                                    {
                                       continue;
                                    }
                                    §§push(0);
                                    if(_loc12_)
                                    {
                                       addr106:
                                       _loc4_ = §§pop();
                                       addr403:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                       }
                                       addr403:
                                    }
                                    loop3:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       addr405:
                                       while(§§pop() < §§pop())
                                       {
                                          §§push(this);
                                          §§push("_");
                                          if(_loc12_)
                                          {
                                             §§push(_loc4_);
                                             if(_loc12_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!_loc11_)
                                                {
                                                   §§push(§§pop() + "_");
                                                   if(_loc12_)
                                                   {
                                                      addr125:
                                                      §§push(§§pop() + _loc1_);
                                                   }
                                                }
                                                _loc5_ = §§pop()[§§pop()];
                                                §§push(this);
                                                §§push("s_");
                                                if(_loc12_)
                                                {
                                                   §§push(_loc4_);
                                                   if(!_loc11_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc11_)
                                                      {
                                                         addr147:
                                                         §§push(§§pop() + "_");
                                                         if(!_loc11_)
                                                         {
                                                            §§push(_loc1_);
                                                         }
                                                         _loc6_ = §§pop()[§§pop()];
                                                         if(!_loc11_)
                                                         {
                                                            trace("List " + _loc2_[_loc4_]);
                                                         }
                                                         _loc8_ = (_loc7_ = Vector.<String>(_loc2_[_loc4_].split("_")))[0];
                                                         if(!_loc11_)
                                                         {
                                                            trace(_loc8_);
                                                            §§push(_loc8_);
                                                            if(!_loc11_)
                                                            {
                                                               §§push("");
                                                               if(!_loc11_)
                                                               {
                                                                  if(§§pop() !== §§pop())
                                                                  {
                                                                     _loc9_ = _loc7_[1];
                                                                     if(!_loc11_)
                                                                     {
                                                                        addr205:
                                                                        §§push(!_loc5_);
                                                                        if(_loc12_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!_loc11_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 §§pop();
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    §§push(!_loc6_);
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       addr223:
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          _loc5_.p = _loc8_;
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             §§push(_loc8_);
                                                                                             §§push("");
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                addr234:
                                                                                                if(§§pop() !== §§pop())
                                                                                                {
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      _loc6_.gotoAndStop(int(_loc9_) + 1);
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                      }
                                                                                                      addr298:
                                                                                                      _loc5_.nametxt.text = "";
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         addr304:
                                                                                                         addr308:
                                                                                                         addr309:
                                                                                                         addr306:
                                                                                                         addr305:
                                                                                                         addr307:
                                                                                                         §§push(_loc8_ !== "");
                                                                                                         if(_loc8_ !== "")
                                                                                                         {
                                                                                                            addr310:
                                                                                                            §§pop();
                                                                                                            addr321:
                                                                                                            if(_loc12_)
                                                                                                            {
                                                                                                               addr314:
                                                                                                               §§push(!_loc5_.ab);
                                                                                                            }
                                                                                                            if(!(_loc10_ = MovieClip(root).pmcs[_loc8_ + "_mc"]))
                                                                                                            {
                                                                                                               addr402:
                                                                                                               _loc4_++;
                                                                                                               §§goto(addr403);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               _loc5_.ab = new AnimatedBitmap(MovieClip(root).ao[_loc8_]["standing"],Event.ENTER_FRAME,60,false,"auto",false);
                                                                                                               _loc5_.point = _loc5_[_loc10_.pclass + "Point"];
                                                                                                               _loc5_.ab.x = _loc5_.point.x;
                                                                                                               _loc5_.ab.y = _loc5_.point.y;
                                                                                                               _loc5_.addChild(_loc5_.ab);
                                                                                                               _loc5_.nametxt.text = _loc8_;
                                                                                                               _loc5_.ab.mask = _loc5_.maskmc;
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  MovieClip(root).q.fadeIn(_loc5_.ab);
                                                                                                               }
                                                                                                               §§goto(addr402);
                                                                                                            }
                                                                                                         }
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               §§goto(addr321);
                                                                                                            }
                                                                                                            §§goto(addr403);
                                                                                                         }
                                                                                                         §§goto(addr402);
                                                                                                      }
                                                                                                      §§goto(addr314);
                                                                                                   }
                                                                                                   §§goto(addr298);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   _loc6_.gotoAndStop(1);
                                                                                                }
                                                                                                if(this.room.Type !== "PVP")
                                                                                                {
                                                                                                   addr256:
                                                                                                   this.startbtn.visible = true;
                                                                                                }
                                                                                                §§push(_loc8_);
                                                                                                if(_loc12_)
                                                                                                {
                                                                                                   addr264:
                                                                                                   §§push("");
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      addr268:
                                                                                                      §§push(§§pop() == §§pop());
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               addr276:
                                                                                                               §§pop();
                                                                                                               §§push(Boolean(_loc5_.ab));
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  addr283:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc12_)
                                                                                                                     {
                                                                                                                        MovieClip(root).q.removeChildFade(_loc5_.ab);
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           _loc5_.ab = null;
                                                                                                                           §§goto(addr298);
                                                                                                                        }
                                                                                                                        §§goto(addr403);
                                                                                                                     }
                                                                                                                     §§goto(addr298);
                                                                                                                  }
                                                                                                                  §§goto(addr304);
                                                                                                               }
                                                                                                               §§goto(addr308);
                                                                                                            }
                                                                                                            §§goto(addr283);
                                                                                                         }
                                                                                                         §§goto(addr309);
                                                                                                      }
                                                                                                      §§goto(addr276);
                                                                                                   }
                                                                                                   §§goto(addr306);
                                                                                                }
                                                                                                §§goto(addr305);
                                                                                             }
                                                                                             §§goto(addr268);
                                                                                          }
                                                                                          §§goto(addr256);
                                                                                       }
                                                                                       §§goto(addr402);
                                                                                    }
                                                                                    §§goto(addr307);
                                                                                 }
                                                                                 §§goto(addr298);
                                                                              }
                                                                              §§goto(addr223);
                                                                           }
                                                                           §§goto(addr304);
                                                                        }
                                                                     }
                                                                     §§goto(addr310);
                                                                  }
                                                                  §§goto(addr205);
                                                               }
                                                               §§goto(addr234);
                                                            }
                                                            §§goto(addr264);
                                                         }
                                                         §§goto(addr314);
                                                      }
                                                      §§goto(addr147);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§goto(addr147);
                                             }
                                          }
                                          §§goto(addr125);
                                          continue loop3;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 §§goto(addr106);
                              }
                              §§goto(addr405);
                           }
                           §§goto(addr99);
                        }
                     }
                  }
                  §§goto(addr86);
               }
               §§goto(addr91);
            }
         }
      }
      
      public function generate() : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc6_:* = null;
         var _loc7_:MovieClip = null;
         var _loc8_:MovieClip = null;
         var _loc9_:AnimatedBitmap = null;
         var _loc1_:int = this.ab.length;
         var _loc2_:int = 0;
         if(_loc12_)
         {
            while(_loc2_ < _loc1_)
            {
               if(this.ab[_loc2_])
               {
                  if(_loc11_)
                  {
                     continue;
                  }
                  this.ab[_loc2_].destroy();
                  if(_loc11_)
                  {
                     continue;
                  }
               }
               _loc2_++;
            }
         }
         var _loc3_:Vector.<String> = MovieClip(root).battlelist;
         if(_loc12_)
         {
            trace("generating " + MovieClip(root).battlelist);
         }
         var _loc4_:int = _loc3_.length;
         this.pn0.text = "";
         if(!_loc11_)
         {
            this.plvl0.text = "";
            if(!_loc11_)
            {
               this.pn1.text = "";
               this.plvl1.text = "";
               this.pn2.text = "";
               this.plvl2.text = "";
               this.pn3.text = "";
               this.plvl3.text = "";
               if(this.pn4)
               {
                  this.pn4.text = "";
                  if(_loc12_)
                  {
                     this.plvl4.text = "";
                     if(_loc12_)
                     {
                        this.pn5.text = "";
                        this.plvl5.text = "";
                        if(this.pn6)
                        {
                           if(!_loc11_)
                           {
                              addr144:
                              this.pn6.text = "";
                              this.plvl6.text = "";
                              this.pn7.text = "";
                              this.plvl7.text = "";
                              addr160:
                              if(this.pn8)
                              {
                                 this.pn8.text = "";
                                 this.plvl8.text = "";
                                 this.pn9.text = "";
                                 if(_loc12_)
                                 {
                                    this.plvl9.text = "";
                                    this.pn10.text = "";
                                    this.plvl10.text = "";
                                    this.pn11.text = "";
                                    this.plvl11.text = "";
                                    if(!_loc11_)
                                    {
                                       addr200:
                                       this.p0.visible = false;
                                       if(_loc12_)
                                       {
                                          this.p1.visible = false;
                                          this.p2.visible = false;
                                          if(_loc12_)
                                          {
                                             this.p3.visible = false;
                                             if(this.p4)
                                             {
                                                this.p4.visible = false;
                                                if(!_loc11_)
                                                {
                                                   this.p5.visible = false;
                                                   if(this.p6)
                                                   {
                                                      this.p6.visible = false;
                                                      addr241:
                                                      this.p7.visible = false;
                                                      if(_loc12_)
                                                      {
                                                         addr247:
                                                         if(this.p8)
                                                         {
                                                            addr250:
                                                            this.p8.visible = false;
                                                            this.p9.visible = false;
                                                            if(_loc12_)
                                                            {
                                                               addr261:
                                                               this.p10.visible = false;
                                                               this.p11.visible = false;
                                                               addr269:
                                                               this.kick0.visible = false;
                                                               if(_loc12_)
                                                               {
                                                                  this.kick1.visible = false;
                                                                  this.kick2.visible = false;
                                                                  if(!_loc11_)
                                                                  {
                                                                     addr287:
                                                                     this.kick3.visible = false;
                                                                     if(this.kick4)
                                                                     {
                                                                        this.kick4.visible = false;
                                                                        if(!_loc11_)
                                                                        {
                                                                           this.kick5.visible = false;
                                                                           addr305:
                                                                           if(this.kick6)
                                                                           {
                                                                              if(_loc12_)
                                                                              {
                                                                                 this.kick6.visible = false;
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    addr323:
                                                                                    this.kick7.visible = false;
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       §§goto(addr329);
                                                                                    }
                                                                                    §§goto(addr338);
                                                                                 }
                                                                                 §§goto(addr329);
                                                                              }
                                                                              §§goto(addr338);
                                                                           }
                                                                        }
                                                                        §§goto(addr329);
                                                                     }
                                                                     addr329:
                                                                     if(this.kick8)
                                                                     {
                                                                        if(_loc12_)
                                                                        {
                                                                           addr334:
                                                                           this.kick8.visible = false;
                                                                           addr338:
                                                                           this.kick9.visible = false;
                                                                           this.kick10.visible = false;
                                                                        }
                                                                        this.kick11.visible = false;
                                                                     }
                                                                     §§goto(addr350);
                                                                  }
                                                                  addr350:
                                                                  var _loc5_:int = 0;
                                                                  if(!_loc11_)
                                                                  {
                                                                     for(; _loc5_ < _loc4_; _loc5_++)
                                                                     {
                                                                        §§push(_loc3_[_loc5_]);
                                                                        if(_loc12_)
                                                                        {
                                                                           §§push(§§pop());
                                                                        }
                                                                        _loc6_ = §§pop();
                                                                        if(!_loc11_)
                                                                        {
                                                                           trace("before mc got");
                                                                        }
                                                                        _loc7_ = MovieClip(root).pmcs[_loc6_ + "_mc"];
                                                                        if(_loc12_)
                                                                        {
                                                                           trace("After mc got " + _loc7_);
                                                                           if(!_loc11_)
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 addr414:
                                                                                 §§push("standing2" in MovieClip(root).ao[_loc6_]);
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    addr425:
                                                                                    §§push(!§§pop());
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(_loc6_ in MovieClip(root).ao);
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       addr408:
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             addr413:
                                                                                             §§pop();
                                                                                             §§goto(addr414);
                                                                                          }
                                                                                          §§goto(addr425);
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             trace("not in ao");
                                                                                             continue;
                                                                                          }
                                                                                          addr437:
                                                                                          §§push(this);
                                                                                          §§push("p");
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             §§push(§§pop() + _loc5_);
                                                                                          }
                                                                                          _loc8_ = §§pop()[§§pop()];
                                                                                          trace("mc2 " + _loc8_);
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             §§push(this);
                                                                                             §§push("pn");
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                §§push(§§pop() + _loc5_);
                                                                                             }
                                                                                             §§pop()[§§pop()].text = _loc6_;
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                addr466:
                                                                                                §§push(this);
                                                                                                §§push("plvl");
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   §§push(§§pop() + _loc5_);
                                                                                                }
                                                                                                §§pop()[§§pop()].autoSize = TextFieldAutoSize.CENTER;
                                                                                                if(_loc12_)
                                                                                                {
                                                                                                   §§push(this);
                                                                                                   §§push("plvl");
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      §§push(§§pop() + _loc5_);
                                                                                                   }
                                                                                                   §§pop()[§§pop()].text = root.getTxt("Level",this["plvl" + _loc5_]) + " " + _loc7_.plvl;
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      if(!this.ab[_loc5_])
                                                                                                      {
                                                                                                      }
                                                                                                      addr512:
                                                                                                      (_loc9_ = this.ab[_loc5_] = new AnimatedBitmap(MovieClip(root).ao[_loc6_]["standing"],Event.ENTER_FRAME,60,false,"auto",false)).mouseEnabled = false;
                                                                                                      _loc8_.gotoAndStop(_loc7_.pclass);
                                                                                                      if(_loc12_)
                                                                                                      {
                                                                                                         root.q.toggleMC(_loc8_,"stop");
                                                                                                         _loc9_.x = _loc8_.x + _loc8_.getChildAt(0).x;
                                                                                                         if(_loc12_)
                                                                                                         {
                                                                                                            _loc9_.y = _loc8_.y + _loc8_.getChildAt(0).y;
                                                                                                            addr573:
                                                                                                            addChildAt(_loc9_,getChildIndex(this["kick" + _loc5_]));
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               trace("added " + _loc9_);
                                                                                                               §§push(MovieClip(root).pChar.key == this.creator);
                                                                                                               §§push(MovieClip(root).pChar.key == this.creator);
                                                                                                               if(_loc12_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     addr613:
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        §§push(_loc6_ !== this.creator);
                                                                                                                     }
                                                                                                                     §§push("CreatorLeft" in this.room);
                                                                                                                     if(_loc12_)
                                                                                                                     {
                                                                                                                        §§push(!§§pop());
                                                                                                                     }
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc12_)
                                                                                                                        {
                                                                                                                           §§push(this);
                                                                                                                           §§push("kick");
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + _loc5_);
                                                                                                                           }
                                                                                                                           §§pop()[§§pop()].visible = true;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§push(§§pop());
                                                                                                               }
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                               }
                                                                                                               §§goto(addr613);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr613);
                                                                                                      }
                                                                                                      §§goto(addr573);
                                                                                                   }
                                                                                                   this.ab[_loc5_].destroy();
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr512);
                                                                                          }
                                                                                          §§goto(addr466);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          trace("got through");
                                                                                          §§goto(addr437);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr413);
                                                                                 }
                                                                                 §§goto(addr408);
                                                                              }
                                                                              §§goto(addr408);
                                                                           }
                                                                        }
                                                                        §§goto(addr437);
                                                                     }
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr323);
                                                            }
                                                            §§goto(addr334);
                                                         }
                                                         §§goto(addr269);
                                                      }
                                                      §§goto(addr287);
                                                   }
                                                   §§goto(addr247);
                                                }
                                                §§goto(addr269);
                                             }
                                             §§goto(addr247);
                                          }
                                          §§goto(addr334);
                                       }
                                       §§goto(addr250);
                                    }
                                    §§goto(addr261);
                                 }
                                 §§goto(addr334);
                              }
                              §§goto(addr200);
                           }
                           §§goto(addr305);
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr334);
                  }
                  §§goto(addr329);
               }
               §§goto(addr160);
            }
            §§goto(addr241);
         }
         §§goto(addr144);
      }
      
      public function selectpos(param1:MouseEvent) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(param1.target.p === "");
            if(_loc5_)
            {
               §§push(!§§pop());
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        §§goto(addr32);
                     }
                  }
                  §§goto(addr54);
               }
            }
            addr32:
            §§pop();
            if(!_loc6_)
            {
               addr35:
               §§push(param1.target.p === MovieClip(root).pChar.key);
               if(_loc5_)
               {
                  addr54:
                  if(§§pop())
                  {
                     var _loc2_:String = param1.target.name;
                     var _loc3_:int = int(_loc2_.split("_")[1]);
                     var _loc4_:int = int(_loc2_.split("_")[2]);
                     if(_loc5_)
                     {
                        MovieClip(root).battle.send("SetPos",_loc3_,_loc4_);
                     }
                     return;
                  }
               }
               §§goto(addr54);
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function start(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            trace("Battle C:" + MovieClip(root).battle);
            if(_loc3_)
            {
               if(getTimer() - this.laststart >= 1000)
               {
                  if(_loc3_)
                  {
                     §§goto(addr52);
                  }
               }
               §§goto(addr59);
            }
         }
         addr52:
         root.getC().send("StartBattle");
         if(!_loc2_)
         {
            addr59:
            this.laststart = getTimer();
         }
      }
      
      public function battlestart(param1:Message, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param2);
         if(_loc4_)
         {
            if(!§§pop())
            {
               return;
            }
            MovieClip(root).q.mapLoading = this.map;
            §§push("Floor" in this.room);
         }
         if(§§pop())
         {
            root.q.mapLoading;
            if(_loc4_)
            {
               addr53:
               MovieClip(root).loado = MovieClip(root).loadbattle;
               if(_loc4_)
               {
                  root.gotoAndStop(4);
                  if(!_loc3_)
                  {
                     addr70:
                     root.cleargame();
                  }
                  return;
               }
            }
            §§goto(addr70);
         }
         §§goto(addr53);
      }
      
      public function toggleKick(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.kick0.visible = param1;
            if(!_loc3_)
            {
               this.kick1.visible = param1;
               if(!_loc3_)
               {
                  addr38:
                  this.kick2.visible = param1;
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr49);
               }
               this.kick3.visible = param1;
            }
            addr49:
            return;
         }
         §§goto(addr38);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.ab = new Vector.<AnimatedBitmap>(12);
         if(_loc2_)
         {
            stop();
            if("Players" in this.room)
            {
               if(this.room.Type == "PVP")
               {
                  if(this.room.Players == 8)
                  {
                     gotoAndStop(2);
                     if(_loc2_)
                     {
                        §§goto(addr55);
                     }
                     else
                     {
                        addr83:
                        gotoAndStop(4);
                     }
                     §§goto(addr86);
                  }
                  addr55:
                  if(this.room.Players == 12)
                  {
                     if(!_loc2_)
                     {
                        addr86:
                        return;
                     }
                     gotoAndStop(3);
                     if(!_loc2_)
                     {
                        §§goto(addr98);
                     }
                  }
                  return;
               }
               if(this.room.Players != 6)
               {
                  §§goto(addr87);
               }
               §§goto(addr83);
            }
            addr87:
            this.Start();
            addEventListener(MouseEvent.CLICK,this.kicklistener,false,0,true);
            §§goto(addr98);
         }
         addr98:
         this.laststart = 0;
      }
      
      function frame2() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.Start();
         }
      }
      
      function frame3() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.Start();
         }
      }
      
      function frame4() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.Start();
         }
      }
   }
}
