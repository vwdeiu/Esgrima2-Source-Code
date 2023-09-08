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
   
   public dynamic class ClericBall extends MovieClip
   {
       
      
      public var ball:MovieClip;
      
      public var synchronize:Vector.<String>;
      
      public function ClericBall()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.synchronize = Vector.<String>(["ball"]);
            if(_loc1_)
            {
               addr28:
               this.blendMode = BlendMode.ADD;
            }
            return;
         }
         §§goto(addr28);
      }
   }
}
