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
   
   public dynamic class PVP extends MovieClip
   {
       
      
      public var listmc:MovieClip;
      
      public var nobattles:TextField;
      
      public var maskmc:MovieClip;
      
      public var createbtn:SimpleButton;
      
      public var joinbtn:SimpleButton;
      
      public var bg:MovieClip;
      
      public var closebtn:Close;
      
      public var room:String;
      
      public var roommc:MovieClip;
      
      public var q:SophiaEngine;
      
      public function PVP()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(_loc2_)
            {
               addr23:
               addFrameScript(0,this.frame1);
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function list() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Client = MovieClip(root).client;
         if(!_loc2_)
         {
            _loc1_.multiplayer.listRooms("Game",{
               "Type":"PVP",
               "B":root.branch
            },25,0,this.listrooms);
         }
      }
      
      public function listrooms(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1.length >= 1)
            {
               if(_loc2_)
               {
                  this.nobattles.visible = false;
                  if(!_loc3_)
                  {
                     this.q.list(this.listmc,"Room",{
                        "Array":param1,
                        "Name":"Rooms"
                     },"Down",1,100,false,false,false,null,null,null);
                     if(!_loc3_)
                     {
                        §§goto(addr66);
                     }
                  }
                  addr82:
                  this.q.fadeIn(this.nobattles);
               }
               addr66:
               this.q.fadeIn(this.listmc);
               if(!_loc2_)
               {
               }
               §§goto(addr87);
            }
            else
            {
               this.nobattles.visible = true;
               if(_loc2_)
               {
                  §§goto(addr82);
               }
            }
            addr87:
            return;
         }
         §§goto(addr66);
      }
      
      public function clicked(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            var m:MovieClip = null;
            var e:MouseEvent = param1;
            if(!_loc5_)
            {
               if(e.target is MovieClip)
               {
                  if(e.target.isroom)
                  {
                     if(this.roommc)
                     {
                        this.roommc.gotoAndStop(1);
                     }
                     e.target.gotoAndStop(2);
                     this.room = e.target.room.id;
                     if(_loc4_)
                     {
                        this.roommc = e.target;
                     }
                     else
                     {
                        addr257:
                        this.close();
                        §§goto(addr259);
                     }
                     §§goto(addr259);
                  }
               }
               else if(e.target.name == "joinbtn")
               {
                  §§push(this.room !== "");
                  if(_loc4_)
                  {
                     §§push(Boolean(§§pop()));
                     §§push(Boolean(§§pop()));
                     if(_loc4_)
                     {
                        if(§§pop())
                        {
                           addr91:
                           §§pop();
                           §§push(Boolean(this.roommc));
                        }
                        §§push(§§pop());
                     }
                     if(§§pop())
                     {
                        §§pop();
                        if(!_loc5_)
                        {
                           addr105:
                           if(!root.battle)
                           {
                              if(!this.roommc.roomlock.visible)
                              {
                                 if(!_loc5_)
                                 {
                                    MovieClip(root).joinbattle(this.room,this.roommc.room);
                                    if(!_loc5_)
                                    {
                                       trace("nopass");
                                       this.close();
                                       addr188:
                                       §§goto(addr259);
                                    }
                                    addr259:
                                    return;
                                 }
                              }
                              else
                              {
                                 m = new ConfirmWTxt() as MovieClip;
                                 if(_loc4_)
                                 {
                                    m.title = root.getTxt("Passworded Room");
                                    m.txt = root.getTxt("Enter password:");
                                    root.addChildAt(m,root.getChildIndex(root.mouse));
                                    m.pass = this.roommc.room.data.Password;
                                    trace("pass:" + m.pass);
                                    if(!_loc5_)
                                    {
                                       m.confirmation = function():void
                                       {
                                          var _loc1_:Boolean = true;
                                          var _loc2_:Boolean = false;
                                          root.joinbattle(room,roommc.room);
                                          if(_loc1_)
                                          {
                                             if(this.stage)
                                             {
                                                if(!_loc2_)
                                                {
                                                   close();
                                                }
                                             }
                                          }
                                       };
                                    }
                                 }
                                 else
                                 {
                                    addr221:
                                    m.x = stage.stageWidth / 2;
                                    root.addChildAt(m,root.getChildIndex(root.mouse));
                                    addr243:
                                    root.q.fadeIn(m);
                                    addr248:
                                    this.close();
                                    §§goto(addr257);
                                    addr228:
                                 }
                              }
                              §§goto(addr257);
                           }
                           §§goto(addr188);
                        }
                        §§goto(addr228);
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr91);
               }
               else if(e.target.name == "createbtn")
               {
                  if(_loc4_)
                  {
                     addr197:
                     m = root.pvpsizemc = new PVPSize() as MovieClip;
                     if(_loc4_)
                     {
                        m.y = stage.stageHeight / 2;
                        if(_loc5_)
                        {
                        }
                        §§goto(addr221);
                     }
                     §§goto(addr248);
                  }
                  §§goto(addr221);
               }
               else if(e.target.name == "closebtn")
               {
                  §§goto(addr257);
               }
               §§goto(addr257);
            }
            §§goto(addr197);
         }
         §§goto(addr243);
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.clear();
            if(!_loc1_)
            {
               root.q.removeChildFade(this);
               if(!_loc1_)
               {
                  addr38:
                  root.pvpmc = null;
               }
            }
            return;
         }
         §§goto(addr38);
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
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.maskmc.visible = false;
            this.nobattles.visible = false;
            if(!_loc1_)
            {
               this.nobattles.text = root.getTxt("NoBattle",this.nobattles);
               if(_loc2_)
               {
                  root.translateButtons(this);
                  if(!_loc1_)
                  {
                     this.q = MovieClip(root).q;
                     addr52:
                     if(!_loc1_)
                     {
                        addr68:
                        this.list();
                        addEventListener(MouseEvent.CLICK,this.clicked);
                        if(!_loc1_)
                        {
                           root.q.raster(this.bg);
                        }
                     }
                  }
                  return;
               }
               §§goto(addr52);
            }
         }
         §§goto(addr68);
      }
   }
}
