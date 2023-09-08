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
   
   public dynamic class PVPWinLose extends MovieClip
   {
       
      
      public var frame:int;
      
      public function PVPWinLose()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               addr21:
               addFrameScript(0,this.frame1,72,this.frame73);
            }
            return;
         }
         §§goto(addr21);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.x = 1054.45;
            if(_loc1_)
            {
               addr22:
               this.y = 253;
            }
            return;
         }
         §§goto(addr22);
      }
      
      function frame73() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            stop();
            if(!_loc2_)
            {
               addr29:
               if(getChildAt(0).b)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr36);
                  }
               }
               §§goto(addr44);
            }
            addr36:
            getChildAt(0).b.bitmapData.dispose();
            if(_loc1_)
            {
               addr44:
               root.q.remove(this);
            }
            return;
         }
         §§goto(addr29);
      }
   }
}
