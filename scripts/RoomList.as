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
   import playerio.RoomInfo;
   
   public dynamic class RoomList extends MovieClip
   {
       
      
      public var nobattles:TextField;
      
      public var listmc:MovieClip;
      
      public var maskmc:MovieClip;
      
      public var createbtn:SimpleButton;
      
      public var joinbtn:SimpleButton;
      
      public var drag:MovieClip;
      
      public var bg:MovieClip;
      
      public var closebtn:Close;
      
      public var nametxt:TextField;
      
      public var createmc:MovieClip;
      
      public var map:String;
      
      public var room:String;
      
      public var roommc:MovieClip;
      
      public var roominfo:RoomInfo;
      
      public var q:SophiaEngine;
      
      public function RoomList()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(_loc1_)
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            var listrooms:* = undefined;
            if(!_loc3_)
            {
               listrooms = function(param1:Array):void
               {
                  var _loc4_:Boolean = false;
                  var _loc5_:Boolean = true;
                  var _loc3_:RoomInfo = null;
                  var _loc2_:int = 0;
                  if(!_loc4_)
                  {
                     while(_loc2_ < param1.length)
                     {
                        _loc3_ = param1[_loc2_];
                        if(_loc3_.id == "LastHero_5096791.361212861")
                        {
                           §§push(param1);
                           if(_loc5_)
                           {
                              §§pop().splice(_loc2_,1);
                              if(_loc5_)
                              {
                                 break;
                              }
                              §§goto(addr95);
                           }
                           §§goto(addr42);
                        }
                        else
                        {
                           _loc2_++;
                           if(!_loc4_)
                           {
                              continue;
                           }
                        }
                        §§goto(addr85);
                     }
                  }
                  addr42:
                  if(§§pop().length >= 1)
                  {
                     if(_loc5_)
                     {
                        nobattles.visible = false;
                        if(!_loc4_)
                        {
                           q.list(listmc,"Room",{
                              "Array":param1,
                              "Name":"Rooms"
                           },"Down",1,100,false,false,false,null,null,null);
                           if(_loc5_)
                           {
                              listmc.addEventListener(MouseEvent.CLICK,roomclick,false,0,true);
                              if(!_loc4_)
                              {
                                 addr85:
                                 q.fadeIn(listmc);
                                 if(!_loc5_)
                                 {
                                    §§goto(addr95);
                                 }
                              }
                              §§goto(addr95);
                           }
                        }
                     }
                     §§goto(addr95);
                  }
                  else
                  {
                     nobattles.visible = true;
                  }
                  addr95:
                  q.fadeIn(nobattles);
                  param1;
               };
               if(!_loc3_)
               {
                  var c:Client = MovieClip(root).client;
                  §§goto(addr41);
               }
               §§goto(addr58);
            }
         }
         addr41:
         if(!_loc3_)
         {
            addr58:
            c.multiplayer.listRooms("Game",{
               "Map":this.map,
               "B":root.branch
            },25,0,listrooms);
         }
      }
      
      public function create(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(this.createmc)
         {
            return;
         }
         this.createmc = new CreateRoom() as MovieClip;
         this.createmc.x = 227;
         this.createmc.y = 4;
         addChild(this.createmc);
         MovieClip(root).q.fadeIn(this.createmc);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.listmc.removeEventListener(MouseEvent.CLICK,this.roomclick);
            if(_loc1_)
            {
               this.joinbtn.removeEventListener(MouseEvent.CLICK,this.joingame);
               this.closebtn.removeEventListener(MouseEvent.CLICK,this.closeb);
               if(_loc1_)
               {
                  §§goto(addr58);
               }
               §§goto(addr68);
            }
            §§goto(addr71);
         }
         addr58:
         this.createbtn.removeEventListener(MouseEvent.CLICK,this.create);
         if(!_loc2_)
         {
            addr68:
            if(this.createmc)
            {
               addr71:
               this.createmc.clear();
            }
         }
      }
      
      public function joingame(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            var m:MovieClip = null;
            var e:MouseEvent = param1;
            §§push(this.room === "");
            if(!_loc3_)
            {
               §§push(!§§pop());
               if(_loc4_)
               {
                  §§goto(addr40);
               }
               §§goto(addr45);
            }
            addr40:
            if(§§pop())
            {
               if(_loc4_)
               {
                  addr45:
                  §§pop();
                  §§push(Boolean(this.roommc));
               }
            }
            if(§§pop())
            {
               if(this.roominfo.data.Password == "")
               {
                  MovieClip(root).joinbattle(this.room,this.roommc.room);
                  this.close();
                  addr74:
               }
               else
               {
                  m = new ConfirmWTxt() as MovieClip;
                  m.txt = root.getTxt("Enter password:");
                  m.title = root.getTxt("Password");
                  if(!_loc3_)
                  {
                     m.pass = this.roominfo.data.Password;
                     if(_loc4_)
                     {
                        root.addChild(m);
                     }
                     m.confirmation = function():void
                     {
                        var _loc1_:Boolean = false;
                        var _loc2_:Boolean = true;
                        MovieClip(root).joinbattle(room,roommc.room);
                        if(_loc2_)
                        {
                           close();
                        }
                     };
                  }
               }
            }
            return;
         }
         §§goto(addr74);
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
               this.createmc = null;
               if(!_loc1_)
               {
                  MovieClip(root).roomlist = null;
                  if(_loc2_)
                  {
                     addr42:
                     MovieClip(root).q.removeChildFade(this);
                  }
               }
               return;
            }
         }
         §§goto(addr42);
      }
      
      public function closeb(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.close();
         }
      }
      
      public function roomclick(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(this.roommc)
         {
            this.roommc.gotoAndStop(1);
         }
         param1.target.gotoAndStop(2);
         if(!_loc2_)
         {
            this.room = param1.target.room.id;
            this.roommc = param1.target;
         }
         this.roominfo = this.roommc.room;
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.maskmc.visible = false;
            this.nametxt.text = root.getTxt(this.map,this.nametxt);
            if(_loc2_)
            {
               this.nametxt.mouseEnabled = false;
               if(!_loc1_)
               {
                  this.nobattles.visible = false;
                  this.nobattles.text = root.getTxt("NoBattle",this.nobattles);
                  this.q = MovieClip(root).q;
               }
               §§goto(addr126);
            }
            root.translateButtons(this);
            this.list();
            this.createbtn.addEventListener(MouseEvent.CLICK,this.create,false,0,true);
            if(_loc2_)
            {
               root.q.scrollbar(this.listmc,this.maskmc);
               this.joinbtn.addEventListener(MouseEvent.CLICK,this.joingame,false,0,true);
               this.closebtn.addEventListener(MouseEvent.CLICK,this.closeb);
               if(!_loc2_)
               {
               }
               §§goto(addr126);
            }
            MovieClip(root).q.raster(this.bg);
            if(_loc1_)
            {
            }
            §§goto(addr126);
         }
         addr126:
         MovieClip(root).q.createDrag(this.drag,this);
      }
   }
}
