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
   
   public dynamic class WinLose extends MovieClip
   {
       
      
      public function WinLose()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               addFrameScript(97,this.frame98);
            }
         }
      }
      
      function frame98() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            stop();
            if(_loc2_)
            {
               if(getChildAt(0).b)
               {
                  if(_loc2_)
                  {
                     getChildAt(0).b.bitmapData.dispose();
                     if(_loc2_)
                     {
                        addr45:
                        root.q.remove(this);
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr45);
      }
   }
}
