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
   
   public dynamic class createbg_510 extends MovieClip
   {
       
      
      public var skintxt:TextField;
      
      public var charcreatetxt:TextField;
      
      public var stattxt:TextField;
      
      public var facetxt:TextField;
      
      public function createbg_510()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               addFrameScript(0,this.frame1);
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.charcreatetxt.text = root.getTxt("Character creation",this.charcreatetxt);
         if(!_loc2_)
         {
            this.facetxt.text = root.getTxt("Face",this.facetxt);
            this.skintxt.text = root.getTxt("Skin color",this.skintxt);
            this.stattxt.text = root.getTxt("Stat points",this.stattxt);
            if(_loc1_)
            {
               trace(parent.statr);
               addChild(MovieClip(parent).statr);
               MovieClip(parent).statr.x = 73;
            }
            MovieClip(parent).statr.y = 345;
            cacheAsBitmap = true;
            mouseEnabled = false;
         }
      }
   }
}
