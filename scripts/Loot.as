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
   
   public dynamic class Loot extends MovieClip
   {
       
      
      public var moneytxt:TextField;
      
      public var s0:Slot;
      
      public var s10:Slot;
      
      public var s1:Slot;
      
      public var s11:Slot;
      
      public var s2:Slot;
      
      public var bg:MovieClip;
      
      public var closebtn:Close;
      
      public var s12:Slot;
      
      public var s3:Slot;
      
      public var s13:Slot;
      
      public var s4:Slot;
      
      public var replaybtn:SimpleButton;
      
      public var leavebtn:SimpleButton;
      
      public var s14:Slot;
      
      public var s5:Slot;
      
      public var s6:Slot;
      
      public var s15:Slot;
      
      public var s7:Slot;
      
      public var s16:Slot;
      
      public var s8:Slot;
      
      public var s17:Slot;
      
      public var takebtn:SimpleButton;
      
      public var s9:Slot;
      
      public var items:Vector.<String>;
      
      public var dead:Boolean;
      
      public function Loot()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               addr21:
               addFrameScript(0,this.frame1);
            }
            return;
         }
         §§goto(addr21);
      }
      
      public function mclick(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1.target.name == "closebtn");
         if(!_loc3_)
         {
            §§push(§§pop());
            if(_loc2_)
            {
               if(!§§pop())
               {
                  §§pop();
                  §§push(param1.target.name == "leavebtn");
                  if(!_loc3_)
                  {
                     addr37:
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           this.close();
                           if(_loc3_)
                           {
                              addr113:
                              MovieClip(root).getC().send("Take",param1.target.id);
                              §§goto(addr122);
                           }
                           addr122:
                           return;
                        }
                     }
                     else if(param1.target.name == "replaybtn")
                     {
                        if(_loc2_)
                        {
                           root.replay = true;
                           this.close();
                        }
                        else
                        {
                           §§goto(addr113);
                        }
                     }
                     else
                     {
                        if(param1.target.name == "takebtn")
                        {
                           if(!MovieClip(root).allEmpty(this))
                           {
                              if(!_loc3_)
                              {
                                 MovieClip(root).getC().send("TakeAll");
                              }
                              else
                              {
                                 addr104:
                                 §§push(param1.target.item === "None");
                                 if(_loc2_)
                                 {
                                    addr112:
                                    if(§§pop())
                                    {
                                    }
                                    §§goto(addr113);
                                 }
                                 §§goto(addr112);
                              }
                           }
                           §§goto(addr113);
                        }
                        else
                        {
                           addr91:
                           §§push(Boolean(param1.target.slot));
                           if(Boolean(param1.target.slot))
                           {
                              §§pop();
                              if(_loc2_)
                              {
                                 §§goto(addr104);
                              }
                              §§goto(addr113);
                           }
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr91);
               }
               §§goto(addr37);
            }
            §§goto(addr91);
         }
         §§goto(addr112);
      }
      
      public function list() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 18;
         if(!_loc2_)
         {
            MovieClip(root).itemlist(this,this.items,_loc1_,"Loot");
         }
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
               MovieClip(root).lootmc = null;
               if(!_loc2_)
               {
                  §§goto(addr36);
               }
            }
            §§goto(addr45);
         }
         addr36:
         MovieClip(root).q.removeChildFade(this);
         if(_loc1_)
         {
            addr45:
            MovieClip(root).leaveBattle();
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            removeEventListener(MouseEvent.CLICK,this.mclick);
            if(!_loc1_)
            {
               MovieClip(root).dettachTool(this);
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push("Floors");
            if(!_loc2_)
            {
               §§push(§§pop() in root.RoomData);
               if(_loc1_)
               {
                  §§push(§§pop());
                  if(!_loc2_)
                  {
                     if(!§§pop())
                     {
                        §§pop();
                        if(_loc1_)
                        {
                           addr36:
                           §§push(Boolean(this.dead));
                           §§push(Boolean(this.dead));
                           if(_loc1_)
                           {
                              §§goto(addr40);
                           }
                           §§goto(addr49);
                        }
                        §§goto(addr109);
                     }
                     §§goto(addr36);
                  }
                  addr40:
                  if(!§§pop())
                  {
                     if(_loc1_)
                     {
                        §§pop();
                        addr49:
                        §§push("Players" in root.RoomData && root.RoomData.Players == 1);
                     }
                  }
                  if(§§pop())
                  {
                     this.replaybtn.alpha = 0.38;
                     this.replaybtn.mouseEnabled = false;
                  }
                  this.list();
                  if(_loc1_)
                  {
                     addEventListener(MouseEvent.CLICK,this.mclick,false,0,true);
                     MovieClip(root).attachTool(this);
                     root.translateButtons(this);
                     this.bg.loottxt = root.getTxt("Loot",this.bg.loottxt);
                     MovieClip(root).q.raster(this.bg);
                     addr109:
                     this.bg = null;
                     this.moneytxt.text = root.getTxt("Denars gained",this.moneytxt) + ": " + MovieClip(root).q.comma(String(MovieClip(root).pChar.Money - MovieClip(root).initmoney));
                  }
                  return;
               }
               §§goto(addr50);
            }
         }
         §§goto(addr49);
      }
   }
}
