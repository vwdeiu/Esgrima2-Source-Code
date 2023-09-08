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
   
   public dynamic class MaestroBuff extends MovieClip
   {
       
      
      public function MaestroBuff()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(_loc1_)
            {
               addFrameScript(35,this.frame36);
            }
         }
      }
      
      function frame36() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            root.q.remove(this);
            if(!_loc2_)
            {
               stop();
            }
         }
      }
   }
}
