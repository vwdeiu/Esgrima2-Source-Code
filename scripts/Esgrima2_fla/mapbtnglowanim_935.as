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
   
   public dynamic class mapbtnglowanim_935 extends MovieClip
   {
       
      
      public function mapbtnglowanim_935()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(_loc1_)
            {
               addr22:
               addFrameScript(0,this.frame1,93,this.frame94);
            }
            return;
         }
         §§goto(addr22);
      }
      
      public function removed(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            stop();
            if(!_loc2_)
            {
               trace("Stopped new map glow");
               if(!_loc3_)
               {
               }
               §§goto(addr43);
            }
            removeEventListener(Event.REMOVED_FROM_STAGE,this.removed);
         }
         addr43:
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            addEventListener(Event.REMOVED_FROM_STAGE,this.removed,false,0,true);
         }
      }
      
      function frame94() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            gotoAndPlay(2);
         }
      }
   }
}
