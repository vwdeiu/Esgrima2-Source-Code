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
   
   public dynamic class QuestLog extends MovieClip
   {
       
      
      public var statetxt:TextField;
      
      public var maskmc:MovieClip;
      
      public var noquests:TextField;
      
      public var moneytxt:TextField;
      
      public var exptxt:TextField;
      
      public var s0:Slot;
      
      public var drag:MovieClip;
      
      public var s1:Slot;
      
      public var s2:Slot;
      
      public var bg:MovieClip;
      
      public var qtxt:TextField;
      
      public var lvltxt:TextField;
      
      public var s3:Slot;
      
      public var closebtn:Close;
      
      public var rewards:TextField;
      
      public var s4:Slot;
      
      public var s5:Slot;
      
      public var nametxt:TextField;
      
      public var displayed:Boolean;
      
      public var btnstat:Point;
      
      public var listmc:MovieClip;
      
      public var p:DatabaseObject;
      
      public var quests:Vector.<String>;
      
      public var questdisplay:String;
      
      public var o:Object;
      
      public var idshow:int;
      
      public var infotxt:TextField;
      
      public function QuestLog()
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
      
      public function added() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            visible = false;
            if(_loc1_)
            {
               this.rewards.text = root.getTxt("Rewards",this.rewards);
               addr23:
               if(_loc1_)
               {
                  this.noquests.text = root.getTxt("NoQuests",this.noquests);
                  if(!_loc2_)
                  {
                     addr59:
                     this.display();
                     if(!_loc2_)
                     {
                        this.list();
                     }
                  }
                  return;
               }
            }
            §§goto(addr59);
         }
         §§goto(addr23);
      }
      
      public function display(param1:int = 0) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc6_:* = 0;
         var _loc10_:Connection = null;
         var _loc11_:* = 0;
         var _loc12_:MovieClip = null;
         §§push(this.idshow);
         if(!_loc13_)
         {
            §§push(int(§§pop()));
         }
         param1 = §§pop();
         if(!_loc13_)
         {
            this.p = MovieClip(root).pChar;
            if(_loc14_)
            {
               this.quests = Vector.<String>(this.p.Quests.Active);
               if(!_loc13_)
               {
                  §§push(this.quests.length);
                  if(!_loc13_)
                  {
                     if(§§pop() <= 0)
                     {
                        this.questdisplay = "";
                        addr78:
                        trace("Display " + this.questdisplay);
                        if(_loc14_)
                        {
                           this.noquests.visible = true;
                           this.nametxt.text = "";
                           this.lvltxt.text = "";
                           this.infotxt.text = "";
                           this.qtxt.text = "";
                           if(_loc14_)
                           {
                              this.statetxt.text = "";
                              if(!_loc13_)
                              {
                                 this.rewards.visible = false;
                                 if(!_loc13_)
                                 {
                                    §§goto(addr123);
                                 }
                                 §§goto(addr168);
                              }
                              §§goto(addr162);
                           }
                           addr123:
                           this.exptxt.text = "";
                           this.moneytxt.text = "";
                           if(!_loc13_)
                           {
                              addr134:
                              this.s0.visible = false;
                              if(!_loc13_)
                              {
                                 addr141:
                                 this.s1.visible = false;
                                 if(_loc14_)
                                 {
                                    this.s2.visible = false;
                                    this.s3.visible = false;
                                    if(!_loc13_)
                                    {
                                       this.s4.visible = false;
                                       addr162:
                                       this.s5.visible = false;
                                       if(_loc14_)
                                       {
                                          addr168:
                                          §§push(this.questdisplay);
                                          if(!_loc13_)
                                          {
                                             §§push("");
                                             if(_loc14_)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   if(_loc14_)
                                                   {
                                                      visible = true;
                                                   }
                                                   §§goto(addr184);
                                                }
                                                else
                                                {
                                                   this.noquests.visible = false;
                                                   addr202:
                                                   §§push(this.questdisplay);
                                                   if(!_loc13_)
                                                   {
                                                      §§push("_");
                                                   }
                                                   var _loc2_:* = §§pop();
                                                   if(_loc14_)
                                                   {
                                                      if(!MovieClip(root).quests[_loc2_])
                                                      {
                                                         if(_loc14_)
                                                         {
                                                            _loc10_ = MovieClip(root).connection;
                                                            if(_loc14_)
                                                            {
                                                               if(MovieClip(root).battle)
                                                               {
                                                                  if(_loc14_)
                                                                  {
                                                                     _loc10_ = MovieClip(root).battle;
                                                                  }
                                                                  §§goto(addr241);
                                                               }
                                                               _loc10_.send("QuestInfo",_loc2_);
                                                            }
                                                            addr241:
                                                            return;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         trace("made vis");
                                                         if(_loc14_)
                                                         {
                                                            visible = true;
                                                            if(!_loc13_)
                                                            {
                                                               addr253:
                                                               this.o = MovieClip(root).quests[_loc2_];
                                                            }
                                                            §§push(this.questdisplay);
                                                            if(_loc14_)
                                                            {
                                                               §§push(§§pop().split("_")[1]);
                                                            }
                                                            var _loc3_:* = §§pop();
                                                            if(!_loc13_)
                                                            {
                                                               §§push(_loc3_);
                                                               if(_loc14_)
                                                               {
                                                                  if(§§pop() == "D")
                                                                  {
                                                                     if(!_loc13_)
                                                                     {
                                                                        §§push(this.o.Stages);
                                                                        if(_loc14_)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           if(_loc14_)
                                                                           {
                                                                              this.nametxt.text = root.getTxt(_loc2_,!!this.displayed ? null : this.nametxt);
                                                                              addr298:
                                                                              if(_loc14_)
                                                                              {
                                                                                 this.lvltxt.text = root.getTxt("Level",!!this.displayed ? null : this.lvltxt) + " " + this.o.Level;
                                                                                 addr337:
                                                                                 this.infotxt.multiline = true;
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                 }
                                                                                 addr347:
                                                                                 trace(this.o.Info);
                                                                                 this.infotxt.text = root.getTxt(_loc2_ + "Info",!!this.displayed ? null : this.infotxt).split("_")[0];
                                                                                 var _loc4_:String = this.o["Stage" + _loc3_].split(",")[0];
                                                                                 var _loc5_:int = int(_loc4_.split("-")[1].split(",")[0]);
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    §§push(this.questdisplay);
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       §§push("_");
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          if(§§pop().split(§§pop())[2].indexOf("Item:") < 0)
                                                                                          {
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                §§push(int(int(this.questdisplay.split("_")[2])));
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   _loc6_ = §§pop();
                                                                                                   if(_loc14_)
                                                                                                   {
                                                                                                      addr452:
                                                                                                      this.qtxt.text = String(_loc6_ + "/" + _loc5_);
                                                                                                      addr434:
                                                                                                   }
                                                                                                   §§goto(addr452);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr448:
                                                                                                   _loc6_ = §§pop();
                                                                                                   if(!_loc13_)
                                                                                                   {
                                                                                                      §§goto(addr452);
                                                                                                   }
                                                                                                }
                                                                                                §§push(_loc4_);
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   addr466:
                                                                                                   §§push(§§pop().split("_")[1].split("-")[0]);
                                                                                                }
                                                                                                var _loc7_:* = §§pop();
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   this.statetxt.text = root.getTxt(_loc7_,!!this.displayed ? null : this.statetxt);
                                                                                                   if(!_loc13_)
                                                                                                   {
                                                                                                      this.rewards.visible = true;
                                                                                                   }
                                                                                                }
                                                                                                var _loc8_:Vector.<String>;
                                                                                                var _loc9_:int = (_loc8_ = this.o.Items).length;
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   if(_loc8_[0] !== "")
                                                                                                   {
                                                                                                      if(!_loc13_)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(_loc14_)
                                                                                                         {
                                                                                                            _loc11_ = §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc11_);
                                                                                                            }
                                                                                                            addr554:
                                                                                                         }
                                                                                                         for(; §§pop() < _loc9_; §§goto(addr554))
                                                                                                         {
                                                                                                            §§push(this);
                                                                                                            §§push("s");
                                                                                                            if(_loc14_)
                                                                                                            {
                                                                                                               §§push(§§pop() + _loc11_);
                                                                                                            }
                                                                                                            _loc12_ = §§pop()[§§pop()];
                                                                                                            if(_loc14_)
                                                                                                            {
                                                                                                               MovieClip(root).setSlot(_loc12_,_loc8_[_loc11_]);
                                                                                                               if(_loc13_)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                            }
                                                                                                            _loc12_.visible = true;
                                                                                                            if(!_loc13_)
                                                                                                            {
                                                                                                               _loc11_++;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr557);
                                                                                                      }
                                                                                                      §§goto(addr567);
                                                                                                   }
                                                                                                }
                                                                                                addr557:
                                                                                                this.exptxt.text = "XP: " + this.o.XP;
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   this.moneytxt.text = root.getTxt("Denars",!!this.displayed ? null : this.moneytxt) + ": " + this.o.Money;
                                                                                                   this.displayed = true;
                                                                                                   addr567:
                                                                                                }
                                                                                                return;
                                                                                             }
                                                                                             §§goto(addr434);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(int(root.countItem(this.questdisplay.split("_")[2].split(":")[1])));
                                                                                          }
                                                                                          §§goto(addr448);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr466);
                                                                                 }
                                                                                 §§goto(addr452);
                                                                              }
                                                                              this.infotxt.wordWrap = true;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr347);
                                                                  }
                                                                  §§goto(addr298);
                                                               }
                                                               §§goto(addr347);
                                                            }
                                                            §§goto(addr337);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr253);
                                                }
                                             }
                                             §§goto(addr202);
                                             §§push(§§pop().split(§§pop())[0].split("*")[0]);
                                          }
                                       }
                                       §§goto(addr202);
                                    }
                                    §§goto(addr162);
                                 }
                              }
                              §§goto(addr168);
                           }
                           addr184:
                           return;
                        }
                        §§goto(addr168);
                     }
                     else
                     {
                        this.questdisplay = this.quests[param1];
                        if(!_loc13_)
                        {
                           §§goto(addr78);
                        }
                     }
                     §§goto(addr141);
                  }
                  §§goto(addr202);
               }
               §§goto(addr134);
            }
            §§goto(addr78);
         }
         §§goto(addr202);
      }
      
      public function clickm(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1.target.name == "closebtn")
            {
               if(_loc3_)
               {
                  this.close();
                  if(_loc2_)
                  {
                     addr62:
                     this.display(param1.target.id);
                  }
               }
            }
            else if(param1.target.parent == this.listmc)
            {
               if(!_loc2_)
               {
                  addr54:
                  this.idshow = param1.target.id;
                  if(!_loc3_)
                  {
                  }
                  §§goto(addr67);
               }
               §§goto(addr62);
            }
            addr67:
            return;
         }
         §§goto(addr54);
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.clear();
            if(_loc1_)
            {
               MovieClip(root).q.removeChildFade(this);
               if(_loc2_)
               {
               }
               §§goto(addr42);
            }
            MovieClip(root).questlog = null;
         }
         addr42:
      }
      
      public function clear() : void
      {
      }
      
      public function list() : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:MovieClip = null;
         var _loc5_:Vector.<String> = null;
         var _loc6_:BitmapData = null;
         var _loc7_:Bitmap = null;
         if(!_loc8_)
         {
            MovieClip(root).q.RemoveChildren(this.listmc);
            if(!_loc8_)
            {
               this.p = MovieClip(root).pChar;
               if(_loc9_)
               {
                  this.quests = Vector.<String>(this.p.Quests.Active);
               }
            }
         }
         var _loc1_:int = this.quests.length;
         if(_loc9_)
         {
            this.noquests.visible = true;
            if(_loc9_)
            {
               addr77:
               §§push(_loc1_);
               if(!_loc8_)
               {
                  if(§§pop() <= 0)
                  {
                     if(!_loc8_)
                     {
                        §§goto(addr84);
                     }
                  }
                  else
                  {
                     this.noquests.visible = false;
                  }
                  §§push(0);
               }
               var _loc2_:* = §§pop();
               if(!_loc8_)
               {
                  while(_loc2_ < _loc1_)
                  {
                     §§push(this.quests[_loc2_]);
                     if(_loc9_)
                     {
                        §§push(§§pop());
                     }
                     _loc3_ = §§pop();
                     (_loc4_ = new QuestTab() as MovieClip).gotoAndStop(1);
                     if(_loc9_)
                     {
                        if(_loc3_.split("_")[1] == "D")
                        {
                           if(_loc9_)
                           {
                              addr132:
                              _loc4_.gotoAndStop(2);
                           }
                        }
                        _loc5_ = Vector.<String>(_loc3_.split("_")[0].split("*"));
                        if(_loc9_)
                        {
                           _loc4_.quest = _loc5_[0];
                           if(_loc9_)
                           {
                              trace("qdetail: " + _loc5_);
                              if(_loc8_)
                              {
                              }
                              addr185:
                              _loc6_ = new BitmapData(_loc4_.width,_loc4_.height,true,0);
                              if(_loc9_)
                              {
                                 stage.quality = "high";
                                 if(!_loc8_)
                                 {
                                    _loc6_.draw(_loc4_);
                                    if(!_loc8_)
                                    {
                                       addr208:
                                       stage.quality = "low";
                                    }
                                    _loc7_ = new Bitmap(_loc6_);
                                    MovieClip(root).q.RemoveChildren(_loc4_);
                                    _loc4_.addChild(_loc7_);
                                    this.listmc.addChild(_loc4_);
                                    if(!_loc8_)
                                    {
                                       _loc4_.y = _loc2_ * _loc4_.height;
                                       trace(_loc4_.lvltxt.text);
                                       if(!_loc9_)
                                       {
                                          continue;
                                       }
                                    }
                                    _loc2_++;
                                    continue;
                                 }
                              }
                              §§goto(addr208);
                           }
                           _loc4_.lvl = int(_loc5_[1]);
                           if(_loc9_)
                           {
                              _loc4_.id = _loc2_;
                              if(_loc8_)
                              {
                              }
                              §§goto(addr185);
                           }
                           _loc4_.init(root);
                        }
                        §§goto(addr185);
                     }
                     §§goto(addr132);
                  }
                  if(_loc9_)
                  {
                     addr260:
                     root.q.scrollbar(this.listmc,this.maskmc,"left");
                  }
                  return;
               }
               §§goto(addr260);
            }
            addr84:
            return;
         }
         §§goto(addr77);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.noquests.visible = false;
            if(_loc1_)
            {
               this.btnstat = new Point(-85,-128);
               this.listmc = new MovieClip();
               this.listmc.x = this.btnstat.x;
               this.listmc.y = this.btnstat.y;
               addChild(this.listmc);
               if(!_loc2_)
               {
                  this.p = MovieClip(root).pChar;
               }
               this.quests = Vector.<String>(this.p.Quests.Active);
               if(this.quests.length <= 0)
               {
                  this.noquests.visible = true;
                  if(!_loc2_)
                  {
                     addr86:
                     this.questdisplay = "";
                  }
                  addr98:
                  this.idshow = 0;
                  addEventListener(MouseEvent.CLICK,this.clickm);
               }
               else
               {
                  this.questdisplay = this.quests[0];
                  if(_loc1_)
                  {
                     §§goto(addr98);
                  }
               }
               MovieClip(root).q.createDrag(this.drag,this);
               this.bg.questlogtxt.text = root.getTxt("Quest Log",this.bg.questlogtxt);
            }
            MovieClip(root).q.raster(this.bg);
            return;
         }
         §§goto(addr86);
      }
   }
}
