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
   
   public dynamic class GuardRunning extends MovieClip
   {
       
      
      public var a2:GuardIdle;
      
      public var a:GuardRun;
      
      public var id:int;
      
      public var b1:AnimatedBitmap;
      
      public var b2:AnimatedBitmap;
      
      public function GuardRunning()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(_loc1_)
            {
               addFrameScript(0,this.frame1,39,this.frame40);
            }
         }
      }
      
      public function Start() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            trace("Start guard run");
            if(_loc2_)
            {
               addChild(this.b1);
               if(_loc2_)
               {
                  addr44:
                  addEventListener(Event.ENTER_FRAME,this.loop);
                  if(_loc2_)
                  {
                     §§goto(addr53);
                  }
                  §§goto(addr59);
               }
               addr53:
               this.b1.scaleX = -1;
               if(_loc2_)
               {
                  addr59:
                  this.b2.scaleX = -1;
               }
               return;
            }
         }
         §§goto(addr44);
      }
      
      public function loop(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         §§push(this.id);
         if(!_loc3_)
         {
            if(§§pop() == 2)
            {
               §§goto(addr31);
            }
            §§goto(addr46);
         }
         addr31:
         _loc2_ = root.getChildIndex(root.l0) + 1;
         if(!_loc3_)
         {
            if(parent.getChildIndex(this) > _loc2_)
            {
               if(!_loc3_)
               {
                  parent.setChildIndex(this,_loc2_);
                  addr46:
                  §§push(Boolean(this.a));
                  if(!_loc3_)
                  {
                     §§push(§§pop());
                     if(!_loc3_)
                     {
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              §§pop();
                              §§push(Boolean(this.b1));
                              if(!_loc3_)
                              {
                                 addr72:
                                 if(§§pop())
                                 {
                                    this.a.stop();
                                    this.b1.x = this.a.x;
                                    if(_loc4_)
                                    {
                                       this.b1.y = this.a.y;
                                    }
                                    else
                                    {
                                       addr121:
                                       this.b2.y = this.a2.y;
                                    }
                                    §§goto(addr127);
                                 }
                                 else
                                 {
                                    §§push(Boolean(this.a2));
                                    if(_loc4_)
                                    {
                                       addr106:
                                       if(§§pop())
                                       {
                                          if(_loc4_)
                                          {
                                             addr110:
                                             §§pop();
                                             §§push(Boolean(this.b2));
                                          }
                                       }
                                    }
                                    §§goto(addr110);
                                 }
                              }
                           }
                           if(§§pop())
                           {
                              this.b2.x = this.a2.x;
                              §§goto(addr121);
                           }
                           §§goto(addr127);
                        }
                        §§goto(addr72);
                     }
                     §§goto(addr106);
                  }
               }
               §§goto(addr110);
            }
            §§goto(addr46);
         }
         addr127:
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         removeEventListener(Event.ENTER_FRAME,this.loop);
         if(this.b2)
         {
            if(this.b2.stage !== null)
            {
               removeChild(this.b2);
            }
            this.b2.destroy();
            this.b2 = null;
         }
      }
      
      public function swap() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.a2)
            {
               this.a2.stop();
               if(this.b1)
               {
                  removeChild(this.b1);
                  this.b1.destroy();
                  if(!_loc1_)
                  {
                     this.b1 = null;
                     if(_loc2_)
                     {
                        addr57:
                        §§push(Boolean(this.b2));
                        if(!_loc1_)
                        {
                           if(§§pop())
                           {
                              if(_loc2_)
                              {
                                 §§pop();
                                 addr68:
                                 §§push(this.b2.stage == null);
                              }
                           }
                        }
                        if(!§§pop())
                        {
                        }
                     }
                     §§goto(addr78);
                  }
                  addChild(this.b2);
                  addr78:
                  return;
               }
            }
            §§goto(addr57);
         }
         §§goto(addr68);
      }
      
      function frame1() : *
      {
      }
      
      function frame40() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            stop();
            if(!_loc2_)
            {
               this.swap();
               if(_loc2_)
               {
               }
               §§goto(addr44);
            }
            if(this.id == 1)
            {
               if(!_loc2_)
               {
                  root.dialog("Guard Joe","Battle");
               }
            }
         }
         addr44:
      }
   }
}
