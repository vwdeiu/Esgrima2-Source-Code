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
   import fr.kouma.display.AnimatedBitmap;
   
   public dynamic class WinterGuardRunning extends MovieClip
   {
       
      
      public var a2:GuardIdle2;
      
      public var a:GuardRun2;
      
      public var id:int;
      
      public var b1:AnimatedBitmap;
      
      public var b2:AnimatedBitmap;
      
      public function WinterGuardRunning()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(_loc1_)
            {
               addr21:
               addFrameScript(0,this.frame1,39,this.frame40);
            }
            return;
         }
         §§goto(addr21);
      }
      
      public function Start() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            trace("Start guard run");
            if(_loc1_)
            {
               addChild(this.b1);
               if(!_loc2_)
               {
                  addr36:
                  addEventListener(Event.ENTER_FRAME,this.loop);
                  if(!_loc2_)
                  {
                     this.b1.scaleX = -1;
                     if(!_loc1_)
                     {
                     }
                     §§goto(addr55);
                  }
               }
               this.b2.scaleX = -1;
               §§goto(addr55);
            }
            §§goto(addr36);
         }
         addr55:
      }
      
      public function loop(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         §§push(this.id);
         if(_loc4_)
         {
            if(§§pop() == 2)
            {
               addr32:
               _loc2_ = root.getChildIndex(root.l0) + 1;
               if(parent.getChildIndex(this) > _loc2_)
               {
                  if(_loc4_)
                  {
                     parent.setChildIndex(this,_loc2_);
                     addr45:
                     §§push(Boolean(this.a));
                     if(!_loc3_)
                     {
                        §§push(§§pop());
                        if(!_loc3_)
                        {
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 §§pop();
                                 §§push(Boolean(this.b1));
                                 if(!_loc3_)
                                 {
                                    addr70:
                                    if(§§pop())
                                    {
                                       addr71:
                                       this.a.stop();
                                       this.b1.x = this.a.x;
                                       if(!_loc3_)
                                       {
                                          this.b1.y = this.a.y;
                                       }
                                    }
                                    else
                                    {
                                       §§push(Boolean(this.a2));
                                       if(_loc4_)
                                       {
                                          addr96:
                                          if(§§pop())
                                          {
                                             if(!_loc3_)
                                             {
                                                addr108:
                                                §§pop();
                                                if(!_loc3_)
                                                {
                                                   §§goto(addr115);
                                                }
                                                this.b2.y = this.a2.y;
                                             }
                                          }
                                       }
                                       §§goto(addr115);
                                    }
                                    §§goto(addr115);
                                 }
                                 §§goto(addr96);
                              }
                              addr115:
                              if(this.b2)
                              {
                                 this.b2.x = this.a2.x;
                              }
                              return;
                           }
                           §§goto(addr70);
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr71);
               }
            }
            §§goto(addr45);
         }
         §§goto(addr32);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         removeEventListener(Event.ENTER_FRAME,this.loop);
         if(this.b2)
         {
            if(this.b2.stage !== null)
            {
               if(_loc1_)
               {
                  removeChild(this.b2);
               }
            }
            this.b2.destroy();
            this.b2 = null;
         }
      }
      
      public function swap() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(this.a2)
         {
            if(_loc2_)
            {
               this.a2.stop();
            }
            if(this.b1)
            {
               removeChild(this.b1);
               this.b1.destroy();
               this.b1 = null;
            }
            §§push(Boolean(this.b2));
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§pop();
                     §§push(this.b2.stage == null);
                  }
               }
            }
            if(§§pop())
            {
               addChild(this.b2);
            }
         }
      }
      
      function frame1() : *
      {
      }
      
      function frame40() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            stop();
            if(_loc2_)
            {
               addr30:
               this.swap();
               if(!_loc1_)
               {
                  if(this.id == 1)
                  {
                     if(!_loc2_)
                     {
                     }
                  }
                  §§goto(addr45);
               }
               root.dialog("Nobles","Help");
            }
            addr45:
            return;
         }
         §§goto(addr30);
      }
   }
}
