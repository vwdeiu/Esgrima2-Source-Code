package Esgrima2_fla
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
   
   public dynamic class colors_544 extends MovieClip
   {
       
      
      public var colors:Vector.<uint>;
      
      public var i:int;
      
      public var mc:MovieClip;
      
      public function colors_544()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(!_loc1_)
            {
               addr22:
               addFrameScript(0,this.frame1);
            }
            return;
         }
         §§goto(addr22);
      }
      
      public function select(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BitmapData = new BitmapData(param1.target.width,param1.target.height);
         if(!_loc4_)
         {
            _loc2_.draw(param1.target);
            if(_loc3_)
            {
               MovieClip(parent.parent).pskin = _loc2_.getPixel(1,1);
               if(!_loc4_)
               {
                  MovieClip(parent.parent).skinmc.colormc.gotoAndStop(param1.target.colormc.currentFrame);
                  addr53:
                  if(_loc3_)
                  {
                     §§goto(addr74);
                  }
                  §§goto(addr80);
               }
            }
            addr74:
            trace(param1.target);
            if(!_loc4_)
            {
               addr80:
               MovieClip(parent.parent).generateSkin();
            }
            return;
         }
         §§goto(addr53);
      }
      
      function frame1() : *
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.colors = Vector.<uint>([14795419,11643807,4138520,3355443]);
            if(!_loc4_)
            {
               this.i = 0;
               if(!_loc4_)
               {
                  while(this.i < numChildren)
                  {
                     this.mc = getChildAt(this.i) as MovieClip;
                     if(_loc3_)
                     {
                        this.mc.colormc.gotoAndStop(MovieClip(parent.parent).classS);
                        if(_loc3_)
                        {
                           this.mc.colormc.gotoAndStop(this.mc.colormc.currentFrame + this.i);
                           if(_loc4_)
                           {
                              continue;
                           }
                        }
                        var _loc1_:*;
                        §§push((_loc1_ = this).i);
                        if(_loc3_)
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
                  if(!_loc4_)
                  {
                     addr111:
                     addEventListener(MouseEvent.MOUSE_DOWN,this.select);
                  }
                  return;
               }
            }
         }
         §§goto(addr111);
      }
   }
}
