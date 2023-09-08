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
   
   public dynamic class resurrected_1520 extends MovieClip
   {
       
      
      public var a:MovieClip;
      
      public var bd:BitmapData;
      
      public var b:Bitmap;
      
      public function resurrected_1520()
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
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.bd = new BitmapData(this.a.width,this.a.height,true,0);
            stage.quality = "high";
            if(!_loc1_)
            {
               this.bd.draw(this.a);
               if(!_loc1_)
               {
                  §§goto(addr51);
               }
               §§goto(addr62);
            }
            addr51:
            stage.quality = "low";
            if(!_loc1_)
            {
               this.b = new Bitmap(this.bd);
               this.b.x = this.a.x;
               addr62:
               if(!_loc1_)
               {
                  this.b.y = this.a.y;
                  if(!_loc1_)
                  {
                     addChild(this.b);
                  }
               }
               §§goto(addr94);
            }
            removeChild(this.a);
            §§goto(addr94);
         }
         addr94:
      }
   }
}
