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
   
   public dynamic class elementlist_952 extends MovieClip
   {
       
      
      public var beasttxt:TextField;
      
      public var lightningtxt:TextField;
      
      public var mechanictxt:TextField;
      
      public var icetxt:TextField;
      
      public var darknesstxt:TextField;
      
      public var lighttxt:TextField;
      
      public var watertxt:TextField;
      
      public var firetxt:TextField;
      
      public var earthtxt:TextField;
      
      public var bg:MovieClip;
      
      public var planttxt:TextField;
      
      public var flyingtxt:TextField;
      
      public function elementlist_952()
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
         if(_loc1_)
         {
            root.translateTexts(this);
            if(!_loc2_)
            {
               root.q.raster(this.bg);
            }
         }
      }
   }
}
