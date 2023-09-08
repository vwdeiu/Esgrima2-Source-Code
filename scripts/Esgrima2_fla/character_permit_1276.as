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
   
   public dynamic class character_permit_1276 extends MovieClip
   {
       
      
      public var a:MovieClip;
      
      public function character_permit_1276()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(_loc2_)
            {
               addFrameScript(0,this.frame1);
            }
         }
      }
      
      public function close(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            parent.parent.slotad = null;
            if(_loc2_)
            {
               §§goto(addr31);
            }
            §§goto(addr40);
         }
         addr31:
         stage.removeEventListener(MouseEvent.CLICK,this.close);
         if(!_loc3_)
         {
            addr40:
            root.q.remove(parent);
         }
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            stage.addEventListener(MouseEvent.CLICK,this.close);
            if(!_loc2_)
            {
               this.a.titletxt.text = root.getTxt("PlayMoreChars",this.a.titletxt);
               if(_loc1_)
               {
                  addr45:
                  root.q.raster(this.a);
               }
            }
            return;
         }
         §§goto(addr45);
      }
   }
}
