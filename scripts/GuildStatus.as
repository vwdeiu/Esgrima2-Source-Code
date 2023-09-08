package
{
   import Esgrima2_fla.*;
   import fl.motion.*;
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
   
   public dynamic class GuildStatus extends MovieClip
   {
       
      
      public var warmc:MovieClip;
      
      public var timermc:MovieClip;
      
      public var memberbtn:SimpleButton;
      
      public var emblem2:MovieClip;
      
      public var homebtn:SimpleButton;
      
      public var scoremc:MovieClip;
      
      public var bg:MovieClip;
      
      public var closebtn:Close;
      
      public var statustxt:TextField;
      
      public var wartxt:TextField;
      
      public var emblemmc:Emblem;
      
      public var o:DatabaseObject;
      
      public var timer:Timer;
      
      public var guildstatus:String;
      
      public var warformat:TextFormat;
      
      public var oguild:DatabaseObject;
      
      public var tf:TextFormat;
      
      public var c:Client;
      
      public var l:Date;
      
      public var end:Date;
      
      public var end2:Date;
      
      public var now:Date;
      
      public var ms:Number;
      
      public var seconds:Number;
      
      public var minutes:Number;
      
      public var hours:int;
      
      public function GuildStatus()
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
      
      public function timerevent(param1:TimerEvent) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         if(!_loc8_)
         {
            if(this.timermc.visible)
            {
               _loc2_ = int(this.timermc.secondtxt.text);
               if(!_loc8_)
               {
                  §§push(int(int(this.timermc.minutetxt.text)));
                  if(!_loc8_)
                  {
                     _loc3_ = §§pop();
                     if(!_loc8_)
                     {
                        §§push(int(int(this.timermc.hourtxt.text)));
                        if(!_loc8_)
                        {
                           _loc4_ = §§pop();
                           §§push(_loc2_);
                           if(_loc9_)
                           {
                              §§push(§§pop() == 0);
                              §§push(§§pop() == 0);
                              if(_loc9_)
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                    addr118:
                                    if(!_loc8_)
                                    {
                                       addr85:
                                       §§push(_loc3_ == 0);
                                    }
                                    §§push(_loc3_ - 1);
                                    if(_loc9_)
                                    {
                                       _loc3_ = §§pop();
                                       addr123:
                                       §§push(_loc3_);
                                    }
                                    if(§§pop() < 0)
                                    {
                                       if(_loc9_)
                                       {
                                          §§push(59);
                                          if(_loc9_)
                                          {
                                             addr131:
                                             _loc3_ = §§pop();
                                             §§push(_loc4_);
                                             if(!_loc8_)
                                             {
                                                addr136:
                                                _loc4_ = §§pop() - 1;
                                                §§push(_loc4_);
                                             }
                                             §§push(0);
                                             if(!_loc8_)
                                             {
                                                §§push(§§pop() <= §§pop());
                                                §§push(§§pop() <= §§pop());
                                                if(_loc9_)
                                                {
                                                   addr147:
                                                   if(§§pop())
                                                   {
                                                      §§pop();
                                                      if(_loc9_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(!_loc8_)
                                                         {
                                                            addr156:
                                                            §§push(§§pop() <= 0);
                                                            if(§§pop() <= 0)
                                                            {
                                                               §§pop();
                                                               if(!_loc8_)
                                                               {
                                                                  addr162:
                                                                  §§push(_loc2_);
                                                                  if(!_loc8_)
                                                                  {
                                                                     addr167:
                                                                     if(§§pop() <= 0)
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           §§push(0);
                                                                           if(!_loc8_)
                                                                           {
                                                                              addr182:
                                                                              _loc4_ = §§pop();
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    addr188:
                                                                                    _loc3_ = §§pop();
                                                                                    addr190:
                                                                                    _loc2_ = 0;
                                                                                 }
                                                                                 §§goto(addr190);
                                                                              }
                                                                              this.warformat = new TextFormat(null,null,7847214);
                                                                              this.statustxt.text = "At Peace";
                                                                              if(!_loc8_)
                                                                              {
                                                                                 addr204:
                                                                                 this.statustxt.setTextFormat(this.warformat);
                                                                                 this.timermc.visible = false;
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    this.scoremc.visible = false;
                                                                                    this.warmc.visible = false;
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       addr227:
                                                                                       this.timer.stop();
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          addr233:
                                                                                          §§push(String(_loc2_));
                                                                                          §§push(String(_loc2_));
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             _loc5_ = §§pop();
                                                                                             if(§§pop().length == 1)
                                                                                             {
                                                                                                §§push("0");
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   §§push(_loc5_);
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            _loc5_ = §§pop();
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               addr261:
                                                                                                               §§push(String(_loc3_));
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     addr272:
                                                                                                                     _loc6_ = §§pop();
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        addr275:
                                                                                                                        if(§§pop().length == 1)
                                                                                                                        {
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              addr281:
                                                                                                                              §§push("0");
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       if(!_loc8_)
                                                                                                                                       {
                                                                                                                                          _loc6_ = §§pop();
                                                                                                                                          if(!_loc8_)
                                                                                                                                          {
                                                                                                                                             addr298:
                                                                                                                                             §§push(String(_loc4_));
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                addr306:
                                                                                                                                                §§push(_loc7_ = §§pop());
                                                                                                                                                if(!_loc9_)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                addr320:
                                                                                                                                                _loc7_ = §§pop();
                                                                                                                                                §§goto(addr321);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr321:
                                                                                                                                          this.timermc.secondtxt.text = _loc5_;
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             this.timermc.minutetxt.text = _loc6_;
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                this.timermc.hourtxt.text = _loc7_;
                                                                                                                                                addr348:
                                                                                                                                                this.timermc.secondtxt.setTextFormat(this.timermc.textFormat);
                                                                                                                                             }
                                                                                                                                             §§goto(addr348);
                                                                                                                                          }
                                                                                                                                          this.timermc.minutetxt.setTextFormat(this.timermc.textFormat);
                                                                                                                                          §§goto(addr362);
                                                                                                                                       }
                                                                                                                                       if(§§pop().length == 1)
                                                                                                                                       {
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             §§push("0");
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                             addr319:
                                                                                                                                             §§goto(addr320);
                                                                                                                                             §§push(§§pop());
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr320);
                                                                                                                                    }
                                                                                                                                    addr318:
                                                                                                                                    §§goto(addr319);
                                                                                                                                    §§push(§§pop() + _loc7_);
                                                                                                                                 }
                                                                                                                                 §§goto(addr318);
                                                                                                                              }
                                                                                                                              §§goto(addr319);
                                                                                                                           }
                                                                                                                           addr362:
                                                                                                                           this.timermc.hourtxt.setTextFormat(this.timermc.textFormat);
                                                                                                                           return;
                                                                                                                        }
                                                                                                                        §§goto(addr298);
                                                                                                                     }
                                                                                                                     §§goto(addr320);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr306);
                                                                                                         }
                                                                                                         §§goto(addr275);
                                                                                                      }
                                                                                                      §§goto(addr319);
                                                                                                   }
                                                                                                   §§goto(addr318);
                                                                                                }
                                                                                                §§goto(addr319);
                                                                                             }
                                                                                             §§goto(addr261);
                                                                                          }
                                                                                          §§goto(addr272);
                                                                                       }
                                                                                       §§goto(addr281);
                                                                                    }
                                                                                    §§goto(addr348);
                                                                                 }
                                                                                 §§goto(addr306);
                                                                              }
                                                                              §§goto(addr227);
                                                                           }
                                                                           §§goto(addr190);
                                                                        }
                                                                        §§goto(addr261);
                                                                     }
                                                                     §§goto(addr233);
                                                                  }
                                                                  §§goto(addr182);
                                                               }
                                                               §§goto(addr348);
                                                            }
                                                            §§goto(addr167);
                                                         }
                                                         §§goto(addr182);
                                                      }
                                                      §§goto(addr204);
                                                   }
                                                }
                                                §§goto(addr156);
                                             }
                                             §§goto(addr167);
                                          }
                                          §§goto(addr136);
                                       }
                                       §§goto(addr162);
                                    }
                                    §§goto(addr136);
                                 }
                                 §§push(§§pop());
                                 if(!_loc8_)
                                 {
                                    addr91:
                                    if(§§pop())
                                    {
                                       §§pop();
                                       §§push(_loc4_);
                                       if(!_loc8_)
                                       {
                                          addr98:
                                          if(§§pop() == 0)
                                          {
                                             if(_loc9_)
                                             {
                                                return;
                                             }
                                          }
                                          else
                                          {
                                             _loc2_--;
                                             §§push(_loc2_);
                                             if(_loc9_)
                                             {
                                                §§push(0);
                                                if(_loc9_)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      _loc2_ = 59;
                                                      if(_loc9_)
                                                      {
                                                         §§goto(addr118);
                                                      }
                                                      §§goto(addr190);
                                                   }
                                                   §§goto(addr123);
                                                }
                                                §§goto(addr167);
                                             }
                                             §§goto(addr118);
                                          }
                                          §§goto(addr233);
                                       }
                                       §§goto(addr136);
                                    }
                                    §§goto(addr98);
                                 }
                                 §§goto(addr147);
                              }
                              §§goto(addr91);
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr188);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr85);
               }
               §§goto(addr281);
            }
            §§goto(addr306);
         }
         §§goto(addr123);
      }
      
      public function clicked(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(param1.target.name == "closebtn")
         {
            this.close();
            root.guildmc = null;
         }
         else if(param1.target.name == "memberbtn")
         {
            if(!_loc2_)
            {
               root.guildmc = new GuildMembers() as MovieClip;
               root.guildmc.o = this.o;
               if(!_loc2_)
               {
                  root.guildmc.x = x;
                  if(!_loc2_)
                  {
                     §§goto(addr61);
                  }
                  §§goto(addr107);
               }
               addr61:
               root.guildmc.y = y;
               root.addChildAt(root.guildmc,root.getChildIndex(this));
               if(!_loc2_)
               {
                  this.close(true);
                  if(!_loc2_)
                  {
                     §§goto(addr123);
                  }
                  else
                  {
                     root.guildmc.o = this.o;
                     addr103:
                     root.guildmc.x = x;
                     addr107:
                     root.guildmc.y = y;
                     addr91:
                  }
                  §§goto(addr123);
               }
               root.addChildAt(root.guildmc,root.getChildIndex(this));
               if(_loc3_)
               {
                  this.close(true);
               }
               §§goto(addr123);
            }
            §§goto(addr103);
         }
         else if(param1.target.name == "homebtn")
         {
            root.guildmc = new GuildHome() as MovieClip;
            §§goto(addr91);
         }
         addr123:
      }
      
      public function close(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.clear();
            if(_loc3_)
            {
               §§push(param1);
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     if(!_loc2_)
                     {
                        root.q.removeChildFade(this);
                        if(_loc3_)
                        {
                           addr45:
                           if(param1)
                           {
                              if(!_loc3_)
                              {
                              }
                           }
                           §§goto(addr53);
                        }
                     }
                     root.removeChild(this);
                     §§goto(addr53);
                  }
               }
               §§goto(addr45);
            }
         }
         addr53:
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(Boolean(this.timer));
         if(_loc1_)
         {
            if(§§pop())
            {
               if(!_loc2_)
               {
                  §§pop();
                  §§push(Boolean(this.timer.running));
               }
            }
         }
         if(§§pop())
         {
            if(_loc1_)
            {
               this.timer.stop();
               if(_loc1_)
               {
                  addr40:
                  if(this.emblem2.b)
                  {
                     if(!_loc2_)
                     {
                        addr53:
                        this.emblem2.b.bitmapData.dispose();
                        addr58:
                        if(this.emblemmc.b)
                        {
                           if(!_loc2_)
                           {
                              this.emblemmc.b.bitmapData.dispose();
                              if(!_loc2_)
                              {
                                 addr71:
                                 if(this.timer)
                                 {
                                    §§goto(addr81);
                                 }
                                 §§goto(addr90);
                              }
                              addr81:
                              this.timer.removeEventListener(TimerEvent.TIMER,this.timerevent);
                              if(!_loc2_)
                              {
                                 addr90:
                                 this.timer = null;
                                 if(!_loc1_)
                                 {
                                 }
                                 §§goto(addr102);
                              }
                              removeEventListener(MouseEvent.CLICK,this.clicked);
                              addr102:
                              return;
                           }
                           §§goto(addr90);
                        }
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr58);
               }
            }
            §§goto(addr53);
         }
         §§goto(addr40);
      }
      
      public function setScore(param1:TextField, param2:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = String(param2);
         §§push(4);
         if(_loc6_)
         {
            §§push(int(§§pop() - _loc3_.length));
         }
         var _loc4_:* = §§pop();
         var _loc5_:int = 0;
         if(!_loc7_)
         {
            while(_loc5_ < _loc4_)
            {
               §§push("0");
               if(_loc6_)
               {
                  §§push(§§pop() + _loc3_);
               }
               _loc3_ = §§pop();
               if(_loc6_)
               {
                  _loc5_++;
               }
            }
            if(!_loc7_)
            {
               param1.text = _loc3_;
            }
         }
      }
      
      function frame1() : *
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         root.translateButtons(this);
         this.timer = new Timer(1000,0);
         this.timer.addEventListener(TimerEvent.TIMER,this.timerevent);
         this.timer.start();
         this.guildstatus = "At Peace";
         this.statustxt.alpha = 0.8;
         if(_loc2_)
         {
            this.warformat = new TextFormat(null,null,7847214);
            §§push("Status");
            if(_loc2_)
            {
               §§push(§§pop() in this.o);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        this.guildstatus = this.o.Status;
                        if(_loc2_)
                        {
                           addr74:
                           §§push(this.guildstatus);
                           if(_loc2_)
                           {
                              §§push("At War");
                              if(_loc2_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc2_)
                                    {
                                       this.warformat.color = 16729670;
                                       if(_loc2_)
                                       {
                                          addr114:
                                          this.statustxt.text = root.getTxt(this.guildstatus,this.statustxt);
                                          if(_loc2_)
                                          {
                                             §§push(this.guildstatus);
                                             if(!_loc3_)
                                             {
                                                §§push("At Peace");
                                                if(!_loc3_)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      this.emblem2.raster();
                                                   }
                                                   this.statustxt.setTextFormat(this.warformat);
                                                   addr144:
                                                   trace(this.guildstatus);
                                                   addr151:
                                                   if(this.guildstatus !== "At War")
                                                   {
                                                      this.warmc.visible = false;
                                                      if(_loc2_)
                                                      {
                                                         this.timermc.visible = false;
                                                         if(!_loc3_)
                                                         {
                                                            this.scoremc.visible = false;
                                                         }
                                                         else
                                                         {
                                                            addr411:
                                                            this.timermc.secondtxt.text = Math.floor(this.seconds);
                                                            if(_loc2_)
                                                            {
                                                               if(this.timermc.hourtxt.text.length <= 1)
                                                               {
                                                                  addr429:
                                                                  this.timermc.hourtxt.text = "0" + this.timermc.hourtxt.text;
                                                                  if(_loc2_)
                                                                  {
                                                                     addr442:
                                                                     if(this.timermc.minutetxt.text.length <= 1)
                                                                     {
                                                                        this.timermc.minutetxt.text = "0" + this.timermc.minutetxt.text;
                                                                     }
                                                                     if(this.timermc.secondtxt.text.length <= 1)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           addr468:
                                                                           this.timermc.secondtxt.text = "0" + this.timermc.secondtxt.text;
                                                                           addr478:
                                                                           addEventListener(MouseEvent.CLICK,this.clicked);
                                                                           addr484:
                                                                           this.bg.guildstatuslabel.text = root.getTxt("GuildStatus",this.bg.guildstatuslabel) + ":";
                                                                           if(!_loc3_)
                                                                           {
                                                                              this.warmc.warwithlabel.text = root.getTxt("WarWith",this.warmc.warwithlabel) + ":";
                                                                              addr499:
                                                                           }
                                                                           §§goto(addr518);
                                                                        }
                                                                        addr518:
                                                                        this.bg.statstxt.text = root.getTxt("Stats",this.bg.statstxt);
                                                                        if(!_loc3_)
                                                                        {
                                                                           root.q.raster(this.bg);
                                                                        }
                                                                        return;
                                                                     }
                                                                     §§goto(addr478);
                                                                  }
                                                                  §§goto(addr484);
                                                               }
                                                               §§goto(addr442);
                                                            }
                                                         }
                                                         §§goto(addr478);
                                                      }
                                                      §§goto(addr429);
                                                   }
                                                   else
                                                   {
                                                      this.tf = new TextFormat();
                                                      this.tf.letterSpacing = 5;
                                                      if(_loc2_)
                                                      {
                                                         addr182:
                                                         if(!("Score" in this.o))
                                                         {
                                                            this.o.Score = 0;
                                                            if(!_loc3_)
                                                            {
                                                               addr193:
                                                               this.setScore(this.scoremc.score1,this.o.Score);
                                                               this.scoremc.score1.setTextFormat(this.tf);
                                                               this.c = root.client;
                                                               this.c.bigDB.load("Guilds",this.o.WarGuild,function(param1:DatabaseObject):void
                                                               {
                                                                  var _loc3_:Boolean = true;
                                                                  var _loc4_:Boolean = false;
                                                                  if(_loc3_)
                                                                  {
                                                                     var og:DatabaseObject = param1;
                                                                     oguild = og;
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(!("Score" in og))
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              og.Score = 0;
                                                                              addr32:
                                                                              setScore(scoremc.score2,og.Score);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 scoremc.score2.setTextFormat(tf);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr49:
                                                                                    if(og.Emblem.indexOf(".") >= 0)
                                                                                    {
                                                                                       addr56:
                                                                                       var displayIt:* = function(param1:DatabaseObject):void
                                                                                       {
                                                                                          var _loc3_:Boolean = true;
                                                                                          var _loc4_:Boolean = false;
                                                                                          var el:Loader = null;
                                                                                          var completed:* = undefined;
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             var oge:DatabaseObject = param1;
                                                                                             completed = function(param1:Event):void
                                                                                             {
                                                                                                var _loc3_:Boolean = true;
                                                                                                var _loc4_:Boolean = false;
                                                                                                var _loc2_:Bitmap = el.content as Bitmap;
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   _loc2_.scaleX = 130 / _loc2_.width;
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      _loc2_.scaleY = 130 / _loc2_.height;
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         emblemmc.addChild(_loc2_);
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            addr35:
                                                                                                            el.contentLoaderInfo.removeEventListener(Event.COMPLETE,completed);
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               addr43:
                                                                                                               emblem2.visible = false;
                                                                                                            }
                                                                                                         }
                                                                                                         return;
                                                                                                      }
                                                                                                      §§goto(addr35);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr43);
                                                                                             };
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr27:
                                                                                                trace(oge);
                                                                                                el = new Loader();
                                                                                             }
                                                                                             el.loadBytes(oge.EmblemData);
                                                                                             el.contentLoaderInfo.addEventListener(Event.COMPLETE,completed);
                                                                                             return;
                                                                                          }
                                                                                          §§goto(addr27);
                                                                                       };
                                                                                       if(!root[o.WarGuild + "EmblemO"])
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             addr69:
                                                                                             c.bigDB.load("GuildEmblems",o.WarGuild,function(param1:DatabaseObject):void
                                                                                             {
                                                                                                var _loc2_:Boolean = false;
                                                                                                var _loc3_:Boolean = true;
                                                                                                displayIt(param1);
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   root[o.WarGuild + "EmblemO"] = param1;
                                                                                                }
                                                                                             });
                                                                                             addr86:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr92:
                                                                                             emblemmc.raster();
                                                                                             emblem2.visible = false;
                                                                                          }
                                                                                          return;
                                                                                       }
                                                                                       displayIt(o.WarGuild + "EmblemO");
                                                                                       §§goto(addr86);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       emblemmc.gotoAndStop(og.Emblem);
                                                                                    }
                                                                                    §§goto(addr92);
                                                                                 }
                                                                                 §§goto(addr56);
                                                                              }
                                                                              §§goto(addr69);
                                                                           }
                                                                           §§goto(addr56);
                                                                        }
                                                                        §§goto(addr32);
                                                                     }
                                                                     §§goto(addr56);
                                                                  }
                                                                  §§goto(addr49);
                                                               });
                                                               this.wartxt.text = this.o.WarGuild;
                                                               if(!_loc3_)
                                                               {
                                                                  addr229:
                                                                  this.l = this.o.WarDate;
                                                                  if(_loc2_)
                                                                  {
                                                                     trace(this.o.WarDate);
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr243:
                                                                        this.end = this.o.WarDate;
                                                                        this.end2 = new Date(this.end.fullYearUTC,this.end.monthUTC,this.end.dateUTC,this.end.hoursUTC,this.end.minutesUTC,this.end.secondsUTC,this.end.millisecondsUTC);
                                                                        this.end2.date += 1;
                                                                        trace(this.o.WarDate);
                                                                        this.now = new Date();
                                                                        this.now = new Date(this.now.fullYearUTC,this.now.monthUTC,this.now.dateUTC,this.now.hoursUTC,this.now.minutesUTC,this.now.secondsUTC,this.now.millisecondsUTC);
                                                                        this.ms = this.end2.valueOf() - this.now.valueOf();
                                                                        addr248:
                                                                        §§push(this);
                                                                        §§push(this.ms);
                                                                        if(_loc2_)
                                                                        {
                                                                           §§push(§§pop() / 1000);
                                                                        }
                                                                        §§pop().seconds = §§pop();
                                                                        if(!_loc3_)
                                                                        {
                                                                           this.minutes = Math.floor(this.seconds / 60);
                                                                        }
                                                                        this.hours = Math.floor(this.minutes / 60);
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.seconds);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(this.minutes);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(§§pop() * 60);
                                                                              }
                                                                              §§push(§§pop() - §§pop());
                                                                           }
                                                                           §§pop().seconds = §§pop();
                                                                           if(_loc2_)
                                                                           {
                                                                              §§push(this);
                                                                              §§push(this.minutes);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(§§pop() - this.hours * 60);
                                                                              }
                                                                              §§pop().minutes = §§pop();
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr392:
                                                                                 this.timermc.hourtxt.text = this.hours;
                                                                                 addr398:
                                                                                 trace(this.hours);
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    addr405:
                                                                                    this.timermc.minutetxt.text = this.minutes;
                                                                                    §§goto(addr411);
                                                                                 }
                                                                              }
                                                                              §§goto(addr478);
                                                                           }
                                                                           §§goto(addr398);
                                                                        }
                                                                        §§goto(addr499);
                                                                     }
                                                                     §§goto(addr248);
                                                                  }
                                                                  §§goto(addr468);
                                                               }
                                                               §§goto(addr243);
                                                            }
                                                            §§goto(addr429);
                                                         }
                                                         §§goto(addr193);
                                                      }
                                                      §§goto(addr392);
                                                   }
                                                }
                                             }
                                             §§goto(addr151);
                                          }
                                          §§goto(addr229);
                                       }
                                       §§goto(addr243);
                                    }
                                 }
                                 else
                                 {
                                    §§push(this.guildstatus);
                                    if(!_loc3_)
                                    {
                                       §§push("Military Active");
                                       if(!_loc3_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             this.warformat.color = 16750848;
                                             this.emblem2.gotoAndStop(2);
                                             this.emblem2.raster();
                                          }
                                          §§goto(addr114);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr144);
                        }
                        §§goto(addr193);
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr74);
               }
            }
            §§goto(addr182);
         }
         §§goto(addr405);
      }
   }
}
