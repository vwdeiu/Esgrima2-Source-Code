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
   
   public dynamic class Emblem extends MovieClip
   {
       
      
      public var b:Bitmap;
      
      public function Emblem()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(_loc1_)
            {
               addr22:
               addFrameScript(0,this.frame1);
            }
            return;
         }
         §§goto(addr22);
      }
      
      public function raster() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.b)
            {
               if(_loc3_)
               {
                  removeChild(this.b);
                  if(!_loc2_)
                  {
                     this.b.bitmapData.dispose();
                     if(_loc3_)
                     {
                        this.b = null;
                        if(!_loc3_)
                        {
                        }
                        addr53:
                        var _loc1_:BitmapData = new BitmapData(130,130,true,0);
                        stage.quality = "high";
                        _loc1_.draw(this);
                        stage.quality = "low";
                        if(!_loc2_)
                        {
                           this.b = new Bitmap(_loc1_,"auto",true);
                           if(_loc3_)
                           {
                              addr89:
                              this.visibilize(false);
                              if(_loc3_)
                              {
                                 addChild(this.b);
                              }
                           }
                           return;
                        }
                        §§goto(addr89);
                     }
                  }
               }
            }
            this.visibilize(true);
         }
         §§goto(addr53);
      }
      
      public function visibilize(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:DisplayObject = null;
         var _loc2_:int = numChildren;
         var _loc3_:int = 0;
         if(_loc5_)
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
         if(_loc2_)
         {
            stop();
         }
      }
   }
}
