package fr.kouma.display
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import flash.utils.*;
   
   public class AnimatedBitmapData
   {
      
      protected static var _stage:Stage;
      
      protected static var _root:MovieClip;
       
      
      public var _destroyed:Boolean;
      
      public var Data:Object;
      
      public var _quality:String;
      
      public var _before:String;
      
      public var _allBitmaps:Vector.<BitmapData>;
      
      public var frameLabel:String = "";
      
      protected var _allBounds:Dictionary;
      
      protected var _preserveColor:Boolean;
      
      protected var _allBlends:Vector.<String>;
      
      protected var _allColors:Vector.<ColorTransform>;
      
      public var blend:String;
      
      public var color:ColorTransform;
      
      public var slowMult:Number;
      
      public var _x:Number;
      
      public var _y:Number;
      
      public var _matrix:Matrix;
      
      protected var _margin:Number;
      
      protected var _totalFrames:int;
      
      protected var _currentLabels:Array;
      
      protected var _wasAddedToStage:Boolean = true;
      
      public function AnimatedBitmapData(param1:MovieClip, param2:Boolean = true, param3:Boolean = false, param4:Number = 0, param5:Number = 1, param6:Function = null, param7:Object = null, param8:String = "", param9:Number = 1, param10:Function = null, param11:Boolean = false, param12:Boolean = false, param13:Boolean = false)
      {
         var _loc33_:Boolean = false;
         var _loc34_:Boolean = true;
         var _loc15_:* = NaN;
         var _loc16_:* = 0;
         var _loc17_:* = 0;
         var _loc18_:DisplayObject = null;
         var _loc19_:Rectangle = null;
         var _loc20_:* = 0;
         var _loc21_:MovieClip = null;
         var _loc22_:Shape = null;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = 0;
         var _loc26_:Rectangle = null;
         var _loc27_:BitmapData = null;
         var _loc28_:* = 0;
         var _loc29_:DisplayObject = null;
         var _loc30_:Bitmap = null;
         var _loc31_:DisplayObject = null;
         var _loc32_:Matrix = null;
         if(_loc34_)
         {
            this.Data = {};
            if(_loc34_)
            {
               super();
            }
         }
         var _loc14_:Boolean = false;
         if(_loc34_)
         {
            this._matrix = param1._matrix;
            if(param1.parent)
            {
               this.frameLabel = param1.parent.currentFrameLabel;
            }
            this._quality = _root.renderquality;
            trace("QUALITY: " + this._quality);
            if(_loc34_)
            {
               this._before = _stage.quality;
               addr106:
               trace("BEFORE: " + this._before + " " + param1.name);
               if(_root.mult2)
               {
                  if(!_loc33_)
                  {
                     §§push(Number(_root.mult2));
                     if(!_loc33_)
                     {
                        param9 = §§pop();
                        if(!_loc33_)
                        {
                           addr132:
                           if(_root.mult)
                           {
                              §§push(Number(_root.mult));
                              if(!_loc33_)
                              {
                                 addr140:
                                 param9 = §§pop();
                                 addr141:
                                 this.slowMult = param9;
                                 §§push(false);
                                 if(!_loc33_)
                                 {
                                    param3 = §§pop();
                                    param1.bitmapping = true;
                                    if(param1.stage == null)
                                    {
                                       addr155:
                                       if(_stage == null)
                                       {
                                          throw new Error("You must init the AnimatedBitmapData class with a reference to the stage before any instanciation");
                                       }
                                       _stage.addChild(param1);
                                       if(!_loc33_)
                                       {
                                          this._wasAddedToStage = false;
                                          addr182:
                                          _stage.quality = this._quality;
                                          if(!_loc33_)
                                          {
                                             this._x = 0;
                                             this._y = 0;
                                             if(_loc34_)
                                             {
                                                this._margin = param4;
                                                this._totalFrames = param1.totalFrames;
                                             }
                                             this._allBitmaps = new Vector.<BitmapData>();
                                          }
                                          addr226:
                                          this._allBounds = new Dictionary(true);
                                          this._preserveColor = param3;
                                          this._currentLabels = param1.currentLabels;
                                          if(!_loc33_)
                                          {
                                             §§goto(addr241);
                                          }
                                          §§goto(addr268);
                                       }
                                       this._allBlends = new Vector.<String>();
                                       if(!_loc33_)
                                       {
                                          this._allColors = new Vector.<ColorTransform>();
                                          §§goto(addr226);
                                       }
                                       addr241:
                                       §§push(param11);
                                       if(!_loc33_)
                                       {
                                          addr244:
                                          if(§§pop())
                                          {
                                             if(_loc34_)
                                             {
                                                §§push(1.65);
                                                if(!_loc33_)
                                                {
                                                   addr250:
                                                   §§push(Number(§§pop()));
                                                }
                                                _loc15_ = §§pop();
                                                if(!_loc33_)
                                                {
                                                   §§push(int(param1.numChildren));
                                                   if(_loc34_)
                                                   {
                                                      _loc16_ = §§pop();
                                                      if(!_loc33_)
                                                      {
                                                         §§push(0);
                                                         if(!_loc33_)
                                                         {
                                                            addr268:
                                                            _loc17_ = §§pop();
                                                            if(!_loc33_)
                                                            {
                                                               addr272:
                                                               while(true)
                                                               {
                                                                  §§push(_loc17_);
                                                               }
                                                               addr621:
                                                            }
                                                            §§goto(addr645);
                                                         }
                                                         for(; §§pop() < _loc16_; §§goto(addr621))
                                                         {
                                                            if((_loc18_ = param1.getChildAt(_loc17_)) is MovieClip)
                                                            {
                                                               if(_loc33_)
                                                               {
                                                                  continue;
                                                               }
                                                               _loc19_ = _loc18_.getBounds(_loc18_);
                                                               if(_loc34_)
                                                               {
                                                                  §§push(int(_loc18_.numChildren));
                                                                  if(_loc34_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc34_)
                                                                     {
                                                                        _loc20_ = §§pop();
                                                                        addr304:
                                                                        §§push(1);
                                                                     }
                                                                     if(§§pop() < §§pop())
                                                                     {
                                                                        addr620:
                                                                        _loc17_++;
                                                                        continue;
                                                                        addr306:
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc21_ = new MovieClip();
                                                                        (_loc22_ = new Shape()).graphics.beginFill(1,1);
                                                                        if(!_loc33_)
                                                                        {
                                                                           _loc22_.graphics.drawRect(_loc19_.x,_loc19_.y,_loc19_.width,_loc19_.height);
                                                                           if(_loc34_)
                                                                           {
                                                                              _loc22_.graphics.endFill();
                                                                              _loc21_.addChild(_loc22_);
                                                                              addr349:
                                                                              _loc21_.transform.matrix = _loc18_.transform.matrix;
                                                                              if(_loc34_)
                                                                              {
                                                                                 _loc21_.rotation = 0;
                                                                                 if(_loc34_)
                                                                                 {
                                                                                    addr362:
                                                                                    §§push(_loc21_.width / _loc19_.width);
                                                                                    if(!_loc33_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       if(_loc34_)
                                                                                       {
                                                                                          _loc23_ = §§pop();
                                                                                          addr374:
                                                                                          §§push(_loc21_.height / _loc19_.height);
                                                                                          if(_loc34_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    _loc24_ = §§pop();
                                                                                 }
                                                                                 _loc21_ = null;
                                                                                 _loc22_ = null;
                                                                                 if(!_loc33_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(_loc34_)
                                                                                    {
                                                                                       _loc25_ = §§pop();
                                                                                       if(!_loc33_)
                                                                                       {
                                                                                          addr398:
                                                                                          loop10:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc25_);
                                                                                             addr458:
                                                                                             while(§§pop() < _loc20_)
                                                                                             {
                                                                                                (_loc31_ = _loc18_.getChildAt(_loc25_)).visible = true;
                                                                                                _loc29_ = _loc18_.parent;
                                                                                                (_loc32_ = _loc31_.transform.matrix).scale(_loc15_ * _loc23_,_loc15_ * _loc24_);
                                                                                                if(_loc34_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc29_ is MovieClip)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(!_loc33_)
                                                                                                      {
                                                                                                         _loc31_.transform.matrix = _loc32_;
                                                                                                         if(_loc33_)
                                                                                                         {
                                                                                                            continue loop10;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop10;
                                                                                                }
                                                                                                _loc25_++;
                                                                                                continue loop10;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       _loc26_ = _loc18_.getBounds(_loc18_);
                                                                                       (_loc27_ = new BitmapData(_loc26_.width,_loc26_.height,true,0)).draw(_loc18_,new Matrix(1,0,0,1,-_loc26_.x,-_loc26_.y));
                                                                                       if(_loc34_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(_loc34_)
                                                                                          {
                                                                                             _loc28_ = §§pop();
                                                                                             if(!_loc33_)
                                                                                             {
                                                                                                addr499:
                                                                                                loop2:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc28_);
                                                                                                   §§push(_loc20_);
                                                                                                   addr528:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop() < §§pop())
                                                                                                      {
                                                                                                         _loc18_.removeChildAt(_loc28_);
                                                                                                         if(_loc34_)
                                                                                                         {
                                                                                                            _loc20_--;
                                                                                                            if(!_loc33_)
                                                                                                            {
                                                                                                               break loop2;
                                                                                                            }
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      addr529:
                                                                                                      _loc29_ = _loc18_.parent;
                                                                                                      (_loc30_ = new Bitmap(_loc27_,"never")).name = "spliceB";
                                                                                                      if(!_loc33_)
                                                                                                      {
                                                                                                         _loc30_.smoothing = true;
                                                                                                         _loc30_.pixelSnapping = "never";
                                                                                                         if(!_loc33_)
                                                                                                         {
                                                                                                            _loc18_.addChildAt(_loc30_,0);
                                                                                                            if(_loc34_)
                                                                                                            {
                                                                                                               addr561:
                                                                                                               _loc30_.scaleX /= _loc15_ * _loc23_;
                                                                                                               if(!_loc34_)
                                                                                                               {
                                                                                                               }
                                                                                                               loop4:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc29_ = _loc29_.parent;
                                                                                                                  addr603:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc29_ is MovieClip))
                                                                                                                     {
                                                                                                                        if(!_loc33_)
                                                                                                                        {
                                                                                                                           _loc30_.x = _loc19_.x;
                                                                                                                           if(_loc34_)
                                                                                                                           {
                                                                                                                              _loc30_.y = _loc19_.y;
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     _loc30_.scaleX /= _loc29_.scaleX;
                                                                                                                     if(_loc33_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     _loc30_.scaleY /= _loc29_.scaleY;
                                                                                                                     continue loop4;
                                                                                                                  }
                                                                                                                  §§goto(addr620);
                                                                                                               }
                                                                                                               addr599:
                                                                                                            }
                                                                                                            _loc30_.scaleY /= _loc15_ * _loc24_;
                                                                                                            §§goto(addr603);
                                                                                                         }
                                                                                                         §§goto(addr599);
                                                                                                      }
                                                                                                      §§goto(addr561);
                                                                                                   }
                                                                                                }
                                                                                                addr526:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc28_ - 1);
                                                                                                if(_loc34_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc34_)
                                                                                                      {
                                                                                                         _loc28_ = §§pop();
                                                                                                         §§push(§§pop() + 1);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc28_ = §§pop();
                                                                                                            if(!_loc33_)
                                                                                                            {
                                                                                                               §§goto(addr526);
                                                                                                            }
                                                                                                            §§goto(addr529);
                                                                                                         }
                                                                                                         addr523:
                                                                                                      }
                                                                                                      §§goto(addr528);
                                                                                                   }
                                                                                                   addr517:
                                                                                                }
                                                                                                §§goto(addr523);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr517);
                                                                                       }
                                                                                       §§goto(addr499);
                                                                                    }
                                                                                    §§goto(addr458);
                                                                                 }
                                                                                 §§goto(addr398);
                                                                              }
                                                                              §§goto(addr362);
                                                                           }
                                                                           §§goto(addr374);
                                                                        }
                                                                        §§goto(addr349);
                                                                     }
                                                                     §§goto(addr620);
                                                                  }
                                                                  §§goto(addr304);
                                                               }
                                                               §§goto(addr306);
                                                            }
                                                            §§goto(addr620);
                                                         }
                                                         this.generateFrames(param1,param2,param5,param6,param7,param8,param9,param10,param11,param12,false,param13);
                                                         §§goto(addr624);
                                                      }
                                                      §§goto(addr272);
                                                   }
                                                   §§goto(addr268);
                                                }
                                                §§goto(addr624);
                                             }
                                             §§goto(addr272);
                                          }
                                          addr624:
                                          addr645:
                                          §§goto(addr647);
                                       }
                                       addr647:
                                       if(!this._wasAddedToStage)
                                       {
                                          if(param1.stage !== null)
                                          {
                                             param1.parent.removeChild(param1);
                                          }
                                       }
                                       return;
                                    }
                                    §§push(_loc14_);
                                    if(!_loc33_)
                                    {
                                       if(§§pop())
                                       {
                                          _stage.addChild(param1);
                                       }
                                       §§goto(addr182);
                                    }
                                    §§goto(addr268);
                                 }
                                 §§goto(addr244);
                              }
                              §§goto(addr250);
                           }
                           §§goto(addr141);
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr140);
                  }
                  §§goto(addr182);
               }
               §§goto(addr132);
            }
            §§goto(addr268);
         }
         §§goto(addr106);
      }
      
      public static function init(param1:Stage, param2:MovieClip = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            trace("Initializing ABD");
            if(!_loc4_)
            {
               §§goto(addr29);
            }
            §§goto(addr35);
         }
         addr29:
         trace(param1);
         if(!_loc4_)
         {
            addr35:
            _stage = param1;
            if(!_loc4_)
            {
               _root = param2;
            }
         }
      }
      
      protected function generateFrames(param1:MovieClip, param2:Boolean = true, param3:Number = 1, param4:Function = null, param5:* = null, param6:String = "", param7:Number = 1, param8:Function = null, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_)
         {
            var wep1:String = null;
            var wep2:String = null;
            var targetTotalFrames:int = 0;
            var targetColorTransform:ColorTransform = null;
            var bounds:Rectangle = null;
            if(_loc15_)
            {
               var bData:BitmapData = null;
               if(_loc15_)
               {
                  var mat:Matrix = null;
                  var i:Number = NaN;
                  var generateBitmaps:* = undefined;
                  var target:MovieClip = param1;
                  var instant:Boolean = param2;
                  if(!_loc14_)
                  {
                     var interval:Number = param3;
                     var endf:Function = param4;
                     var save:* = param5;
                     addr80:
                     var l:String = param6;
                     if(_loc15_)
                     {
                        var slowmult:Number = param7;
                        var eachframe:Function = param8;
                        addr91:
                        var splice:Boolean = param9;
                        if(!_loc14_)
                        {
                           var smooth:Boolean = param10;
                           var blit:Boolean = param11;
                           if(_loc15_)
                           {
                              var keepSplice:Boolean = param12;
                              if(_loc15_)
                              {
                                 var generation:* = function(param1:int):void
                                 {
                                    var _loc5_:Boolean = true;
                                    var _loc6_:Boolean = false;
                                    if(!_loc6_)
                                    {
                                       var fx:Vector.<String> = null;
                                       var fxn:int = 0;
                                       var fxi:int = 0;
                                       var FX:String = null;
                                       var fxmc:Object = null;
                                       if(_loc5_)
                                       {
                                          var fxp:Point = null;
                                          if(_loc5_)
                                          {
                                             var sn:int = 0;
                                             if(!_loc6_)
                                             {
                                                var si:int = 0;
                                                if(_loc5_)
                                                {
                                                   var synch:String = null;
                                                   var synchmc:MovieClip = null;
                                                   var j:int = 0;
                                                   var targetFilters:Array = null;
                                                   if(!_loc6_)
                                                   {
                                                      var targetFiltersLength:int = 0;
                                                      if(_loc5_)
                                                      {
                                                         var tmpBData:BitmapData = null;
                                                         var filterRect:Rectangle = null;
                                                         if(_loc5_)
                                                         {
                                                            var omat:Matrix = null;
                                                            var rec:Rectangle = null;
                                                            if(!_loc6_)
                                                            {
                                                               var bpn:int = 0;
                                                               var bpi:int = 0;
                                                               var aa:DisplayObject = null;
                                                               if(_loc5_)
                                                               {
                                                                  var b1:Bitmap = null;
                                                                  if(_loc5_)
                                                                  {
                                                                     addr112:
                                                                     var m:Matrix = null;
                                                                     var p:Point = null;
                                                                     if(!_loc6_)
                                                                     {
                                                                        var i2:int = param1;
                                                                        var synchronize:* = function(param1:MovieClip):void
                                                                        {
                                                                           var _loc5_:Boolean = true;
                                                                           var _loc6_:Boolean = false;
                                                                           if(!param1.startframe)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 param1.startframe = i2;
                                                                              }
                                                                           }
                                                                           var _loc2_:int = i2 - param1.startframe;
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(!param1.loop)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    param1.gotoAndStop(_loc2_ + 1);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       addr34:
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr34);
                                                                              }
                                                                              else
                                                                              {
                                                                                 trace("loops ");
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    param1.gotoAndStop(_loc2_ - param1.totalFrames * Math.floor(_loc2_ / param1.totalFrames) + 1);
                                                                                 }
                                                                              }
                                                                              var _loc3_:int = param1.numChildren;
                                                                              var _loc4_:int = 0;
                                                                              if(_loc5_)
                                                                              {
                                                                                 while(_loc4_ < _loc3_)
                                                                                 {
                                                                                    if(param1.getChildAt(_loc4_) is MovieClip)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          synchronize(param1.getChildAt(_loc4_));
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    _loc4_++;
                                                                                 }
                                                                              }
                                                                              return;
                                                                           }
                                                                           §§goto(addr34);
                                                                        };
                                                                        var isNow:int = target.currentFrame;
                                                                        target.gotoAndStop(i2);
                                                                        if(target.smc)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(!Data["f" + i2])
                                                                              {
                                                                                 addr150:
                                                                                 Data["f" + i2] = {};
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    addr159:
                                                                                    if(!Data["f" + (i2 + 1)])
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          Data["f" + (i2 + 1)] = {};
                                                                                          addr179:
                                                                                          Data["f" + i2].smc = Data["f" + (i2 + 1)].smc = new Point(target.smc.x,target.smc.y);
                                                                                          if(target.bag)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(!Data["f" + i2])
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      Data["f" + i2] = {};
                                                                                                      addr228:
                                                                                                      if(!Data["f" + (i2 + 1)])
                                                                                                      {
                                                                                                         Data["f" + (i2 + 1)] = {};
                                                                                                      }
                                                                                                      Data["f" + i2].bag = target.bag.transform.matrix;
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         §§push(wep1 !== null);
                                                                                                         §§push(wep1 !== null);
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  addr275:
                                                                                                                  if(target[wep1])
                                                                                                                  {
                                                                                                                     addr276:
                                                                                                                     Data["f" + i2][wep1] = target[wep1].transform.matrix;
                                                                                                                  }
                                                                                                                  §§push(wep2 !== null);
                                                                                                                  §§push(wep2 !== null);
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     addr297:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           addr306:
                                                                                                                           if(target[wep2])
                                                                                                                           {
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 Data["f" + i2][wep2] = target[wep2].transform.matrix;
                                                                                                                                 addr322:
                                                                                                                                 §§push(target.currentFrameLabel !== null);
                                                                                                                                 §§push(target.currentFrameLabel !== null);
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             addr346:
                                                                                                                                             if(target.currentFrameLabel.split("_")[0] == "FX")
                                                                                                                                             {
                                                                                                                                                if(!Data["f" + i2])
                                                                                                                                                {
                                                                                                                                                   Data["f" + i2] = {};
                                                                                                                                                }
                                                                                                                                                if(!Data["f" + (i2 + 1)])
                                                                                                                                                {
                                                                                                                                                   addr370:
                                                                                                                                                   Data["f" + (i2 + 1)] = {};
                                                                                                                                                   if(_loc5_)
                                                                                                                                                   {
                                                                                                                                                      addr382:
                                                                                                                                                      fx = Vector.<String>(target.currentFrameLabel.split("_"));
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         fxn = fx.length;
                                                                                                                                                         if(!_loc6_)
                                                                                                                                                         {
                                                                                                                                                            addr405:
                                                                                                                                                            fxi = 1;
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               loop7:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(fxi);
                                                                                                                                                                  §§push(fxn);
                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() >= §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           addr511:
                                                                                                                                                                           §§push(slowmult >= 2);
                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                    §§push(i2 - 1);
                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() % slowmult);
                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                          if(!_loc6_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() == §§pop());
                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr537:
                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         §§push(slowmult < 2);
                                                                                                                                                                                                         if(_loc5_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                               §§push(i2 / slowmult);
                                                                                                                                                                                                               if(!_loc6_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(1);
                                                                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr568:
                                                                                                                                                                                                                     §§push(Boolean(§§pop() % §§pop()));
                                                                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr573:
                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr580:
                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                 addr584:
                                                                                                                                                                                                                                 if(slowmult <= 1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr603:
                                                                                                                                                                                                                                    if(eachframe !== null)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       eachframe(target.parent);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(target.synchronize)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr614:
                                                                                                                                                                                                                                       sn = target.synchronize.length;
                                                                                                                                                                                                                                       si = 0;
                                                                                                                                                                                                                                       if(_loc5_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr625:
                                                                                                                                                                                                                                          loop3:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(si);
                                                                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(§§pop() < sn)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   synch = target.synchronize[si];
                                                                                                                                                                                                                                                   if(_loc5_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      synchmc = target[synch];
                                                                                                                                                                                                                                                      if(!_loc5_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(synchmc)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc6_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            synchronize(synchmc);
                                                                                                                                                                                                                                                            if(_loc6_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(si);
                                                                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() + 1);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   si = §§pop();
                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                bounds = target.getBounds(target.parent);
                                                                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   bounds.x = Math.floor(bounds.x);
                                                                                                                                                                                                                                                   addr694:
                                                                                                                                                                                                                                                   bounds.y = Math.floor(bounds.y);
                                                                                                                                                                                                                                                   bounds.height = Math.ceil(bounds.height) + 1;
                                                                                                                                                                                                                                                   bounds.width = Math.ceil(bounds.width) + 1;
                                                                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      var realBounds:Rectangle = new Rectangle(0,0,bounds.width + _margin * 2,bounds.height + _margin * 2);
                                                                                                                                                                                                                                                      if(_loc5_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(target.filters.length > 0)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            j = 0;
                                                                                                                                                                                                                                                            targetFilters = target.filters;
                                                                                                                                                                                                                                                            addr754:
                                                                                                                                                                                                                                                            targetFiltersLength = targetFilters.length;
                                                                                                                                                                                                                                                            addr760:
                                                                                                                                                                                                                                                            tmpBData = new BitmapData(realBounds.width,realBounds.height,true);
                                                                                                                                                                                                                                                            filterRect = tmpBData.generateFilterRect(tmpBData.rect,targetFilters[j]);
                                                                                                                                                                                                                                                            if(!_loc6_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr789:
                                                                                                                                                                                                                                                               tmpBData.dispose();
                                                                                                                                                                                                                                                               if(_loc5_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(j);
                                                                                                                                                                                                                                                                     break loop3;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr843:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr1244:
                                                                                                                                                                                                                                                               _allBounds[bData] = realBounds;
                                                                                                                                                                                                                                                               blend = target.blendMode;
                                                                                                                                                                                                                                                               if(_loc5_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1255:
                                                                                                                                                                                                                                                                  color = target.transform.colorTransform;
                                                                                                                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1262:
                                                                                                                                                                                                                                                                     tmpBData = null;
                                                                                                                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1268:
                                                                                                                                                                                                                                                                        bData = null;
                                                                                                                                                                                                                                                                        if(i >= targetTotalFrames)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(smooth)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 target.scaleX /= 1.75;
                                                                                                                                                                                                                                                                                 target.scaleY /= 1.75;
                                                                                                                                                                                                                                                                                 addr1291:
                                                                                                                                                                                                                                                                                 if(splice && !keepSplice)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    trace("REMOVE SPLICE");
                                                                                                                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1304:
                                                                                                                                                                                                                                                                                       bpn = target.numChildren;
                                                                                                                                                                                                                                                                                       if(_loc5_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          bpi = 0;
                                                                                                                                                                                                                                                                                          if(!_loc6_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1317:
                                                                                                                                                                                                                                                                                             loop2:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(bpi);
                                                                                                                                                                                                                                                                                                §§push(bpn);
                                                                                                                                                                                                                                                                                                addr1457:
                                                                                                                                                                                                                                                                                                addr1458:
                                                                                                                                                                                                                                                                                                while(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   aa = target.getChildAt(bpi);
                                                                                                                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(aa is Sprite);
                                                                                                                                                                                                                                                                                                      if(_loc5_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!§§pop())
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc5_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                                                                               §§push(aa is MovieClip);
                                                                                                                                                                                                                                                                                                               if(!_loc6_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr1347:
                                                                                                                                                                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop2;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  else if(aa.numChildren != 0)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(aa is AnimatedBitmap);
                                                                                                                                                                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop2;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           aa._destroyData = true;
                                                                                                                                                                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              aa.destroy();
                                                                                                                                                                                                                                                                                                                              §§push(bpn);
                                                                                                                                                                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    bpn = §§pop();
                                                                                                                                                                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop2;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr1445:
                                                                                                                                                                                                                                                                                                                                    §§push(bpi);
                                                                                                                                                                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr1449:
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() + 1);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 bpi = §§pop();
                                                                                                                                                                                                                                                                                                                                 continue loop2;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1449);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1399:
                                                                                                                                                                                                                                                                                                                           if(!(aa.getChildAt(0) is Bitmap))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§goto(addr1445);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              b1 = aa.getChildAt(0);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1445);
                                                                                                                                                                                                                                                                                                                        §§goto(addr1422);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1399);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1445);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1399);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1347);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1415);
                                                                                                                                                                                                                                                                                                   continue loop2;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr1458:
                                                                                                                                                                                                                                                                                                _stage.quality = _before;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1458);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr1510:
                                                                                                                                                                                                                                                                                       return;
                                                                                                                                                                                                                                                                                       addr1496:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr1468:
                                                                                                                                                                                                                                                                                    if(endf !== null)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(endf !== null)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1474:
                                                                                                                                                                                                                                                                                       endf();
                                                                                                                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1496);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(!instant)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1481:
                                                                                                                                                                                                                                                                                       target.removeEventListener(Event.ENTER_FRAME,generateBitmaps);
                                                                                                                                                                                                                                                                                       addr1486:
                                                                                                                                                                                                                                                                                       if(!instant)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(interval <= 1)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             i += interval;
                                                                                                                                                                                                                                                                                             §§goto(addr1496);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             var _loc3_:*;
                                                                                                                                                                                                                                                                                             var _loc4_:* = (_loc3_ = §§findproperty(i)).i + 1;
                                                                                                                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc3_.i = _loc4_;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1510);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1486);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1458);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1291);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr1461:
                                                                                                                                                                                                                                                                           trace(_stage.quality);
                                                                                                                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr1468);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1510);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1486);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1291);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1510);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1268);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1010:
                                                                                                                                                                                                                                                            lastg = i2;
                                                                                                                                                                                                                                                            if(_loc5_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1016:
                                                                                                                                                                                                                                                               §§push(!splice);
                                                                                                                                                                                                                                                               if(!_loc6_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1024:
                                                                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1030:
                                                                                                                                                                                                                                                                           if(!blit)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              bData.draw(target,mat,!!_preserveColor ? targetColorTransform : null,target.blendMode,null,false);
                                                                                                                                                                                                                                                                              addr1031:
                                                                                                                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1211:
                                                                                                                                                                                                                                                                                 target.x = opos.x;
                                                                                                                                                                                                                                                                                 addr1216:
                                                                                                                                                                                                                                                                                 target.y = opos.y;
                                                                                                                                                                                                                                                                                 var opos:Point = null;
                                                                                                                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    _allBitmaps.push(bData);
                                                                                                                                                                                                                                                                                    realBounds.offset(-_x - _margin,-_y - _margin);
                                                                                                                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr1244);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1262);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1461);
                                                                                                                                                                                                                                                                                 addr1200:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1474);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else if(splice)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1055:
                                                                                                                                                                                                                                                                                 omat = target.transform.matrix;
                                                                                                                                                                                                                                                                                 rec = target.getBounds(target.parent);
                                                                                                                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1071:
                                                                                                                                                                                                                                                                                    bpn = target.numChildren;
                                                                                                                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1079:
                                                                                                                                                                                                                                                                                       bpi = 0;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    loop0:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(bpi);
                                                                                                                                                                                                                                                                                       addr1195:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(bpn);
                                                                                                                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             break loop7;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          break loop0;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1457);
                                                                                                                                                                                                                                                                                    addr1193:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1468);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1244);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1200);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1268);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1030);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1291);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1071);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr861:
                                                                                                                                                                                                                                                         realBounds.offset(bounds.x,bounds.y);
                                                                                                                                                                                                                                                         realBounds.width = Math.max(realBounds.width,1);
                                                                                                                                                                                                                                                         realBounds.height = Math.max(realBounds.height,1);
                                                                                                                                                                                                                                                         if(_loc5_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            bData = new BitmapData(realBounds.width,realBounds.height,true,0);
                                                                                                                                                                                                                                                            mat = target.transform.matrix;
                                                                                                                                                                                                                                                            addr905:
                                                                                                                                                                                                                                                            mat.translate(-realBounds.x + _margin,-realBounds.y + _margin);
                                                                                                                                                                                                                                                            opos = new Point(target.x,target.y);
                                                                                                                                                                                                                                                            target.x = 0;
                                                                                                                                                                                                                                                            target.y = 0;
                                                                                                                                                                                                                                                            addr938:
                                                                                                                                                                                                                                                            §§push(slowmult >= 2);
                                                                                                                                                                                                                                                            if(slowmult >= 2)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc5_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr945:
                                                                                                                                                                                                                                                                     §§push(i2 - 1);
                                                                                                                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr951:
                                                                                                                                                                                                                                                                        §§push(§§pop() % slowmult);
                                                                                                                                                                                                                                                                        §§push(0);
                                                                                                                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr957:
                                                                                                                                                                                                                                                                           §§push(Boolean(§§pop() == §§pop()));
                                                                                                                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr962:
                                                                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr966:
                                                                                                                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr974:
                                                                                                                                                                                                                                                                                       §§push(slowmult < 2);
                                                                                                                                                                                                                                                                                       §§push(slowmult < 2);
                                                                                                                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr978:
                                                                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr981:
                                                                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                                                                addr985:
                                                                                                                                                                                                                                                                                                §§push(slowmult > 1);
                                                                                                                                                                                                                                                                                                if(slowmult > 1)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                                                                                                                   if(_loc5_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr999:
                                                                                                                                                                                                                                                                                                      §§push(Boolean(i2 / slowmult % 1));
                                                                                                                                                                                                                                                                                                      §§push(Boolean(i2 / slowmult % 1));
                                                                                                                                                                                                                                                                                                      if(_loc5_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1004:
                                                                                                                                                                                                                                                                                                         if(!§§pop())
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1005:
                                                                                                                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                                                                                                                            addr1009:
                                                                                                                                                                                                                                                                                                            if(slowmult <= 1)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§goto(addr1010);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               bData = _allBitmaps[i2 - 2];
                                                                                                                                                                                                                                                                                                               if(!_loc6_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr1211);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1481);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1009);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1291);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1255);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr999);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1024);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr985);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1458);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr999);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1004);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr981);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr999);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1468);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1005);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr957);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1055);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1304);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1244);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1296);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() + 1);
                                                                                                                                                                                                                                             §§push(§§pop() + 1);
                                                                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                                                                                                                                if(_loc6_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                break loop7;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             j = §§pop();
                                                                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(§§pop() < targetFiltersLength)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   tmpBData = new BitmapData(filterRect.width,filterRect.height,true,0);
                                                                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      filterRect = tmpBData.generateFilterRect(tmpBData.rect,targetFilters[j]);
                                                                                                                                                                                                                                                      if(!_loc5_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      realBounds = realBounds.union(filterRect);
                                                                                                                                                                                                                                                      if(_loc6_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   tmpBData.dispose();
                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr861);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1195);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr754);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr679);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    trace("SKIP " + i2 + " " + slowmult);
                                                                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       target.gotoAndStop(isNow);
                                                                                                                                                                                                                                       §§goto(addr603);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1079);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1005);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr584);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr966);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr974);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr999);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr568);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr962);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr573);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr938);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr584);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr999);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr568);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr951);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr580);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr537);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr580);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1211);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§newactivation());
                                                                                                                                                                        §§push(fx[fxi]);
                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().§§slot[9] = §§pop();
                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           fxmc = target.fx;
                                                                                                                                                                           if(target["fx" + fxi])
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr440:
                                                                                                                                                                                 fxmc = target["fx" + fxi];
                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr451:
                                                                                                                                                                                    fxp = new Point(fxmc.x,fxmc.y);
                                                                                                                                                                                    Data["f" + i2][fxmc.name] = Data["f" + (i2 + 1)][fxmc.name] = fxp;
                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(fxi);
                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + 1);
                                                                                                                                                                                 }
                                                                                                                                                                                 fxi = §§pop();
                                                                                                                                                                              }
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr451);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr440);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() >= §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1211);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     aa = target.getChildAt(bpi);
                                                                                                                                                                     if(aa.numChildren == 0)
                                                                                                                                                                     {
                                                                                                                                                                        addr1184:
                                                                                                                                                                        §§push(bpi);
                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() + 1);
                                                                                                                                                                        }
                                                                                                                                                                        bpi = §§pop();
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        b1 = aa.getChildAt(0);
                                                                                                                                                                        if(!(b1 is Bitmap))
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1184);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           m = b1.transform.matrix;
                                                                                                                                                                           m.concat(aa.transform.matrix);
                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              m.concat(omat);
                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 p = new Point(m.tx - rec.x,m.ty - rec.y);
                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    m.tx = p.x;
                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1165:
                                                                                                                                                                                       m.ty = p.y;
                                                                                                                                                                                    }
                                                                                                                                                                                    bData.draw(b1.bitmapData,m,null,null,null,true);
                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1193);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1165);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1184);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1165);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1071);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1016);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr694);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1244);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1317);
                                                                                                                                                }
                                                                                                                                                §§goto(addr382);
                                                                                                                                             }
                                                                                                                                             §§goto(addr511);
                                                                                                                                          }
                                                                                                                                          §§goto(addr603);
                                                                                                                                       }
                                                                                                                                       §§goto(addr962);
                                                                                                                                    }
                                                                                                                                    §§goto(addr346);
                                                                                                                                 }
                                                                                                                                 §§goto(addr978);
                                                                                                                              }
                                                                                                                              §§goto(addr760);
                                                                                                                           }
                                                                                                                           §§goto(addr322);
                                                                                                                        }
                                                                                                                        §§goto(addr957);
                                                                                                                     }
                                                                                                                     §§goto(addr306);
                                                                                                                  }
                                                                                                                  §§goto(addr978);
                                                                                                               }
                                                                                                               §§goto(addr1468);
                                                                                                            }
                                                                                                            §§goto(addr275);
                                                                                                         }
                                                                                                         §§goto(addr297);
                                                                                                      }
                                                                                                      §§goto(addr1216);
                                                                                                   }
                                                                                                   §§goto(addr370);
                                                                                                }
                                                                                                §§goto(addr228);
                                                                                             }
                                                                                             §§goto(addr1458);
                                                                                          }
                                                                                          §§goto(addr322);
                                                                                       }
                                                                                       §§goto(addr945);
                                                                                    }
                                                                                    §§goto(addr179);
                                                                                 }
                                                                                 §§goto(addr625);
                                                                              }
                                                                              §§goto(addr159);
                                                                           }
                                                                           §§goto(addr861);
                                                                        }
                                                                        §§goto(addr179);
                                                                     }
                                                                     §§goto(addr405);
                                                                  }
                                                                  §§goto(addr1031);
                                                               }
                                                            }
                                                            §§goto(addr905);
                                                         }
                                                         §§goto(addr603);
                                                      }
                                                      §§goto(addr614);
                                                   }
                                                   §§goto(addr905);
                                                }
                                                §§goto(addr1031);
                                             }
                                             §§goto(addr112);
                                          }
                                          §§goto(addr276);
                                       }
                                       §§goto(addr789);
                                    }
                                    §§goto(addr150);
                                 };
                                 if(!_loc14_)
                                 {
                                    _stage.quality = this._quality;
                                    this._x = target.x;
                                    if(_loc15_)
                                    {
                                       addr130:
                                       this._y = target.y;
                                       wep1 = null;
                                       if(!_loc14_)
                                       {
                                          wep2 = null;
                                          if(target.bag)
                                          {
                                             if(_loc15_)
                                             {
                                                addr152:
                                                if(target.wep)
                                                {
                                                   if(!_loc14_)
                                                   {
                                                      wep1 = "wep";
                                                      addr169:
                                                      if(target.wep1)
                                                      {
                                                         wep1 = "wep1";
                                                         if(_loc15_)
                                                         {
                                                            addr178:
                                                            if(target.weapon)
                                                            {
                                                               wep1 = "weapon";
                                                               addr185:
                                                               if(target.weapon1)
                                                               {
                                                                  if(_loc15_)
                                                                  {
                                                                     addr191:
                                                                     wep1 = "weapon1";
                                                                     addr194:
                                                                     if(target.wep2)
                                                                     {
                                                                        wep2 = "wep2";
                                                                        addr201:
                                                                        if(target.weapon2)
                                                                        {
                                                                           if(!_loc14_)
                                                                           {
                                                                              wep2 = "weapon2";
                                                                              addr210:
                                                                              if(target.shield)
                                                                              {
                                                                                 addr214:
                                                                                 wep2 = "shield";
                                                                                 addr217:
                                                                                 §§push(smooth);
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       target.scaleX *= 1.75;
                                                                                       target.scaleY *= 1.75;
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          §§goto(addr242);
                                                                                       }
                                                                                       §§goto(addr315);
                                                                                    }
                                                                                    §§goto(addr242);
                                                                                 }
                                                                                 §§goto(addr270);
                                                                              }
                                                                              §§goto(addr217);
                                                                           }
                                                                           §§goto(addr261);
                                                                        }
                                                                        §§goto(addr210);
                                                                     }
                                                                     §§goto(addr201);
                                                                  }
                                                                  §§goto(addr330);
                                                               }
                                                               §§goto(addr194);
                                                            }
                                                            §§goto(addr185);
                                                         }
                                                         §§goto(addr201);
                                                      }
                                                      §§goto(addr178);
                                                   }
                                                   addr242:
                                                   targetTotalFrames = target.totalFrames;
                                                   if(!_loc14_)
                                                   {
                                                      addr251:
                                                      targetColorTransform = target.transform.colorTransform;
                                                      if(!_loc14_)
                                                      {
                                                         addr261:
                                                         i = 0;
                                                         var lastg:int = 0;
                                                         addr270:
                                                         if(instant)
                                                         {
                                                            if(_loc15_)
                                                            {
                                                               §§goto(addr273);
                                                            }
                                                            §§goto(addr330);
                                                         }
                                                         else
                                                         {
                                                            generateBitmaps = function(param1:Event):void
                                                            {
                                                               var _loc6_:Boolean = true;
                                                               var _loc7_:Boolean = false;
                                                               var _loc2_:* = NaN;
                                                               var _loc3_:* = 0;
                                                               var _loc4_:* = 0;
                                                               var _loc5_:* = 0;
                                                               if(interval <= 1)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(i % 1);
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§goto(addr26);
                                                                        }
                                                                        §§goto(addr40);
                                                                     }
                                                                     addr26:
                                                                     _loc2_ = §§pop();
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(int(Math.ceil(i)));
                                                                        if(_loc6_)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           if(_loc6_)
                                                                           {
                                                                              addr40:
                                                                              if(_loc2_)
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    i += interval;
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§goto(addr52);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 generation(i);
                                                                                 §§goto(addr108);
                                                                              }
                                                                              §§goto(addr108);
                                                                           }
                                                                           addr84:
                                                                           loop0:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_);
                                                                              addr104:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 addr105:
                                                                                 while(§§pop() < §§pop() + interval)
                                                                                 {
                                                                                    if(i > target.totalFrames)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       generation(i);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                    }
                                                                                    _loc5_++;
                                                                                    continue loop0;
                                                                                 }
                                                                                 §§goto(addr108);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr104);
                                                                     }
                                                                     addr52:
                                                                     if(i > _loc3_)
                                                                     {
                                                                        i = _loc3_;
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr108);
                                                               }
                                                               else
                                                               {
                                                                  §§push(int(i));
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc6_)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                           if(!_loc6_)
                                                                           {
                                                                           }
                                                                           §§goto(addr104);
                                                                        }
                                                                        _loc5_ = §§pop();
                                                                        if(_loc6_)
                                                                        {
                                                                           §§goto(addr84);
                                                                        }
                                                                        addr108:
                                                                        return;
                                                                     }
                                                                     §§goto(addr105);
                                                                  }
                                                               }
                                                               §§goto(addr104);
                                                            };
                                                         }
                                                         §§goto(addr315);
                                                      }
                                                      §§goto(addr330);
                                                   }
                                                   addr273:
                                                   while(true)
                                                   {
                                                      §§push(i);
                                                      if(_loc15_)
                                                      {
                                                         §§push(§§pop() + 1);
                                                         if(_loc14_)
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                      §§push(§§pop());
                                                      if(!_loc14_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      i = §§pop();
                                                   }
                                                   if(!_loc15_)
                                                   {
                                                      addr315:
                                                      i = 1;
                                                      target.addEventListener(Event.ENTER_FRAME,generateBitmaps);
                                                   }
                                                   if(target.synchronize)
                                                   {
                                                      addr330:
                                                      trace(target.synchronize);
                                                      §§goto(addr335);
                                                   }
                                                   addr335:
                                                   return;
                                                }
                                                §§goto(addr169);
                                             }
                                             §§goto(addr261);
                                          }
                                          §§goto(addr217);
                                       }
                                       §§goto(addr178);
                                    }
                                    §§goto(addr251);
                                 }
                                 §§goto(addr152);
                              }
                              §§goto(addr191);
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr315);
                     }
                     §§goto(addr214);
                  }
                  §§goto(addr185);
               }
               §§goto(addr210);
            }
            §§goto(addr91);
         }
         §§goto(addr80);
      }
      
      public function getBounds(param1:BitmapData) : Rectangle
      {
         return this._allBounds[param1];
      }
      
      public function getFrame(param1:Number) : BitmapData
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(Number(Math.round(param1)));
            if(_loc2_)
            {
               param1 = §§pop();
               if(_loc2_)
               {
                  §§push(param1);
                  if(!_loc3_)
                  {
                     if(§§pop() >= this._allBitmaps.length)
                     {
                        if(_loc2_)
                        {
                           addr52:
                           §§push(param1);
                           if(_loc2_)
                           {
                              addr55:
                              §§push(§§pop() - 1);
                              if(_loc2_)
                              {
                                 addr58:
                                 §§push(Number(§§pop()));
                              }
                              param1 = §§pop();
                              if(!_loc3_)
                              {
                                 addr62:
                                 if(this._allBitmaps)
                                 {
                                    return this._allBitmaps[param1];
                                 }
                              }
                           }
                           §§goto(addr58);
                        }
                        return null;
                     }
                     §§goto(addr62);
                  }
                  §§goto(addr58);
               }
               §§goto(addr62);
            }
            §§goto(addr55);
         }
         §§goto(addr52);
      }
      
      public function getBlend(param1:uint) : String
      {
         return this.blend;
      }
      
      public function getColor(param1:uint) : ColorTransform
      {
         return this.color;
      }
      
      public function get totalFrames() : int
      {
         return this._totalFrames;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this._y;
      }
      
      public function get currentLabels() : Array
      {
         return this._currentLabels;
      }
      
      public function destroy() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BitmapData = null;
         if(!_loc4_)
         {
            this.Data = null;
            if(_loc3_)
            {
               addr27:
               if(this._allBitmaps != null)
               {
                  var _loc1_:* = int(this._allBitmaps.length);
                  if(_loc3_)
                  {
                     while(true)
                     {
                        §§push(_loc1_);
                        if(!_loc4_)
                        {
                           §§push(§§pop());
                           if(_loc3_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc1_ = §§pop();
                        }
                        if(!§§pop())
                        {
                           break;
                        }
                        _loc2_ = this._allBitmaps[_loc1_];
                        if(!_loc4_)
                        {
                           _loc2_.dispose();
                           if(!_loc3_)
                           {
                              continue;
                           }
                        }
                        this._allBitmaps[_loc1_] = null;
                     }
                     if(_loc3_)
                     {
                        this._allBitmaps = null;
                        if(!_loc4_)
                        {
                           this._allBounds = null;
                           if(_loc3_)
                           {
                              this._destroyed = true;
                              if(!_loc3_)
                              {
                              }
                              §§goto(addr109);
                           }
                           trace("Destroyed bitmap data");
                        }
                     }
                  }
                  addr109:
                  return;
               }
            }
            return;
         }
         §§goto(addr27);
      }
      
      public function get destroyed() : Boolean
      {
         return this._destroyed;
      }
   }
}
