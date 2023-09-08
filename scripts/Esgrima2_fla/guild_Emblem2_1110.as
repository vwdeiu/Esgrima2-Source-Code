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
   
   public dynamic class guild_Emblem2_1110 extends MovieClip
   {
       
      
      public var b:Bitmap;
      
      public function guild_Emblem2_1110()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(!_loc1_)
            {
               addFrameScript(0,this.frame1);
            }
         }
      }
      
      public function raster() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         visible = true;
         if(this.b)
         {
            if(_loc3_)
            {
               removeChild(this.b);
               this.b.bitmapData.dispose();
               this.b = null;
               if(_loc3_)
               {
                  addr39:
                  this.visibilize(true);
               }
               var _loc1_:BitmapData = new BitmapData(130,130,true,0);
               if(!_loc2_)
               {
                  stage.quality = "high";
                  _loc1_.draw(this);
                  stage.quality = "low";
               }
               this.b = new Bitmap(_loc1_,"auto",true);
               if(!_loc2_)
               {
                  this.visibilize(false);
                  addChild(this.b);
                  this.b.scaleX = 0.82;
                  if(_loc3_)
                  {
                     addr98:
                     this.b.scaleY = 0.82;
                  }
                  return;
               }
               §§goto(addr98);
            }
         }
         §§goto(addr39);
      }
      
      public function visibilize(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:DisplayObject = null;
         var _loc2_:int = numChildren;
         var _loc3_:int = 0;
         if(!_loc6_)
         {
            while(_loc3_ < _loc2_)
            {
               (_loc4_ = getChildAt(_loc3_)).visible = param1;
               if(!_loc6_)
               {
                  _loc3_++;
               }
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            stop();
         }
      }
   }
}
