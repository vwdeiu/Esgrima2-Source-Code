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
   
   public dynamic class you_1694 extends MovieClip
   {
       
      
      public var bg:MovieClip;
      
      public var b:Bitmap;
      
      public function you_1694()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(_loc1_)
            {
               addr22:
               addFrameScript(0,this.frame1,1,this.frame2);
            }
            return;
         }
         §§goto(addr22);
      }
      
      public function raster() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.bg.init();
            if(_loc2_)
            {
               this.b = root.q.raster(this.bg);
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            gotoAndStop(parent.frame);
            if(_loc1_)
            {
               addr24:
               this.raster();
            }
            return;
         }
         §§goto(addr24);
      }
      
      function frame2() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.raster();
         }
      }
   }
}
