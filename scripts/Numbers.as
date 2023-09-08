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
   
   public dynamic class Numbers extends MovieClip
   {
       
      
      public var perc:MovieClip;
      
      public var txt:TextField;
      
      public var val:String;
      
      public function Numbers()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               addr30:
               addFrameScript(0,this.frame1,5,this.frame6,26,this.frame27,27,this.frame28);
            }
            return;
         }
         §§goto(addr30);
      }
      
      public function generate(param1:Stage = null) : Bitmap
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc6_:MovieClip = null;
         var _loc7_:Point = null;
         var _loc8_:Point = null;
         var _loc9_:Point = null;
         var _loc10_:int = 0;
         var _loc11_:MovieClip = null;
         var _loc12_:* = 0;
         var _loc13_:Class = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         if(_loc16_)
         {
            if(param1 == null)
            {
               if(_loc16_)
               {
                  if(stage === null)
                  {
                     return;
                  }
                  if(_loc16_)
                  {
                     _stage = stage;
                     if(!_loc17_)
                     {
                        addr70:
                        if(numChildren >= 1)
                        {
                           var _loc2_:DisplayObject = getChildAt(0);
                           if(_loc16_)
                           {
                              if(_loc2_ is MovieClip)
                              {
                                 if(!_loc17_)
                                 {
                                    addr88:
                                    _loc6_ = _loc2_ as MovieClip;
                                    _loc7_ = new Point(_loc6_.scaleX,_loc6_.scaleY);
                                    _loc8_ = new Point(_loc6_.width,_loc6_.height);
                                    _loc9_ = new Point(_loc6_.x,_loc6_.y);
                                    if(_loc16_)
                                    {
                                       removeChild(_loc6_);
                                    }
                                    _loc6_ = null;
                                    if(!_loc17_)
                                    {
                                       _loc10_ = this.val.length;
                                       if(!_loc17_)
                                       {
                                          addr136:
                                          trace("Generating " + this.val);
                                       }
                                       _loc11_ = null;
                                       if(!_loc17_)
                                       {
                                          §§push(0);
                                          if(!_loc17_)
                                          {
                                             _loc12_ = §§pop();
                                             if(_loc16_)
                                             {
                                                addr155:
                                                loop1:
                                                while(true)
                                                {
                                                   §§push(_loc12_);
                                                   addr233:
                                                   while(§§pop() < _loc10_)
                                                   {
                                                      _loc14_ = new (_loc13_ = getDefinitionByName(currentFrameLabel) as Class)() as MovieClip;
                                                      if(_loc11_ == null)
                                                      {
                                                         _loc11_ = _loc14_;
                                                      }
                                                      _loc15_ = int(this.val.charAt(_loc12_));
                                                      if(_loc16_)
                                                      {
                                                         _loc14_.gotoAndStop(_loc15_ + 1);
                                                         _loc14_.x = _loc9_.x + _loc12_ * _loc8_.x;
                                                         if(_loc16_)
                                                         {
                                                            _loc14_.y = _loc9_.y;
                                                         }
                                                         addChild(_loc14_);
                                                         _loc14_.scaleX = _loc7_.x;
                                                         _loc14_.scaleY = _loc7_.y;
                                                      }
                                                      _loc11_ = _loc14_;
                                                      if(!_loc17_)
                                                      {
                                                         _loc12_++;
                                                      }
                                                      continue loop1;
                                                   }
                                                   if(!_loc17_)
                                                   {
                                                      if(this.perc)
                                                      {
                                                         if(!_loc16_)
                                                         {
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr250);
                                                }
                                             }
                                             this.perc.x = _loc11_.x + _loc8_.x;
                                             addr250:
                                             if(this.txt)
                                             {
                                                if(!_loc17_)
                                                {
                                                   this.txt.text = root.getTxt(this.txt.text);
                                                }
                                             }
                                             §§goto(addr264);
                                          }
                                          §§goto(addr233);
                                       }
                                       §§goto(addr155);
                                    }
                                    §§goto(addr136);
                                 }
                                 addr264:
                                 var _loc3_:Rectangle = getBounds(this);
                                 var _loc4_:Bitmap = new Bitmap(null,"auto",true);
                                 var _loc5_:BitmapData = new BitmapData(width,height,true,0);
                                 if(!_loc17_)
                                 {
                                    _stage.quality = "high";
                                    if(!_loc17_)
                                    {
                                       §§goto(addr291);
                                    }
                                    §§goto(addr316);
                                 }
                                 addr291:
                                 _loc5_.draw(this,new Matrix(1,0,0,1,-_loc3_.x,-_loc3_.y));
                                 if(!_loc17_)
                                 {
                                    addr316:
                                    _stage.quality = "low";
                                    if(_loc16_)
                                    {
                                       _loc4_.bitmapData = _loc5_;
                                    }
                                 }
                                 _loc5_ = null;
                                 if(_loc16_)
                                 {
                                    _stage = null;
                                 }
                                 param1 = null;
                                 return _loc4_;
                              }
                              §§goto(addr250);
                           }
                           §§goto(addr88);
                        }
                     }
                  }
               }
               §§goto(addr70);
            }
            else
            {
               _stage = param1;
               if(!_loc17_)
               {
                  §§goto(addr70);
               }
            }
            return null;
         }
         §§goto(addr70);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            stop();
         }
      }
      
      function frame6() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            stop();
         }
      }
      
      function frame27() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            root.addChild(new ResurrectedAnim() as MovieClip);
         }
      }
      
      function frame28() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            stop();
         }
      }
   }
}
