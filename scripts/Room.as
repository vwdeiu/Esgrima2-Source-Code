package
{
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
   import playerio.RoomInfo;
   
   public dynamic class Room extends MovieClip
   {
       
      
      public var ptxt:TextField;
      
      public var msgtxt:TextField;
      
      public var roomlock:MovieClip;
      
      public var counttxt:TextField;
      
      public var isroom:Boolean;
      
      public var room:RoomInfo;
      
      public var max:int;
      
      public var c:int;
      
      public var creator:String;
      
      public var msg:String;
      
      public var __animFactory_roomlockaf1:AnimatorFactory3D;
      
      public var __animArray_roomlockaf1:Array;
      
      public var ____motion_roomlockaf1_mat3DVec__:Vector.<Number>;
      
      public var ____motion_roomlockaf1_matArray__:Array;
      
      public var __motion_roomlockaf1:MotionBase;
      
      public function Room()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            addFrameScript(0,this.frame1);
            if(!_loc1_)
            {
               if(this.__animFactory_roomlockaf1 == null)
               {
                  if(!_loc1_)
                  {
                     this.__animArray_roomlockaf1 = new Array();
                     if(_loc2_)
                     {
                        this.__motion_roomlockaf1 = new MotionBase();
                        this.__motion_roomlockaf1.duration = 2;
                        this.__motion_roomlockaf1.overrideTargetTransform();
                        if(_loc2_)
                        {
                           this.__motion_roomlockaf1.addPropertyArray("visible",[false,false]);
                           this.__motion_roomlockaf1.addPropertyArray("cacheAsBitmap",[false,false]);
                           this.__motion_roomlockaf1.addPropertyArray("blendMode",["normal","normal"]);
                           addr77:
                           this.__motion_roomlockaf1.addPropertyArray("opaqueBackground",[null,null]);
                           this.__motion_roomlockaf1.is3D = true;
                           this.__motion_roomlockaf1.motion_internal::spanStart = 0;
                           this.____motion_roomlockaf1_matArray__ = new Array();
                           if(!_loc1_)
                           {
                              this.____motion_roomlockaf1_mat3DVec__ = new Vector.<Number>(16);
                              this.____motion_roomlockaf1_mat3DVec__[0] = 1;
                              if(!_loc1_)
                              {
                                 this.____motion_roomlockaf1_mat3DVec__[1] = 0;
                                 this.____motion_roomlockaf1_mat3DVec__[2] = 0;
                                 if(_loc2_)
                                 {
                                    this.____motion_roomlockaf1_mat3DVec__[3] = 0;
                                    if(!_loc1_)
                                    {
                                       addr140:
                                       this.____motion_roomlockaf1_mat3DVec__[4] = 0;
                                       if(_loc2_)
                                       {
                                          addr147:
                                          this.____motion_roomlockaf1_mat3DVec__[5] = 1;
                                          this.____motion_roomlockaf1_mat3DVec__[6] = 0;
                                          this.____motion_roomlockaf1_mat3DVec__[7] = 0;
                                          if(!_loc1_)
                                          {
                                             addr165:
                                             this.____motion_roomlockaf1_mat3DVec__[8] = 0;
                                             this.____motion_roomlockaf1_mat3DVec__[9] = 0;
                                             if(_loc2_)
                                             {
                                                addr178:
                                                this.____motion_roomlockaf1_mat3DVec__[10] = 1;
                                                addr183:
                                                this.____motion_roomlockaf1_mat3DVec__[11] = 0;
                                                this.____motion_roomlockaf1_mat3DVec__[12] = 148;
                                             }
                                             §§goto(addr183);
                                          }
                                          this.____motion_roomlockaf1_mat3DVec__[13] = -15.25;
                                          this.____motion_roomlockaf1_mat3DVec__[14] = 0;
                                          this.____motion_roomlockaf1_mat3DVec__[15] = 1;
                                          if(!_loc1_)
                                          {
                                             addr211:
                                             §§push(this.____motion_roomlockaf1_matArray__);
                                             if(!_loc1_)
                                             {
                                                §§pop().push(new Matrix3D(this.____motion_roomlockaf1_mat3DVec__));
                                                if(!_loc1_)
                                                {
                                                   §§push(this.____motion_roomlockaf1_matArray__);
                                                   if(_loc2_)
                                                   {
                                                      addr227:
                                                      §§pop().push(null);
                                                      if(_loc2_)
                                                      {
                                                         this.__motion_roomlockaf1.addPropertyArray("matrix3D",this.____motion_roomlockaf1_matArray__);
                                                         addr238:
                                                         §§push(this.__animArray_roomlockaf1);
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                   §§pop().push(this.__motion_roomlockaf1);
                                                   if(_loc1_)
                                                   {
                                                   }
                                                   §§goto(addr259);
                                                }
                                                this.__animFactory_roomlockaf1 = new AnimatorFactory3D(null,this.__animArray_roomlockaf1);
                                                §§goto(addr259);
                                             }
                                             §§goto(addr227);
                                          }
                                       }
                                       §§goto(addr259);
                                    }
                                    §§goto(addr183);
                                 }
                                 §§goto(addr147);
                              }
                              §§goto(addr259);
                           }
                           §§goto(addr165);
                        }
                        §§goto(addr238);
                     }
                     §§goto(addr178);
                  }
                  §§goto(addr140);
               }
               addr259:
               this.__animFactory_roomlockaf1.addTargetInfo(this,"roomlock",0,true,0,true,null,-1);
               return;
            }
            §§goto(addr211);
         }
         §§goto(addr77);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.isroom = true;
         this.max = 4;
         if(_loc1_)
         {
            §§push("Players");
            if(_loc1_)
            {
               §§push(§§pop() in this.room.data);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        this.max = this.room.data.Players;
                        addr44:
                        this.c = this.room.onlineUsers;
                        §§push("Password" in this.room.data);
                        if(_loc1_)
                        {
                           addr64:
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 §§pop();
                                 §§push(this.room.data.Password === "");
                                 if(_loc1_)
                                 {
                                    addr78:
                                    §§push(!§§pop());
                                 }
                              }
                           }
                           if(§§pop())
                           {
                              this.roomlock.visible = true;
                           }
                           this.creator = this.room.data.Creator;
                           this.msg = this.room.data.Message;
                           if(!_loc2_)
                           {
                              this.ptxt.text = this.creator;
                              addr111:
                              this.msgtxt.text = this.msg;
                              this.counttxt.text = this.c + "/" + this.max;
                           }
                           mouseChildren = false;
                           stop();
                           §§goto(addr131);
                        }
                        §§goto(addr78);
                     }
                     addr131:
                     return;
                  }
                  §§goto(addr44);
               }
               §§goto(addr64);
            }
            §§goto(addr44);
         }
         §§goto(addr111);
      }
   }
}
