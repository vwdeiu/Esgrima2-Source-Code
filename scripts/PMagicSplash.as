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
   
   public dynamic class PMagicSplash extends MovieClip
   {
       
      
      public var splash1:MovieClip;
      
      public var splash4:MovieClip;
      
      public var synchronize:Vector.<String>;
      
      public var b:AnimatedBitmap;
      
      public function PMagicSplash()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(_loc1_)
            {
               addFrameScript(0,this.frame1,22,this.frame23);
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.synchronize = Vector.<String>(["splash1","splash4"]);
         if(!_loc2_)
         {
            if(this.root)
            {
               addr38:
               if(!root.splashpurpleFX)
               {
                  root.splashpurpleFX = new AnimatedBitmapData(this);
                  if(!_loc2_)
                  {
                     root.q.remove(this);
                     return;
                  }
               }
               else
               {
                  this.b = new AnimatedBitmap(root.splashpurpleFX,Event.ENTER_FRAME,60);
                  this.b.destroyAtEnd = true;
                  this.b.replace(this);
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      function frame23() : *
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
