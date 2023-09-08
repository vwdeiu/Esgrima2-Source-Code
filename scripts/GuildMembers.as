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
   import playerio.DatabaseObject;
   
   public dynamic class GuildMembers extends MovieClip
   {
       
      
      public var rollovermc:MovieClip;
      
      public var listmc:POINT;
      
      public var maskmc:MovieClip;
      
      public var membersbtn:SimpleButton;
      
      public var homebtn:SimpleButton;
      
      public var statusbtn:SimpleButton;
      
      public var bg:MovieClip;
      
      public var closebtn:Close;
      
      public var o:DatabaseObject;
      
      public var pmc:MovieClip;
      
      public var c:Client;
      
      public var a2:Array;
      
      public function GuildMembers()
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
      
      public function list() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:DatabaseObject = null;
         var _loc5_:DatabaseObject = null;
         var _loc6_:MovieClip = null;
         if(!_loc7_)
         {
            root.q.RemoveChildren(this.listmc);
         }
         var _loc1_:* = int(this.a2.length);
         var _loc2_:int = 0;
         if(_loc8_)
         {
            while(true)
            {
               §§push(_loc2_);
               if(!_loc8_)
               {
                  break;
               }
               if(§§pop() >= _loc1_)
               {
                  addr72:
                  break;
               }
               if((_loc4_ = this.a2[_loc2_]).key == root.pChar.key)
               {
                  if(_loc7_)
                  {
                     continue;
                  }
                  root.pChar.GuildRank = _loc4_.GuildRank;
                  if(_loc7_)
                  {
                     continue;
                  }
               }
               _loc2_++;
            }
            var _loc3_:* = §§pop();
            if(_loc8_)
            {
               for(; _loc3_ < _loc1_; _loc3_++)
               {
                  _loc5_ = this.a2[_loc3_];
                  §§push("Guild" in _loc5_);
                  if(_loc8_)
                  {
                     §§push(!§§pop());
                     if(_loc8_)
                     {
                        addr94:
                        if(!§§pop())
                        {
                           if(!_loc7_)
                           {
                              §§pop();
                              §§push(_loc5_.Guild === this.o.key);
                              if(_loc8_)
                              {
                                 addr115:
                                 §§push(!§§pop());
                              }
                           }
                           §§goto(addr115);
                        }
                        if(§§pop())
                        {
                           if(_loc8_)
                           {
                              this.a2.splice(_loc3_,1);
                              §§push(_loc3_);
                              if(_loc8_)
                              {
                                 §§push(§§pop() - 1);
                                 if(_loc8_)
                                 {
                                    addr131:
                                    _loc3_ = §§pop();
                                    §§push(_loc1_);
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                 }
                                 _loc1_ = §§pop();
                                 continue;
                              }
                           }
                           §§goto(addr131);
                        }
                        else
                        {
                           (_loc6_ = new GuildMember() as MovieClip).y = _loc3_ * _loc6_.height;
                           if(_loc5_.key == root.pChar.key)
                           {
                              if(!_loc7_)
                              {
                                 this.pmc = _loc6_;
                                 if(_loc8_)
                                 {
                                    addr164:
                                    _loc6_.o = _loc5_;
                                    _loc6_.pguild = "Guild" in root.pChar && root.pChar.Guild == this.o.key;
                                 }
                                 _loc6_.id = _loc3_ + 1;
                                 this.listmc.addChild(_loc6_);
                                 continue;
                              }
                           }
                           §§goto(addr164);
                        }
                     }
                     §§goto(addr115);
                  }
                  §§goto(addr94);
               }
               if(_loc8_)
               {
                  addr208:
                  root.q.scrollbar(this.listmc,this.maskmc,"right");
               }
               return;
            }
            §§goto(addr208);
         }
         §§goto(addr72);
      }
      
      public function clicked(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:String = param1.target.name;
         §§push(_loc2_);
         if(_loc3_)
         {
            §§push("closebtn");
            if(!_loc4_)
            {
               if(§§pop() == §§pop())
               {
                  if(!_loc4_)
                  {
                     this.close();
                  }
                  else
                  {
                     addr48:
                     root.guildmc.o = this.o;
                     root.guildmc.x = x;
                     if(_loc3_)
                     {
                        root.guildmc.y = y;
                        root.addChildAt(root.guildmc,root.getChildIndex(this));
                        if(_loc3_)
                        {
                           this.clear();
                           if(!_loc4_)
                           {
                              root.q.remove(this);
                           }
                           §§goto(addr134);
                        }
                        addr121:
                        root.addChildAt(root.guildmc,root.getChildIndex(this));
                        this.clear();
                     }
                     else
                     {
                        root.guildmc.x = x;
                        root.guildmc.y = y;
                        addr103:
                        if(_loc3_)
                        {
                           §§goto(addr121);
                        }
                     }
                     root.q.remove(this);
                  }
               }
               else
               {
                  §§push(_loc2_);
                  if(_loc3_)
                  {
                     addr37:
                     §§push("homebtn");
                     if(_loc3_)
                     {
                        addr41:
                        if(§§pop() == §§pop())
                        {
                           root.guildmc = new GuildHome() as MovieClip;
                           §§goto(addr48);
                        }
                        else
                        {
                           addr90:
                           §§push(_loc2_);
                           §§push("statusbtn");
                        }
                        §§goto(addr134);
                     }
                     if(§§pop() == §§pop())
                     {
                        root.guildmc = new GuildStatus() as MovieClip;
                        root.guildmc.o = this.o;
                        §§goto(addr103);
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr90);
               }
               addr134:
               return;
            }
            §§goto(addr41);
         }
         §§goto(addr37);
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
               root.q.removeChildFade(this);
               if(!_loc2_)
               {
                  root.guildmc = null;
               }
            }
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            removeEventListener(MouseEvent.CLICK,this.clicked);
            if(!_loc1_)
            {
               this.listmc.removeEventListener(MouseEvent.MOUSE_OVER,this.rollover);
               if(_loc2_)
               {
                  addr51:
                  this.listmc.removeEventListener(MouseEvent.MOUSE_OUT,this.rollout);
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr67);
               }
               removeEventListener(Event.ENTER_FRAME,this.loop);
            }
            addr67:
            return;
         }
         §§goto(addr51);
      }
      
      public function loop(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.rollovermc.x = mouseX;
            if(_loc2_)
            {
               addr24:
               this.rollovermc.y = mouseY;
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function rollout(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.rollovermc.visible = false;
         }
      }
      
      public function rollover(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            addChild(this.rollovermc);
            if(_loc3_)
            {
               if(!param1.target.idtxt)
               {
                  if(!_loc2_)
                  {
                     return;
                  }
                  addr54:
                  this.rollovermc.visible = true;
                  if(!_loc2_)
                  {
                     addr60:
                     this.rollovermc.loctxt.text = root.getTxt(param1.target.o.Location,this.rollovermc.loctxt);
                  }
               }
               else if("Location" in param1.target.o)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr54);
                  }
               }
               return;
            }
         }
         §§goto(addr60);
      }
      
      function frame1() : *
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         root.translateButtons(this);
         if(!_loc2_)
         {
            this.c = root.client;
            if(_loc3_)
            {
               trace(this.o.Members);
               this.c.bigDB.loadKeys("Chars",this.o.Members,function(param1:Array):void
               {
                  var _loc2_:Boolean = true;
                  var _loc3_:Boolean = false;
                  if(root.stage == null)
                  {
                     if(_loc2_)
                     {
                        return;
                     }
                     addr17:
                     list();
                  }
                  else
                  {
                     a2 = param1;
                     if(!_loc3_)
                     {
                        §§goto(addr17);
                     }
                  }
               });
               addEventListener(MouseEvent.CLICK,this.clicked);
               this.listmc.addEventListener(MouseEvent.MOUSE_OVER,this.rollover);
               addr65:
               this.listmc.addEventListener(MouseEvent.MOUSE_OUT,this.rollout);
               addEventListener(Event.ENTER_FRAME,this.loop);
               this.bg.nametxt.text = root.getTxt("Name",this.bg.nametxt);
               if(!_loc2_)
               {
                  this.bg.ranktxt.text = root.getTxt("Rank",this.bg.ranktxt);
                  this.bg.reptxt.text = root.getTxt("Reputation",this.bg.reptxt);
               }
            }
            this.bg.titletxt.text = root.getTxt("Guild Members",this.bg.titletxt);
            if(!_loc2_)
            {
               root.q.raster(this.bg);
            }
            return;
         }
         §§goto(addr65);
      }
   }
}
