package
{
   import Esgrima2_fla.*;
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
   import playerio.*;
   
   public dynamic class ResurrectedAnim extends MovieClip
   {
       
      
      public function ResurrectedAnim()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(_loc2_)
            {
               addr23:
               addFrameScript(0,this.frame1,72,this.frame73);
            }
            return;
         }
         §§goto(addr23);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            x = 396.65;
            if(_loc2_)
            {
               y = 155.75;
            }
         }
      }
      
      function frame73() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            root.q.remove(this);
            if(_loc2_)
            {
               stop();
            }
         }
      }
   }
}
