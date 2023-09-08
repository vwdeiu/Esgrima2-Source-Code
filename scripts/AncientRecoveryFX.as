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
   
   public dynamic class AncientRecoveryFX extends MovieClip
   {
       
      
      public function AncientRecoveryFX()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(!_loc1_)
            {
               addFrameScript(0,this.frame1,63,this.frame64);
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.blendMode = BlendMode.ADD;
            if(_loc1_)
            {
               addr25:
               this.filters = [new BlurFilter(5,2,1)];
            }
            return;
         }
         §§goto(addr25);
      }
      
      function frame64() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            stop();
            if(_loc2_)
            {
               addr24:
               root.q.remove(this);
            }
            return;
         }
         §§goto(addr24);
      }
   }
}
