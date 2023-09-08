package fr.kouma.display
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import flash.media.SoundChannel;
   import flash.utils.*;
   
   public class AnimatedBitmap extends Sprite
   {
      
      public static const TIMER:String = "timer";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const EXTERNAL:String = "external";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!_loc1_)
            {
               if(_loc1_)
               {
               }
            }
         }
      }
      
      protected var _destroyed:Boolean;
      
      protected var _currentFrame:Number;
      
      public var soundConnect:SoundChannel;
      
      public var playedOnce:Boolean;
      
      public var playOnce:Boolean = false;
      
      public var _currentData:Vector.<AnimatedBitmapData>;
      
      protected var _totalFrames:int;
      
      protected var _timer:Timer;
      
      protected var _updateAfterEvent:Boolean;
      
      protected var _frameRate:uint;
      
      public var Data:Object;
      
      public var _bitmap:Bitmap;
      
      public var ID:int;
      
      protected var _animatedBitmapData:AnimatedBitmapData;
      
      protected var _isPlaying:Boolean;
      
      public var duration:Number;
      
      public var durationPlayed:Number;
      
      public var lastTimed:int;
      
      protected var _currentLabels:Array;
      
      protected var _frameLabels:Vector.<String>;
      
      protected var _smoothing:Boolean;
      
      protected var blend:String = null;
      
      protected var color:ColorTransform;
      
      protected var _frameToStop:int = -1;
      
      protected var _ticker:String;
      
      protected var _count:int;
      
      protected var _frameInterval:Number;
      
      public var _destroyData:Boolean = false;
      
      public var destroyAtEnd:Boolean = false;
      
      protected var _debug:Boolean;
      
      protected var _debugShape:Shape;
      
      public function AnimatedBitmap(param1:AnimatedBitmapData = null, param2:String = null, param3:uint = 60, param4:Boolean = false, param5:String = "auto", param6:Boolean = false)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            this.color = new ColorTransform();
            if(!_loc8_)
            {
               super();
               if(!_loc8_)
               {
                  this._updateAfterEvent = param4;
                  this._ticker = param2;
                  if(_loc7_)
                  {
                     this._isPlaying = true;
                     if(this._ticker == TIMER)
                     {
                        this._timer = new Timer(this._frameRate);
                     }
                     this.frameRate = param3;
                     addr55:
                     this._bitmap = new Bitmap();
                     if(param6)
                     {
                        if(!_loc8_)
                        {
                           this._bitmap.scaleX /= 1.75;
                           addr79:
                           this._bitmap.scaleY /= 1.75;
                           addr87:
                           this._bitmap.pixelSnapping = param5;
                           this._bitmap.smoothing = param6;
                           this._smoothing = param6;
                           if(!_loc8_)
                           {
                              _pixelSnapping = param5;
                              if(param1 !== null)
                              {
                                 this._bitmap.blendMode = param1.blend;
                                 if(!_loc8_)
                                 {
                                    this._bitmap.transform.colorTransform = param1.color;
                                    if(_loc8_)
                                    {
                                    }
                                 }
                                 §§goto(addr155);
                              }
                           }
                           this.addChild(this._bitmap);
                           if(!_loc8_)
                           {
                              addEventListener(Event.ADDED_TO_STAGE,this.activation);
                              if(!_loc7_)
                              {
                              }
                              §§goto(addr152);
                           }
                           addEventListener(Event.REMOVED_FROM_STAGE,this.desactivation);
                           if(param1 !== null)
                           {
                              addr152:
                              this.animatedBitmapData = param1;
                              §§goto(addr155);
                           }
                        }
                        addr155:
                        return;
                     }
                     §§goto(addr87);
                  }
                  §§goto(addr152);
               }
            }
            §§goto(addr79);
         }
         §§goto(addr55);
      }
      
      protected function gotoFrameLabel(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:FrameLabel = null;
         var _loc2_:int = this._currentLabels.length;
         var _loc4_:int = 0;
         if(!_loc6_)
         {
            while(true)
            {
               if(_loc4_ < _loc2_)
               {
                  _loc3_ = this._currentLabels[_loc4_] as FrameLabel;
                  if(_loc5_)
                  {
                     if(_loc3_.name == param1)
                     {
                        if(_loc6_)
                        {
                           break;
                        }
                        this.goto(_loc3_.frame - 1);
                        if(_loc5_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        _loc4_++;
                     }
                  }
                  continue;
               }
            }
            return;
         }
      }
      
      protected function goto(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(!_loc2_)
         {
            §§push(0);
            if(_loc3_)
            {
               if(§§pop() < §§pop())
               {
                  if(!_loc2_)
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc3_)
                        {
                           param1 = §§pop();
                           if(!_loc2_)
                           {
                              addr45:
                              §§push(param1);
                              if(!_loc2_)
                              {
                                 addr50:
                                 if(§§pop() > this._totalFrames - 1)
                                 {
                                    if(!_loc2_)
                                    {
                                       addr56:
                                       §§push(this._totalFrames - 1);
                                       if(!_loc2_)
                                       {
                                          addr68:
                                          param1 = Number(§§pop());
                                       }
                                       §§goto(addr68);
                                    }
                                 }
                                 this._currentFrame = param1;
                                 if(!_loc2_)
                                 {
                                    addr75:
                                    this.blend = this._animatedBitmapData.getBlend(this._currentFrame);
                                 }
                                 §§goto(addr82);
                              }
                              §§goto(addr68);
                           }
                           addr82:
                           this._bitmapData = this._animatedBitmapData.getFrame(this._currentFrame);
                           return;
                        }
                        §§goto(addr68);
                     }
                     §§goto(addr56);
                  }
                  §§goto(addr75);
               }
               §§goto(addr45);
            }
            §§goto(addr50);
         }
         §§goto(addr68);
      }
      
      protected function getFrameFromFrameLabel(param1:String) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:FrameLabel = null;
         var _loc2_:int = this._currentLabels.length;
         var _loc4_:int = 0;
         if(!_loc6_)
         {
            while(_loc4_ < _loc2_)
            {
               _loc3_ = this._currentLabels[_loc4_] as FrameLabel;
               if(_loc5_)
               {
                  if(_loc3_.name == param1)
                  {
                     if(!_loc6_)
                     {
                        return _loc3_.frame - 1;
                     }
                  }
                  else
                  {
                     _loc4_++;
                  }
               }
            }
         }
         return this._currentFrame;
      }
      
      protected function activation(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this._ticker);
            if(!_loc2_)
            {
               if(§§pop() == TIMER)
               {
                  if(!_loc2_)
                  {
                     this._timer.addEventListener(TimerEvent.TIMER,this.timerHandler);
                     if(!_loc2_)
                     {
                        addr59:
                        if(this._ticker == ENTER_FRAME)
                        {
                           if(!_loc2_)
                           {
                              addr65:
                              this.addEventListener(Event.ENTER_FRAME,this.anime);
                           }
                        }
                     }
                     §§goto(addr65);
                  }
               }
               else
               {
                  this.frameRate = this.frameRate;
                  if(_loc3_)
                  {
                     §§goto(addr59);
                  }
               }
               return;
            }
            §§goto(addr59);
         }
         §§goto(addr65);
      }
      
      protected function desactivation(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this._ticker == TIMER)
            {
               if(!_loc2_)
               {
                  addr31:
                  this._timer.removeEventListener(TimerEvent.TIMER,this.anime);
                  if(_loc3_)
                  {
                     addr41:
                     this.stop();
                  }
               }
               return;
            }
            §§goto(addr41);
         }
         §§goto(addr31);
      }
      
      protected function timerHandler(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.anime();
            if(_loc3_)
            {
               §§goto(addr23);
            }
            §§goto(addr29);
         }
         addr23:
         if(this._updateAfterEvent)
         {
            if(!_loc2_)
            {
               addr29:
               param1.updateAfterEvent();
            }
         }
      }
      
      public function anime(param1:Event = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(!this._isPlaying)
            {
               if(!_loc6_)
               {
                  §§goto(addr24);
               }
            }
            else
            {
               §§push(this._totalFrames);
               if(_loc5_)
               {
                  if(§§pop() <= 1)
                  {
                     §§goto(addr31);
                  }
                  else
                  {
                     §§push(this._totalFrames);
                     if(_loc5_)
                     {
                        addr37:
                        §§push(int(§§pop() - 1));
                     }
                     var _loc2_:* = §§pop();
                     if(_loc5_)
                     {
                        §§push(this._ticker);
                        if(_loc5_)
                        {
                           §§push(§§pop() == TIMER);
                           if(_loc5_)
                           {
                              §§push(!§§pop());
                              if(_loc5_)
                              {
                                 §§push(§§pop());
                                 if(_loc5_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          §§pop();
                                          var _loc3_:*;
                                          §§push((_loc3_ = this)._count);
                                          if(_loc5_)
                                          {
                                             §§push(§§pop() + 1);
                                             if(!_loc6_)
                                             {
                                                var _loc4_:*;
                                                §§push(_loc4_ = §§pop());
                                                if(_loc5_)
                                                {
                                                   _loc3_._count = _loc4_;
                                                }
                                             }
                                          }
                                          §§push(§§pop() % this._frameInterval);
                                          if(!_loc6_)
                                          {
                                             §§push(0);
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(_loc5_)
                                                {
                                                   addr97:
                                                   if(!§§pop())
                                                   {
                                                      return;
                                                   }
                                                   §§push(this._currentFrame);
                                                   if(!_loc6_)
                                                   {
                                                      addr197:
                                                      §§push(_loc2_);
                                                      if(!_loc6_)
                                                      {
                                                         §§push(§§pop() >= §§pop());
                                                      }
                                                      if(§§pop() < §§pop() - 1)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            addr204:
                                                            if(this.currentFrameLabel !== null)
                                                            {
                                                               §§push(this._frameLabels);
                                                               §§push(this._currentFrame);
                                                               if(_loc5_)
                                                               {
                                                                  §§push(§§pop() + 1);
                                                               }
                                                               §§pop()[§§pop()] = this.currentFrameLabel;
                                                            }
                                                            trace("Half speed");
                                                            §§push(this);
                                                            §§push((_loc3_ = this)._currentFrame);
                                                            if(_loc5_)
                                                            {
                                                               §§push(§§pop() + 1);
                                                               if(!_loc6_)
                                                               {
                                                                  addr231:
                                                                  §§push(_loc4_ = §§pop());
                                                                  if(!_loc6_)
                                                                  {
                                                                     _loc3_._currentFrame = _loc4_;
                                                                  }
                                                               }
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(§§pop() % this._totalFrames);
                                                               }
                                                               §§pop()._currentFrame = §§pop();
                                                               §§goto(addr255);
                                                            }
                                                            §§goto(addr231);
                                                         }
                                                         §§goto(addr270);
                                                      }
                                                   }
                                                   §§goto(addr255);
                                                }
                                                §§push(§§pop());
                                                if(!_loc6_)
                                                {
                                                   addr112:
                                                   if(§§pop())
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         addr115:
                                                         §§pop();
                                                         §§push(Boolean(this.destroyAtEnd));
                                                         if(!_loc6_)
                                                         {
                                                            addr121:
                                                            if(§§pop())
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  this.destroy();
                                                                  if(_loc5_)
                                                                  {
                                                                     addr136:
                                                                     §§push(this);
                                                                     §§push((_loc3_ = this)._currentFrame);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(§§pop() + 1);
                                                                        if(_loc5_)
                                                                        {
                                                                           addr146:
                                                                           §§push(_loc4_ = §§pop());
                                                                           if(_loc5_)
                                                                           {
                                                                              _loc3_._currentFrame = _loc4_;
                                                                           }
                                                                        }
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(§§pop() % this._totalFrames);
                                                                        }
                                                                        §§pop()._currentFrame = §§pop();
                                                                        addr162:
                                                                        §§push(root !== null);
                                                                        if(_loc5_)
                                                                        {
                                                                           addr168:
                                                                           §§push(§§pop());
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr182:
                                                                                       §§push(root.mult == 2);
                                                                                       if(root.mult == 2)
                                                                                       {
                                                                                          addr184:
                                                                                          §§pop();
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             addr188:
                                                                                             §§push(this._currentFrame);
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§push(this._totalFrames);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§goto(addr197);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr255);
                                                                                       }
                                                                                       §§goto(addr197);
                                                                                    }
                                                                                    §§goto(addr255);
                                                                                 }
                                                                                 §§goto(addr184);
                                                                              }
                                                                           }
                                                                           §§goto(addr182);
                                                                        }
                                                                        §§goto(addr184);
                                                                     }
                                                                     §§goto(addr146);
                                                                  }
                                                                  §§goto(addr162);
                                                               }
                                                               §§goto(addr188);
                                                            }
                                                            §§goto(addr136);
                                                         }
                                                      }
                                                      §§goto(addr184);
                                                   }
                                                   §§goto(addr121);
                                                }
                                                §§goto(addr182);
                                             }
                                             §§goto(addr197);
                                          }
                                          addr255:
                                          this._bitmapData = this._animatedBitmapData.getFrame(this._currentFrame);
                                          if(this._currentFrame == this._frameToStop)
                                          {
                                             if(!_loc6_)
                                             {
                                                addr270:
                                                this.stop();
                                                if(_loc6_)
                                                {
                                                }
                                                §§goto(addr277);
                                             }
                                             this._frameToStop = -1;
                                             §§goto(addr277);
                                          }
                                          addr277:
                                          return;
                                       }
                                       §§goto(addr115);
                                    }
                                    §§goto(addr97);
                                 }
                                 §§goto(addr112);
                              }
                              §§goto(addr115);
                           }
                           §§goto(addr168);
                        }
                        §§goto(addr204);
                     }
                     §§goto(addr270);
                  }
               }
               §§goto(addr37);
            }
            addr31:
            return;
         }
         addr24:
      }
      
      protected function set _bitmapData(param1:BitmapData) : void
      {
         if(!param1)
         {
            return;
         }
         this._bitmap.bitmapData = param1;
         this._bitmap.smoothing = this._smoothing;
         this._bitmap.pixelSnapping = _pixelSnapping;
         var _loc2_:Rectangle = this._animatedBitmapData.getBounds(this._bitmapData);
         this._bitmap.x = _loc2_.x * this._bitmap.scaleX;
         this._bitmap.y = _loc2_.y * this._bitmap.scaleY;
         if(this._debug)
         {
            this._debugShape.graphics.clear();
            this._debugShape.graphics.lineStyle(0,16711680);
            this._debugShape.graphics.drawRect(_loc2_.x,_loc2_.y,_loc2_.width,_loc2_.height);
            this._debugShape.graphics.moveTo(0,-10);
            this._debugShape.graphics.lineTo(0,10);
            this._debugShape.graphics.moveTo(-10,0);
            this._debugShape.graphics.lineTo(10,0);
         }
      }
      
      protected function get _bitmapData() : BitmapData
      {
         return this._bitmap.bitmapData;
      }
      
      public function goToData(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:AnimatedBitmapData = null;
         var _loc2_:int = this._currentData.length;
         var _loc4_:int = 0;
         if(_loc5_)
         {
            while(true)
            {
               if(_loc4_ < _loc2_)
               {
                  _loc3_ = this._currentData[_loc4_] as AnimatedBitmapData;
                  if(!_loc5_)
                  {
                     break;
                  }
                  if(_loc3_.frameLabel == param1)
                  {
                     if(!_loc5_)
                     {
                        break;
                     }
                     this.animatedBitmapData = _loc3_;
                     if(!_loc6_)
                     {
                        break;
                     }
                  }
                  else
                  {
                     _loc4_++;
                  }
                  continue;
               }
            }
            return true;
         }
         return false;
      }
      
      public function get animatedBitmapData() : AnimatedBitmapData
      {
         return this._animatedBitmapData;
      }
      
      public function set animatedBitmapData(param1:AnimatedBitmapData) : void
      {
         var _loc4_:FrameLabel = null;
         if(this._destroyData && this.animatedBitmapData != null)
         {
            this.animatedBitmapData.destroy();
         }
         this._animatedBitmapData = param1;
         this.playOnce = false;
         this._totalFrames = this._animatedBitmapData._allBitmaps.length;
         this._currentLabels = this._animatedBitmapData.currentLabels;
         this._frameLabels = new Vector.<String>(this._totalFrames,true);
         var _loc2_:int = 60 / param1.slowMult;
         this.duration = this._totalFrames * (1000 / _loc2_);
         var _loc3_:int = this._currentLabels.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc4_ = this._currentLabels[_loc5_] as FrameLabel;
            this._frameLabels[_loc4_.frame - 1] = _loc4_.name;
            _loc5_++;
         }
         this._currentFrame = 0;
         this.blend = this._animatedBitmapData.getBlend(this._currentFrame);
         this._bitmapData = this._animatedBitmapData.getFrame(this._currentFrame);
         if(this._isPlaying)
         {
            this.play();
         }
      }
      
      public function update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this._ticker == EXTERNAL)
            {
               if(_loc1_)
               {
                  addr23:
                  this.anime();
               }
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function replace(param1:MovieClip) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:DisplayObjectContainer = null;
         var _loc3_:int = 0;
         if(!_loc5_)
         {
            if(param1.parent != null)
            {
               _loc2_ = param1.parent;
               addr27:
               if(_loc4_)
               {
                  _loc3_ = _loc2_.getChildIndex(param1);
                  if(_loc4_)
                  {
                     this.name = param1.name;
                     if(_loc5_)
                     {
                     }
                     §§goto(addr76);
                  }
                  this.x = param1.x;
                  this.y = param1.y;
                  if(!_loc5_)
                  {
                     _loc2_.addChildAt(this,_loc3_);
                  }
               }
               §§goto(addr76);
            }
            addr76:
            _loc2_.removeChild(param1);
            return;
         }
         §§goto(addr27);
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this._ticker);
            if(_loc2_)
            {
               if(§§pop() == EXTERNAL)
               {
                  this._count = 0;
                  if(_loc2_)
                  {
                     addr32:
                     this._isPlaying = true;
                     §§push(this);
                     §§push(this._currentFrame);
                     if(!_loc1_)
                     {
                        §§push(1);
                        if(!_loc1_)
                        {
                           addr58:
                           §§push(§§pop() + §§pop());
                           if(_loc2_)
                           {
                              §§push(this._totalFrames);
                           }
                           §§pop().durationPlayed = §§pop();
                           if(_loc2_)
                           {
                              §§goto(addr61);
                           }
                           §§goto(addr84);
                        }
                        §§push(§§pop() / §§pop());
                     }
                     §§goto(addr58);
                  }
                  addr61:
                  this.lastTimed = getTimer();
                  §§push(this._ticker);
                  if(!_loc1_)
                  {
                     addr77:
                     if(§§pop() == TIMER)
                     {
                        this._timer.start();
                        if(!_loc1_)
                        {
                           §§goto(addr84);
                        }
                        §§goto(addr90);
                     }
                     addr84:
                     §§goto(addr86);
                  }
                  addr86:
                  if(this._ticker == ENTER_FRAME)
                  {
                     if(!_loc1_)
                     {
                        addr90:
                        this.addEventListener(Event.ENTER_FRAME,this.anime);
                     }
                  }
                  return;
               }
               §§goto(addr32);
            }
            §§goto(addr77);
         }
         §§goto(addr84);
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this._isPlaying = false;
            if(_loc2_)
            {
               addr31:
               §§push(this._ticker);
               if(!_loc1_)
               {
                  if(§§pop() == TIMER)
                  {
                     if(!_loc1_)
                     {
                        this._timer.stop();
                        if(_loc2_)
                        {
                           addr52:
                           if(this._ticker == ENTER_FRAME)
                           {
                              if(_loc2_)
                              {
                                 addr58:
                                 this.removeEventListener(Event.ENTER_FRAME,this.anime);
                              }
                           }
                        }
                        return;
                     }
                     §§goto(addr58);
                  }
               }
            }
            §§goto(addr52);
         }
         §§goto(addr31);
      }
      
      public function prevFrame() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this);
            var _loc1_:*;
            §§push((_loc1_ = this)._currentFrame);
            if(!_loc4_)
            {
               §§push(§§pop() - 1);
               if(!_loc4_)
               {
                  var _loc2_:*;
                  §§push(_loc2_ = §§pop());
                  if(_loc3_)
                  {
                     _loc1_._currentFrame = _loc2_;
                  }
               }
            }
            §§pop().goto(§§pop());
            if(_loc3_)
            {
               addr46:
               this.stop();
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function nextFrame() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this);
            var _loc1_:*;
            §§push((_loc1_ = this)._currentFrame);
            if(_loc4_)
            {
               §§push(§§pop() + 1);
               if(_loc4_)
               {
                  var _loc2_:*;
                  §§push(_loc2_ = §§pop());
                  if(_loc4_)
                  {
                     _loc1_._currentFrame = _loc2_;
                  }
               }
            }
            §§pop().goto(§§pop());
            if(!_loc3_)
            {
               this.stop();
            }
         }
      }
      
      public function gotoAndPlay(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1 is Number);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     this.goto(Number(param1) - 1);
                     if(_loc3_)
                     {
                        addr65:
                        this.play();
                        addr51:
                     }
                  }
                  §§goto(addr67);
               }
               else
               {
                  addr55:
                  if(param1 is String)
                  {
                     if(!_loc2_)
                     {
                        this.gotoFrameLabel(String(param1));
                        if(!_loc2_)
                        {
                           §§goto(addr65);
                        }
                     }
                     addr67:
                     return;
                  }
               }
               §§goto(addr65);
            }
            §§goto(addr55);
         }
         §§goto(addr51);
      }
      
      public function gotoAndStop(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1 is Number);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     this.goto(Number(param1) - 1);
                     if(!_loc3_)
                     {
                        addr65:
                        this.stop();
                     }
                  }
                  §§goto(addr67);
               }
               else
               {
                  addr54:
                  if(param1 is String)
                  {
                     if(_loc2_)
                     {
                        addr58:
                        this.gotoFrameLabel(String(param1));
                        if(_loc2_)
                        {
                           §§goto(addr65);
                        }
                     }
                     addr67:
                     return;
                  }
               }
               §§goto(addr65);
            }
            §§goto(addr54);
         }
         §§goto(addr58);
      }
      
      public function playTo(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1 is Number);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     this._frameToStop = int(param1) - 1;
                     if(_loc2_)
                     {
                     }
                  }
                  §§goto(addr67);
               }
               else
               {
                  §§push(param1 is String);
               }
               §§goto(addr67);
            }
            if(§§pop())
            {
               if(!_loc2_)
               {
                  this._frameToStop = this.getFrameFromFrameLabel(String(param1));
                  if(!_loc3_)
                  {
                  }
                  §§goto(addr67);
               }
            }
         }
         addr67:
         this.play();
      }
      
      public function playFromTo(param1:Object, param2:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.playTo(param2);
            if(_loc4_)
            {
               addr25:
               this.gotoAndPlay(param1);
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function get totalFrames() : int
      {
         return this._totalFrames;
      }
      
      public function get currentFrame() : Number
      {
         return this._currentFrame;
      }
      
      public function get frameRate() : uint
      {
         return this._frameRate;
      }
      
      public function set frameRate(param1:uint) : void
      {
         this._frameRate = Math.max(param1,0);
         if(this._ticker == TIMER)
         {
            this._frameRate = Math.max(1000 / this._frameRate,0);
            this._timer.delay = this._frameRate;
         }
         else if(stage != null)
         {
            this._frameRate = Math.min(param1,stage.frameRate);
            this._frameInterval = Math.ceil(stage.frameRate / this._frameRate);
         }
      }
      
      public function get isPlaying() : Boolean
      {
         return this._isPlaying;
      }
      
      public function get currentLabels() : Array
      {
         return this._currentLabels;
      }
      
      public function get currentLabel() : String
      {
         var _loc1_:String = this._frameLabels[Math.round(this._currentFrame)];
         if(_loc1_ == null)
         {
            _loc1_ = this._frameLabels[this._currentFrame];
         }
         return _loc1_;
      }
      
      public function get currentFrameLabel() : String
      {
         return this._frameLabels[this._currentFrame];
      }
      
      public function get previousFrameLabel() : String
      {
         if(this._currentFrame <= 0)
         {
            return this._frameLabels[this._currentFrame];
         }
         return this._frameLabels[this._currentFrame - 1];
      }
      
      public function destroy() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         if(!_loc4_)
         {
            §§push(this._ticker);
            if(!_loc4_)
            {
               if(§§pop() == TIMER)
               {
                  this._timer.removeEventListener(TimerEvent.TIMER,this.timerHandler);
                  if(_loc3_)
                  {
                     this._timer.stop();
                     if(!_loc4_)
                     {
                        this._timer = null;
                        if(!_loc4_)
                        {
                           addr49:
                           if(this._ticker == ENTER_FRAME)
                           {
                              if(!_loc4_)
                              {
                                 addr55:
                                 removeEventListener(Event.ENTER_FRAME,this.anime);
                                 addr61:
                                 removeEventListener(Event.ADDED_TO_STAGE,this.activation);
                                 removeEventListener(Event.REMOVED_FROM_STAGE,this.desactivation);
                                 if(_loc3_)
                                 {
                                    if(this._currentData)
                                    {
                                       §§push(int(this._currentData.length));
                                       if(_loc3_)
                                       {
                                          _loc1_ = §§pop();
                                          §§push(0);
                                          if(!_loc4_)
                                          {
                                             addr90:
                                             _loc2_ = §§pop();
                                             if(_loc3_)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                }
                                                addr136:
                                             }
                                             addr174:
                                             §§push(this._bitmap.bitmapData === null);
                                             if(!_loc4_)
                                             {
                                                addr182:
                                                §§push(!§§pop());
                                             }
                                             if(§§pop())
                                             {
                                                this._bitmap.bitmapData.dispose();
                                                this._bitmap.bitmapData = null;
                                                if(!_loc4_)
                                                {
                                                   if(this._bitmap.stage !== null)
                                                   {
                                                      this._bitmap.parent.removeChild(this._bitmap);
                                                   }
                                                   this._bitmap = null;
                                                   if(_loc3_)
                                                   {
                                                      addr219:
                                                      this._animatedBitmapData = null;
                                                   }
                                                   addr222:
                                                   if(parent != null)
                                                   {
                                                      parent.removeChild(this);
                                                   }
                                                   §§goto(addr228);
                                                }
                                             }
                                             §§goto(addr219);
                                          }
                                          for(; §§pop() < _loc1_; §§goto(addr136))
                                          {
                                             this._currentData[0].destroy();
                                             if(_loc3_)
                                             {
                                                this._currentData.splice(_loc2_,1);
                                                if(_loc3_)
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc3_)
                                                   {
                                                      §§push(§§pop() - 1);
                                                      if(_loc3_)
                                                      {
                                                         _loc2_ = §§pop();
                                                         if(!_loc4_)
                                                         {
                                                            addr126:
                                                            §§push(_loc1_);
                                                            if(_loc3_)
                                                            {
                                                               addr130:
                                                               §§push(§§pop() - 1);
                                                            }
                                                            _loc1_ = §§pop();
                                                            if(_loc3_)
                                                            {
                                                               addr135:
                                                               _loc2_++;
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                   }
                                                   §§goto(addr130);
                                                }
                                                §§goto(addr126);
                                             }
                                             §§goto(addr135);
                                          }
                                          addr139:
                                          §§push(Boolean(this._destroyData));
                                          §§push(Boolean(this._destroyData));
                                          if(_loc3_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§pop();
                                                   if(!_loc4_)
                                                   {
                                                      addr157:
                                                      if(this.animatedBitmapData != null)
                                                      {
                                                         trace("Destroyed animated data for " + name);
                                                         this.animatedBitmapData.destroy();
                                                         if(_loc3_)
                                                         {
                                                            addr172:
                                                            §§push(Boolean(this._bitmap));
                                                            if(Boolean(this._bitmap))
                                                            {
                                                               §§pop();
                                                            }
                                                            §§goto(addr174);
                                                         }
                                                         addr228:
                                                         this._destroyed = true;
                                                         return;
                                                      }
                                                   }
                                                   §§goto(addr222);
                                                }
                                                §§goto(addr182);
                                             }
                                             §§goto(addr157);
                                          }
                                          §§goto(addr172);
                                       }
                                       §§goto(addr90);
                                    }
                                    §§goto(addr139);
                                 }
                                 §§goto(addr219);
                              }
                              §§goto(addr139);
                           }
                           §§goto(addr61);
                        }
                        §§goto(addr55);
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr157);
               }
            }
            §§goto(addr49);
         }
         §§goto(addr55);
      }
      
      public function get destroyed() : Boolean
      {
         return this._destroyed;
      }
      
      public function get debug() : Boolean
      {
         return this._debug;
      }
      
      public function set debug(param1:Boolean) : void
      {
         this._debug = param1;
         if(this._debugShape == null)
         {
            this._debugShape = new Shape();
         }
         if(this._debug)
         {
            this.addChild(this._debugShape);
         }
         else
         {
            if(this._debugShape.parent != null)
            {
               this.removeChild(this._debugShape);
            }
            this._debugShape.graphics.clear();
         }
      }
   }
}
