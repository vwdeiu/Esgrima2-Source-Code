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
   
   public dynamic class Friends extends MovieClip
   {
       
      
      public var listmc:MovieClip;
      
      public var maskmc:MovieClip;
      
      public var removebtn:SimpleButton;
      
      public var drag:MovieClip;
      
      public var invitebtn:SimpleButton;
      
      public var bg:MovieClip;
      
      public var closebtn:SimpleButton;
      
      public var invitemc:MovieClip;
      
      public var friendSelect:MovieClip;
      
      public function Friends()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               addFrameScript(0,this.frame1);
            }
         }
      }
      
      public function load() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            var friends:Array = null;
            if(!_loc3_)
            {
               var c:Client = null;
               addr31:
               var loadEasy:* = undefined;
               var loadFriends:* = function(param1:Function = null):void
               {
                  var _loc3_:Boolean = false;
                  var _loc4_:Boolean = true;
                  if(_loc4_)
                  {
                     var f:Function = param1;
                     if(!_loc3_)
                     {
                        addr17:
                        c.bigDB.loadKeys("Chars",friends,function(param1:Array):void
                        {
                           var _loc2_:Boolean = false;
                           var _loc3_:Boolean = true;
                           root.friendlist = Vector.<DatabaseObject>(param1);
                           if(!_loc2_)
                           {
                              if(f == null)
                              {
                                 if(_loc3_)
                                 {
                                    list();
                                    if(!_loc2_)
                                    {
                                       addr25:
                                    }
                                 }
                                 §§goto(addr25);
                              }
                              else
                              {
                                 f();
                              }
                              return;
                           }
                           §§goto(addr25);
                        });
                     }
                     return;
                  }
                  §§goto(addr17);
               };
               loadEasy = function():void
               {
                  var _loc2_:Boolean = false;
                  var _loc3_:Boolean = true;
                  if(_loc3_)
                  {
                     c.bigDB.loadKeys("PlayerObjects",root.easyFriends,function(param1:Array):void
                     {
                        var _loc9_:Boolean = false;
                        var _loc10_:Boolean = true;
                        var _loc4_:DatabaseObject = null;
                        var _loc5_:* = 0;
                        var _loc6_:DatabaseObject = null;
                        var _loc2_:Vector.<DatabaseObject> = Vector.<DatabaseObject>(param1);
                        var _loc3_:* = int(root.friendlist.length);
                        if(!_loc9_)
                        {
                           var _loc7_:int = 0;
                           if(_loc10_)
                           {
                              var _loc8_:* = _loc2_;
                              if(_loc10_)
                              {
                                 for each(_loc4_ in _loc8_)
                                 {
                                    if(_loc10_)
                                    {
                                       §§push(0);
                                       if(!_loc9_)
                                       {
                                          _loc5_ = §§pop();
                                          if(!_loc10_)
                                          {
                                             continue;
                                          }
                                          while(true)
                                          {
                                             §§push(_loc5_);
                                          }
                                          addr105:
                                       }
                                       for(; §§pop() < _loc3_; §§goto(addr105))
                                       {
                                          _loc6_ = root.friendlist[_loc5_];
                                          §§push("n" in _loc6_);
                                          if(_loc10_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc10_)
                                                {
                                                   addr72:
                                                   §§pop();
                                                   if(_loc10_)
                                                   {
                                                      addr80:
                                                      if(_loc6_.n == _loc4_.n)
                                                      {
                                                         root.friendlist.splice(_loc5_,1);
                                                         addr86:
                                                         §§push(_loc5_);
                                                         if(_loc10_)
                                                         {
                                                            §§push(§§pop() - 1);
                                                            if(!_loc9_)
                                                            {
                                                               addr94:
                                                               _loc5_ = §§pop();
                                                               §§push(_loc3_);
                                                               if(!_loc9_)
                                                               {
                                                                  §§push(§§pop() - 1);
                                                               }
                                                            }
                                                            _loc3_ = §§pop();
                                                            if(!_loc9_)
                                                            {
                                                               addr104:
                                                               _loc5_++;
                                                            }
                                                            continue;
                                                         }
                                                         §§goto(addr94);
                                                      }
                                                      §§goto(addr104);
                                                   }
                                                   §§goto(addr86);
                                                }
                                             }
                                             §§goto(addr80);
                                          }
                                          §§goto(addr72);
                                       }
                                    }
                                 }
                              }
                           }
                           if(!_loc9_)
                           {
                              §§goto(addr115);
                           }
                           §§goto(addr123);
                        }
                        addr115:
                        root.friendlist = _loc2_.concat(root.friendlist);
                        if(_loc10_)
                        {
                           addr123:
                           list();
                        }
                     });
                  }
               };
               if(!_loc3_)
               {
                  root.q.RemoveChildren(this.listmc,Vector.<DisplayObject>([this.listmc.friendSelect]));
                  this.listmc.friendSelect.visible = false;
                  if(_loc2_)
                  {
                     friends = root.pChar.Social.Friends;
                     if(!_loc3_)
                     {
                        var n:int = friends.length;
                        addr76:
                        if(!_loc3_)
                        {
                           addr91:
                           §§push(n);
                           if(_loc2_)
                           {
                              §§push(1);
                              if(_loc2_)
                              {
                                 §§push(§§pop() < §§pop());
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc3_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc3_)
                                          {
                                             §§goto(addr109);
                                          }
                                       }
                                       §§goto(addr115);
                                    }
                                    §§goto(addr129);
                                 }
                                 addr109:
                                 §§pop();
                                 §§push(!root.easyFriends);
                                 if(_loc2_)
                                 {
                                    addr115:
                                    if(§§pop())
                                    {
                                       return;
                                    }
                                    c = root.client;
                                    §§push(Boolean(root.easyFriends));
                                    if(!_loc3_)
                                    {
                                       addr129:
                                       if(§§pop())
                                       {
                                          if(!_loc3_)
                                          {
                                             §§pop();
                                             addr137:
                                             §§push(n >= 1);
                                          }
                                       }
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    loadFriends(loadEasy);
                                 }
                                 else if(!root.easyFriends)
                                 {
                                    if(!_loc3_)
                                    {
                                       loadFriends();
                                       if(!_loc2_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr175:
                                       loadEasy();
                                    }
                                 }
                                 else
                                 {
                                    root.friendlist = new Vector.<DatabaseObject>();
                                    if(_loc2_)
                                    {
                                       §§goto(addr175);
                                    }
                                 }
                                 §§goto(addr180);
                              }
                           }
                           §§goto(addr137);
                        }
                     }
                     addr180:
                     return;
                  }
                  §§goto(addr76);
               }
               §§goto(addr91);
            }
            §§goto(addr109);
         }
         §§goto(addr31);
      }
      
      public function list() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:* = NaN;
         var _loc3_:* = 0;
         var _loc4_:DatabaseObject = null;
         var _loc5_:MovieClip = null;
         root.q.RemoveChildren(this.listmc,Vector.<DisplayObject>([this.listmc.friendSelect]));
         this.listmc.friendSelect.visible = false;
         if(_loc6_)
         {
            if(root.friendlist)
            {
               if(!_loc7_)
               {
                  §§push(int(root.friendlist.length));
                  if(_loc6_)
                  {
                     _loc1_ = §§pop();
                     this.maskmc.visible = true;
                     addr64:
                     this.maskmc.mouseEnabled = false;
                     §§push(0);
                     if(_loc6_)
                     {
                        _loc2_ = Number(§§pop());
                        §§push(0);
                        if(!_loc6_)
                        {
                        }
                        loop0:
                        while(§§pop() < _loc1_)
                        {
                           _loc4_ = root.friendlist[_loc3_];
                           if(_loc6_)
                           {
                              trace(_loc4_.key);
                           }
                           (_loc5_ = new Friend() as MovieClip).mouseChildren = false;
                           _loc5_.friend = true;
                           _loc5_.o = _loc4_;
                           this.listmc.addChild(_loc5_);
                           _loc5_.init();
                           _loc5_.y = _loc2_;
                           §§push(_loc2_);
                           if(_loc6_)
                           {
                              §§push(Number(§§pop() + _loc5_.height));
                           }
                           _loc2_ = §§pop();
                           _loc3_++;
                           while(true)
                           {
                              continue loop0;
                           }
                        }
                        root.q.scrollbar(this.listmc,this.maskmc);
                        if(_loc6_)
                        {
                           §§goto(addr157);
                        }
                        addr157:
                        return;
                        addr140:
                     }
                     _loc3_ = §§pop();
                     §§goto(addr139);
                  }
                  §§goto(addr140);
               }
               §§goto(addr64);
            }
            else
            {
               this.maskmc.visible = false;
            }
            §§goto(addr157);
         }
         §§goto(addr64);
      }
      
      public function mousec(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1.target.name == "closebtn")
            {
               this.close();
            }
            else
            {
               §§push(param1.target is MovieClip);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        addr36:
                        §§pop();
                        if(!_loc3_)
                        {
                           §§goto(addr43);
                        }
                        §§goto(addr71);
                     }
                  }
                  addr43:
                  if(param1.target.friend)
                  {
                     if(!_loc3_)
                     {
                        trace("Clicked friend");
                        this.friendSelect = param1.target;
                        if(_loc2_)
                        {
                           addr64:
                           this.listmc.friendSelect.y = this.friendSelect.y;
                           addr71:
                           this.listmc.friendSelect.visible = true;
                           if(!_loc2_)
                           {
                              addr110:
                              if(this.invitemc)
                              {
                                 return;
                              }
                              root.aE.invite("");
                              §§goto(addr118);
                           }
                        }
                        else
                        {
                           addr95:
                           if(this.friendSelect)
                           {
                              addr98:
                              root.removefriend(this.friendSelect.o.key);
                           }
                        }
                     }
                     §§goto(addr118);
                  }
                  else if(param1.target.name == "removebtn")
                  {
                     if(_loc2_)
                     {
                        §§goto(addr95);
                     }
                     §§goto(addr98);
                  }
                  else
                  {
                     if(param1.target.name == "invitebtn")
                     {
                        §§goto(addr110);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr118);
               }
               §§goto(addr36);
            }
            addr118:
            return;
         }
         §§goto(addr64);
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            root.q.removeChildFade(this);
            if(_loc2_)
            {
               root.friendsmc = null;
            }
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.invitemc)
            {
               if(_loc2_)
               {
                  addr31:
                  this.invitemc.close();
                  if(!_loc1_)
                  {
                     addr37:
                     removeEventListener(MouseEvent.CLICK,this.mousec);
                  }
               }
               return;
            }
            §§goto(addr37);
         }
         §§goto(addr31);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            root.q.createDrag(this.drag,this);
            if(!_loc2_)
            {
               this.maskmc.visible = false;
               this.bg.titletxt.text = root.getTxt("Friends",this.bg.titletxt);
               if(_loc1_)
               {
                  this.bg.statuslabel.text = root.getTxt("Status",this.bg.statuslabel);
                  this.bg.namelabel.text = root.getTxt("Name",this.bg.namelabel);
                  if(_loc1_)
                  {
                     this.bg.replabel.text = root.getTxt("Reputation",this.bg.replabel);
                     this.bg.locationlabel.text = root.getTxt("Location",this.bg.locationlabel);
                     if(_loc1_)
                     {
                        addr94:
                        root.translateButtons(this);
                     }
                     if(root.onSpecial !== "easy")
                     {
                        if(_loc1_)
                        {
                           addr104:
                           this.invitebtn.visible = false;
                           addr108:
                           this.bg.portalmc.visible = false;
                           if(!_loc2_)
                           {
                              addr133:
                              root.q.raster(this.bg);
                           }
                           §§goto(addr133);
                        }
                        this.load();
                        if(_loc1_)
                        {
                           addr143:
                           addEventListener(MouseEvent.CLICK,this.mousec);
                        }
                        return;
                     }
                     this.bg.portalmc.gotoAndStop(root.portal);
                     if(!_loc2_)
                     {
                        §§goto(addr133);
                     }
                     §§goto(addr143);
                  }
                  §§goto(addr108);
               }
               §§goto(addr133);
            }
            §§goto(addr104);
         }
         §§goto(addr94);
      }
   }
}
