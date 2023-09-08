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
   
   public dynamic class FailedConnect extends MovieClip
   {
       
      
      public var errortxt:FailedConnect;
      
      public var retrybtn:SimpleButton;
      
      public function FailedConnect()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(!_loc1_)
            {
               addFrameScript(0,this.frame1);
            }
         }
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            x = -42.05;
            if(!_loc1_)
            {
               this.errortxt.text = root.getTxt("ConnectError",this.errortxt);
            }
         }
      }
      
      function frame1() : *
      {
      }
   }
}
