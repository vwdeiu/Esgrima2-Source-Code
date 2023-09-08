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
   
   public dynamic class reurrc_1521 extends MovieClip
   {
       
      
      public var resmc:MovieClip;
      
      public var restxt:TextField;
      
      public function reurrc_1521()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               addr23:
               addFrameScript(0,this.frame1);
            }
            return;
         }
         §§goto(addr23);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.restxt.visible = false;
            if(!_loc1_)
            {
               addr32:
               if(root.getTxt("Resurrected") !== "Resurrected")
               {
                  if(!_loc1_)
                  {
                     this.resmc.visible = false;
                     if(!_loc1_)
                     {
                        §§goto(addr53);
                     }
                     this.restxt.text = root.getTxt("Resurrected",this.restxt);
                  }
               }
               §§goto(addr53);
            }
            addr53:
            this.restxt.visible = true;
            if(!_loc2_)
            {
            }
            return;
         }
         §§goto(addr32);
      }
   }
}
