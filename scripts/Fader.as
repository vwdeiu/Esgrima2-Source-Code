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
   import fr.kouma.display.*;
   import playerio.*;
   
   public dynamic class Fader extends MovieClip
   {
       
      
      public var fader:FadeObj;
      
      public var bitmapping:Boolean;
      
      public var noraster:Boolean;
      
      public var go:int;
      
      public var where:MovieClip;
      
      public var f:Function;
      
      public var cf:Function;
      
      public var before:String;
      
      public var ao0:AnimatedBitmap;
      
      public var ao1:AnimatedBitmap;
      
      public var i:int;
      
      public var ao:AnimatedBitmap;
      
      public var o:MovieClip;
      
      public var m:Matrix;
      
      public var iv:int;
      
      public var c:DisplayObject;
      
      public function Fader()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(!_loc1_)
            {
               addFrameScript(0,this.frame1,42,this.frame43,64,this.frame65);
            }
         }
      }
      
      function frame1() : *
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            mouseChildren = false;
            if(!_loc4_)
            {
               mouseEnabled = false;
               if(!_loc4_)
               {
                  §§push(this.bitmapping);
                  if(_loc3_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc4_)
                        {
                           addr38:
                           addr40:
                           if(!this.noraster)
                           {
                              addr41:
                              this.ao0 = new AnimatedBitmap(MovieClip(root).faderbd,Event.ENTER_FRAME,60);
                           }
                           §§goto(addr153);
                        }
                        this.ao1 = new AnimatedBitmap(MovieClip(root).faderbd,Event.ENTER_FRAME,60);
                        this.i = 0;
                        while(this.i < 2)
                        {
                           this.ao = addChild(this["ao" + this.i]) as AnimatedBitmap;
                           if(!_loc4_)
                           {
                              this.o = MovieClip(getChildAt(this.i));
                              this.ao.x = this.o.x;
                              if(!_loc4_)
                              {
                                 this.ao.y = this.o.y;
                                 if(_loc3_)
                                 {
                                    this.m = this.o.transform.matrix;
                                    if(_loc4_)
                                    {
                                       continue;
                                    }
                                 }
                              }
                              this.ao.transform.matrix = this.m;
                              var _loc1_:*;
                              §§push((_loc1_ = this).i);
                              if(!_loc4_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc2_:* = §§pop();
                              if(!_loc4_)
                              {
                                 _loc1_.i = _loc2_;
                              }
                           }
                        }
                        addr153:
                        return;
                     }
                     §§goto(addr38);
                  }
                  §§goto(addr40);
               }
               §§goto(addr41);
            }
         }
         §§goto(addr38);
      }
      
      function frame43() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.cf);
            if(_loc1_)
            {
               §§push(null);
               if(_loc1_)
               {
                  if(§§pop() !== §§pop())
                  {
                     this.cf();
                  }
                  §§push(this.bitmapping);
                  if(!_loc2_)
                  {
                     §§push(!§§pop());
                     if(_loc1_)
                     {
                        addr42:
                        if(§§pop())
                        {
                           if(_loc1_)
                           {
                              §§pop();
                              if(_loc1_)
                              {
                                 §§goto(addr60);
                              }
                              §§goto(addr70);
                           }
                        }
                     }
                     addr60:
                     if(this.where)
                     {
                        this.where.gotoAndStop(this.go);
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr42);
               }
               addr69:
               §§goto(addr68);
            }
            addr68:
            if(this.f !== null)
            {
               addr70:
               this.f();
            }
            if(MovieClip(root).currentFrame <= 3)
            {
               if(!_loc2_)
               {
                  stage.quality = "high";
               }
            }
            §§goto(addr83);
         }
         addr83:
      }
      
      function frame65() : *
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!this.bitmapping)
         {
            if(MovieClip(root).faderanim)
            {
               MovieClip(root).faderanim.destroy();
            }
            MovieClip(root).fader = null;
            if(_loc3_)
            {
               removeEventListener(Event.ENTER_FRAME,MovieClip(root).faderloop);
               if(this.before !== null)
               {
                  stage.quality = this.before;
                  if(_loc4_)
                  {
                  }
                  §§goto(addr124);
               }
               this.iv = 0;
               while(this.iv < numChildren)
               {
                  this.c = this.getChildAt(this.iv);
                  if(_loc3_)
                  {
                     if(this.c is AnimatedBitmap)
                     {
                        if(_loc3_)
                        {
                           addr82:
                           this.c.destroy();
                           if(_loc4_)
                           {
                              continue;
                           }
                        }
                     }
                     var _loc1_:*;
                     §§push((_loc1_ = this).iv);
                     if(_loc3_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc2_:* = §§pop();
                     if(_loc3_)
                     {
                        _loc1_.iv = _loc2_;
                     }
                     continue;
                  }
                  §§goto(addr82);
               }
               if(!_loc4_)
               {
                  MovieClip(root).removeChild(this);
                  addr122:
                  stop();
               }
               §§goto(addr122);
            }
            addr124:
            return;
         }
         §§goto(addr122);
      }
   }
}
