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
   
   public dynamic class gold_mall_obj_1545 extends MovieClip
   {
       
      
      public function gold_mall_obj_1545()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               addr23:
               addFrameScript(0,this.frame1);
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function added(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            txt.text = root.getTxt("Gold Mall",txt);
            if(_loc3_)
            {
               addr26:
               removeEventListener(Event.ADDED_TO_STAGE,this.added);
            }
            return;
         }
         §§goto(addr26);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            addEventListener(Event.ADDED_TO_STAGE,this.added);
         }
      }
   }
}
