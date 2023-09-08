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
   import playerio.PlayerIOError;
   import playerio.RoomInfo;
   
   public dynamic class Settings extends MovieClip
   {
       
      
      public var listmc:MovieClip;
      
      public var maskmc:MovieClip;
      
      public var soundbtn:SimpleButton;
      
      public var qualitylabel:TextField;
      
      public var channelbtn:SimpleButton;
      
      public var lowbtn:SimpleButton;
      
      public var frameslabel:TextField;
      
      public var logoutbtn:SimpleButton;
      
      public var musicdrag:MovieClip;
      
      public var mainbtn:SimpleButton;
      
      public var drag:MovieClip;
      
      public var fps30label:TextField;
      
      public var charscreenbtn:SimpleButton;
      
      public var sounddrag:MovieClip;
      
      public var closebtn:Close;
      
      public var mult_1:SimpleButton;
      
      public var Sounds:TextField;
      
      public var medbtn:SimpleButton;
      
      public var fps60label:TextField;
      
      public var mult_2:SimpleButton;
      
      public var Music:TextField;
      
      public var currentchanneltxt:TextField;
      
      public var highbtn:SimpleButton;
      
      public var l:Number;
      
      public var r:Number;
      
      public var mv:Number;
      
      public var sv:Number;
      
      public function Settings()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               addr22:
               addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
            }
            return;
         }
         §§goto(addr22);
      }
      
      public function clickm(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1.target.name == "mult_1")
            {
               if(!_loc3_)
               {
                  stage.frameRate = 60;
                  root.so.data.framerate = 60;
                  if(!_loc3_)
                  {
                     root.so.flush();
                     if(!_loc3_)
                     {
                        root.mult = 1;
                     }
                  }
                  else
                  {
                     addr206:
                     root.so.data.renderq = "medium";
                     if(!_loc3_)
                     {
                        addr214:
                        root.so.flush();
                        root.emptyAO();
                     }
                     else
                     {
                        addr239:
                        root.so.data.renderq = "high";
                        root.so.flush();
                        root.emptyAO();
                        §§goto(addr249);
                     }
                  }
               }
               else
               {
                  addr190:
                  root.so.flush();
                  if(_loc2_)
                  {
                     root.emptyAO();
                     addr197:
                  }
               }
               §§goto(addr249);
            }
            else if(param1.target.name == "mult_2")
            {
               if(_loc2_)
               {
                  stage.frameRate = 30;
                  if(_loc2_)
                  {
                     root.so.data.framerate = 30;
                     root.so.flush();
                     if(_loc2_)
                     {
                        root.mult = 2;
                     }
                     else
                     {
                        addr81:
                        §§goto(addr249);
                     }
                     §§goto(addr249);
                  }
                  else
                  {
                     §§goto(addr214);
                  }
               }
            }
            else if(param1.target.name == "mainbtn")
            {
               gotoAndStop(1);
               §§goto(addr81);
            }
            else if(param1.target.name == "channelbtn")
            {
               addr87:
               gotoAndStop(2);
            }
            else if(param1.target.name == "soundbtn")
            {
               if(!_loc3_)
               {
                  gotoAndStop(3);
               }
               else
               {
                  addr183:
                  root.so.data.renderq = "low";
                  if(_loc2_)
                  {
                     §§goto(addr190);
                  }
                  else
                  {
                     §§goto(addr214);
                  }
               }
            }
            else
            {
               if(param1.target.name == "closebtn")
               {
                  if(!_loc3_)
                  {
                     this.close();
                     if(_loc3_)
                     {
                     }
                     §§goto(addr249);
                  }
                  else
                  {
                     §§goto(addr197);
                  }
               }
               else
               {
                  if(param1.target.parent.name.indexOf("channel") >= 0)
                  {
                     root.joinChannel(int(param1.target.parent.name.split("_")[1]));
                  }
                  else if(param1.target.name == "charscreenbtn")
                  {
                     if(_loc2_)
                     {
                        root.logout(3);
                        §§goto(addr249);
                     }
                     else
                     {
                        §§goto(addr226);
                     }
                  }
                  else if(param1.target.name == "logoutbtn")
                  {
                     if(!_loc3_)
                     {
                        root.logout(2);
                        if(!_loc2_)
                        {
                           addr234:
                           root.renderquality = "high";
                           if(_loc3_)
                           {
                           }
                        }
                        §§goto(addr249);
                     }
                     else
                     {
                        addr203:
                        root.renderquality = "medium";
                        §§goto(addr206);
                     }
                  }
                  else
                  {
                     if(param1.target.name == "lowbtn")
                     {
                        if(_loc2_)
                        {
                           root.renderquality = "low";
                           if(!_loc3_)
                           {
                              §§goto(addr183);
                           }
                           §§goto(addr197);
                        }
                        else
                        {
                           §§goto(addr239);
                        }
                     }
                     else
                     {
                        if(param1.target.name != "medbtn")
                        {
                           if(param1.target.name == "highbtn")
                           {
                              if(_loc2_)
                              {
                                 §§goto(addr234);
                              }
                           }
                        }
                        §§goto(addr249);
                     }
                     §§goto(addr249);
                  }
                  §§goto(addr249);
               }
               §§goto(addr203);
            }
            addr249:
            return;
         }
         §§goto(addr87);
      }
      
      public function moused(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1.target.name == "blob")
            {
               if(!_loc3_)
               {
                  param1.target.parent.startDrag(false,new Rectangle(this.l,param1.target.parent.y,this.r - this.l,0));
                  if(_loc2_)
                  {
                     addr60:
                     param1.target.parent.dragging = true;
                  }
               }
            }
            return;
         }
         §§goto(addr60);
      }
      
      public function mouseup(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:* = NaN;
         §§push(param1.target is SimpleButton);
         if(_loc5_)
         {
            if(§§pop())
            {
               if(_loc5_)
               {
                  addr32:
                  §§pop();
                  §§push(param1.target.name === "blob");
                  if(!_loc4_)
                  {
                     §§push(!§§pop());
                  }
               }
            }
            if(§§pop())
            {
               if(_loc5_)
               {
                  return;
               }
               addr87:
               §§push(this[_loc2_ + "drag"].x - this.l);
               if(!_loc4_)
               {
                  §§push(this.r);
                  if(_loc5_)
                  {
                     §§push(§§pop() - this.l);
                  }
                  §§push(§§pop() / §§pop());
                  if(_loc5_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               _loc3_ = §§pop();
               if(_loc5_)
               {
                  trace("Volume: " + _loc3_);
                  if(_loc5_)
                  {
                     addr120:
                     root[_loc2_ + "Transformer"] = new SoundTransform(_loc3_);
                     root[_loc2_ + "Channel"].soundTransform = root[_loc2_ + "Transformer"];
                     if(_loc5_)
                     {
                        addr149:
                        root.so.data[_loc2_ + "V"] = _loc3_;
                        if(!_loc4_)
                        {
                           root.so.flush();
                           addr162:
                           this.sounddrag.dragging = false;
                           if(!_loc5_)
                           {
                           }
                        }
                        §§goto(addr172);
                     }
                     §§goto(addr168);
                  }
                  §§goto(addr162);
               }
               §§goto(addr149);
            }
            else if(this.sounddrag)
            {
               if(!_loc4_)
               {
                  if(this.sounddrag.dragging)
                  {
                     if(!_loc4_)
                     {
                        §§push("sound");
                        if(_loc5_)
                        {
                           _loc2_ = §§pop();
                           addr63:
                           if(this.musicdrag.dragging)
                           {
                              if(_loc5_)
                              {
                                 §§goto(addr70);
                              }
                              §§goto(addr120);
                           }
                           §§goto(addr74);
                        }
                        addr70:
                        _loc2_ = "music";
                        if(!_loc4_)
                        {
                           this[_loc2_ + "drag"].stopDrag();
                           addr74:
                           §§goto(addr87);
                        }
                        addr168:
                        this.musicdrag.dragging = false;
                        addr172:
                        return;
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr63);
               }
               §§goto(addr74);
            }
            §§goto(addr162);
         }
         §§goto(addr32);
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            root.settingsmc = null;
            if(_loc2_)
            {
               root.q.removeChildFade(this);
            }
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            removeEventListener(MouseEvent.MOUSE_UP,this.mouseup);
            if(!_loc1_)
            {
               removeEventListener(MouseEvent.MOUSE_DOWN,this.moused);
               if(_loc2_)
               {
                  addr42:
                  removeEventListener(MouseEvent.CLICK,this.clickm);
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      public function list() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            var c:Client = root.client;
            if(_loc2_)
            {
               addr35:
               c.multiplayer.listRooms("Game",{
                  "Map":root.RoomData.Map,
                  "Type":"City",
                  "B":root.branch
               },50,0,function(param1:Array):void
               {
                  var _loc6_:Boolean = true;
                  var _loc7_:Boolean = false;
                  var _loc4_:MovieClip = null;
                  var _loc5_:RoomInfo = null;
                  var _loc2_:int = param1.length;
                  if(_loc6_)
                  {
                     root.q.RemoveChildren(listmc);
                     if(!_loc7_)
                     {
                        trace(param1);
                     }
                  }
                  var _loc3_:int = 1;
                  if(!_loc7_)
                  {
                     while(_loc3_ <= _loc2_)
                     {
                        (_loc4_ = new Channel() as MovieClip).a.txt.text = root.getTxt("Channel",_loc4_.a.txt) + " " + _loc3_;
                        _loc5_ = param1[_loc3_];
                        if(_loc6_)
                        {
                           _loc4_.room = _loc5_;
                           if(!_loc7_)
                           {
                              _loc4_.name = "channel_" + _loc3_;
                              if(_loc6_)
                              {
                                 _loc4_.y = (_loc3_ - 1) * (_loc4_.height + 5);
                                 if(_loc6_)
                                 {
                                    listmc.addChild(_loc4_);
                                    if(_loc6_)
                                    {
                                       _loc3_++;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               },function(param1:PlayerIOError):void
               {
                  trace(param1);
               });
            }
            return;
         }
         §§goto(addr35);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.drag.titletxt.text = root.getTxt("Settings",this.drag.titletxt);
         root.q.createDrag(this.drag,this);
         stop();
         if(_loc2_)
         {
            this.frameslabel.text = root.getTxt("Select frames",this.frameslabel);
            if(_loc2_)
            {
               this.qualitylabel.text = root.getTxt("Select quality",this.qualitylabel);
               if(!_loc1_)
               {
                  root.translateButtons(this);
                  if(_loc2_)
                  {
                     §§push("Type" in root.RoomData);
                     if(_loc2_)
                     {
                        if(§§pop())
                        {
                           if(!_loc1_)
                           {
                              §§pop();
                              §§push(root.RoomData.Type === "City");
                              if(_loc1_)
                              {
                              }
                              §§goto(addr92);
                           }
                           §§push(!§§pop());
                        }
                     }
                     addr92:
                     if(§§pop())
                     {
                        if(!_loc1_)
                        {
                           addr96:
                           this.channelbtn.mouseEnabled = false;
                           if(!_loc1_)
                           {
                              this.channelbtn.alpha = 0.5;
                              this.charscreenbtn.mouseEnabled = false;
                              if(!_loc1_)
                              {
                                 this.charscreenbtn.alpha = 0.5;
                                 if(_loc2_)
                                 {
                                    this.logoutbtn.mouseEnabled = false;
                                 }
                              }
                              §§goto(addr155);
                           }
                        }
                        this.logoutbtn.alpha = 0.5;
                        addEventListener(MouseEvent.CLICK,this.clickm);
                        this.l = 96.5;
                        this.r = 191;
                     }
                     §§goto(addr128);
                  }
                  addr128:
                  if(!_loc1_)
                  {
                     addEventListener(MouseEvent.MOUSE_DOWN,this.moused);
                  }
                  §§goto(addr155);
               }
               addr155:
               addEventListener(MouseEvent.MOUSE_UP,this.mouseup);
               return;
            }
            §§goto(addr96);
         }
         §§goto(addr128);
      }
      
      function frame2() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(Boolean(root.RoomData));
         if(!_loc2_)
         {
            if(§§pop())
            {
               if(!_loc2_)
               {
                  addr25:
                  §§pop();
                  §§push("ID" in root.RoomData);
               }
            }
            if(§§pop())
            {
               this.currentchanneltxt.text = root.getTxt("Current channel",this.currentchanneltxt) + root.RoomData.ID + ".";
            }
            this.list();
            if(_loc1_)
            {
               root.translateButtons(this.listmc);
            }
            root.q.scrollbar(this.listmc,this.maskmc);
            return;
         }
         §§goto(addr25);
      }
      
      function frame3() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.Music.text = root.getTxt("Music",this.Music);
            this.Sounds.text = root.getTxt("Sounds",this.Sounds);
            if(!_loc2_)
            {
               this.drag.titletxt.text = root.getTxt("Settings",this.drag.titletxt);
               this.translated3 = true;
               addr36:
            }
            this.mv = root.musicTransformer.volume;
            this.sv = root.soundTransformer.volume;
            this.musicdrag.x = this.l + (this.r - this.l) * this.mv;
            if(_loc1_)
            {
               this.sounddrag.x = this.l + (this.r - this.l) * this.sv;
            }
            return;
         }
         §§goto(addr36);
      }
   }
}
