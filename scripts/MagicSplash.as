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
   import fr.kouma.display.*;
   
   public dynamic class MagicSplash extends MovieClip
   {
       
      
      public var splash1:MovieClip;
      
      public var splash4:MovieClip;
      
      public var synchronize:Vector.<String>;
      
      public var b:AnimatedBitmap;
      
      public function MagicSplash()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(!_loc1_)
            {
               addFrameScript(0,this.frame1,22,this.frame23);
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.synchronize = Vector.<String>(["splash1","splash4"]);
         if(this.root)
         {
            if(!_loc1_)
            {
               if(!root.splashFX)
               {
                  root.splashFX = new AnimatedBitmapData(this);
                  root.q.remove(this);
               }
               else
               {
                  this.b = new AnimatedBitmap(root.splashFX,Event.ENTER_FRAME,60);
                  if(!_loc1_)
                  {
                     this.b.destroyAtEnd = true;
                     this.b.replace(this);
                  }
                  §§goto(addr77);
               }
            }
            return;
         }
         addr77:
      }
      
      function frame23() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            stop();
            if(_loc2_)
            {
               trace("End of splash");
            }
         }
      }
   }
}
