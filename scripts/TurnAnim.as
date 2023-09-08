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
   
   public dynamic class TurnAnim extends MovieClip
   {
       
      
      public function TurnAnim()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(_loc1_)
            {
               addr21:
               addFrameScript(54,this.frame55);
            }
            return;
         }
         §§goto(addr21);
      }
      
      function frame55() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            stop();
            if(!_loc1_)
            {
               if(getChildAt(0).b)
               {
                  if(_loc2_)
                  {
                     getChildAt(0).b.bitmapData.dispose();
                     if(_loc2_)
                     {
                        §§goto(addr53);
                     }
                  }
                  root.q.remove(this);
               }
            }
            §§goto(addr53);
         }
         addr53:
         MovieClip(root).turnmc = null;
         if(_loc1_)
         {
         }
      }
   }
}
