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
   
   public dynamic class LoaderMC extends MovieClip
   {
       
      
      public var loadbar:MovieClip;
      
      public var cancelbtn:SimpleButton;
      
      public var mc2:MovieClip;
      
      public var loadtxt:TextField;
      
      public var bg:MovieClip;
      
      public var mc:MovieClip;
      
      public var b1:AnimatedBitmap;
      
      public var b2:AnimatedBitmap;
      
      public function LoaderMC()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               addr23:
               addFrameScript(0,this.frame1);
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(this.b1)
         {
            this.b1.stop();
            if(_loc1_)
            {
               this.b1.destroy();
               if(!_loc2_)
               {
                  §§goto(addr43);
               }
               §§goto(addr48);
            }
         }
         addr43:
         if(this.b2)
         {
            if(!_loc2_)
            {
               addr48:
               this.b2.stop();
               this.b2.destroy();
            }
         }
         this.b1 = null;
         if(_loc1_)
         {
            this.b2 = null;
         }
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.b1 = MovieClip(root).q.rasterize(this.mc2.mc);
         if(!_loc2_)
         {
            this.b2 = MovieClip(root).q.rasterize(this.mc.mc);
            if(_loc1_)
            {
               this.b1._destroyData = true;
               this.b2._destroyData = true;
               root.translateButtons(this);
               while(this.bg.numChildren > 0)
               {
                  root.q.remove(this.bg.getChildAt(0));
               }
               if(_loc1_)
               {
                  this.bg.addChild(root.loadscreensl);
                  if(_loc1_)
                  {
                     root.translateTexts(root.loadscreensl);
                     if(_loc1_)
                     {
                        root.q.raster(this.bg);
                        if(!_loc1_)
                        {
                        }
                        §§goto(addr120);
                     }
                     while(this.bg.numChildren > 0)
                     {
                        root.q.remove(this.bg.getChildAt(0));
                     }
                     if(_loc1_)
                     {
                        §§goto(addr120);
                     }
                  }
               }
            }
            §§goto(addr120);
         }
         addr120:
         this.bg = null;
      }
   }
}
