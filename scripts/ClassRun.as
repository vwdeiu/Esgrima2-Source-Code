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
   
   public dynamic class ClassRun extends MovieClip
   {
       
      
      public var a:MovieClip;
      
      public var lockspawn:Point;
      
      public function ClassRun()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(!_loc2_)
            {
               addFrameScript(0,this.frame1);
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.lockspawn = new Point(2.25,-235);
            if(!_loc1_)
            {
               addr26:
               stop();
            }
            return;
         }
         §§goto(addr26);
      }
   }
}
