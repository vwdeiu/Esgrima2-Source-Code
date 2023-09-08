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
   
   public dynamic class enemy_turn_972 extends MovieClip
   {
       
      
      public var bg:MovieClip;
      
      public var turntxt:TextField;
      
      public var b:Bitmap;
      
      public var bd:BitmapData;
      
      public function enemy_turn_972()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(_loc1_)
            {
               addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4);
            }
         }
      }
      
      public function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Rectangle = null;
         if(!_loc2_)
         {
            this.b = new Bitmap(null,"auto",true);
            if(!_loc2_)
            {
               addr30:
               this.bd = new BitmapData(width,height,true,0);
            }
            _loc1_ = getBounds(this);
            if(stage == null)
            {
               return;
            }
            stage.quality = "high";
            if(_loc3_)
            {
               this.bd.draw(this,new Matrix(1,0,0,1,-_loc1_.x,-_loc1_.y));
               if(stage != null)
               {
                  stage.quality = "low";
                  this.b.bitmapData = this.bd;
                  if(!_loc2_)
                  {
                     this.b.x = _loc1_.x;
                     this.b.y = _loc1_.y;
                  }
                  addChild(this.b);
                  removeChild(this.bg);
                  removeChild(this.turntxt);
                  if(_loc3_)
                  {
                     this.turntxt = null;
                  }
                  _loc1_ = null;
                  if(_loc3_)
                  {
                     this.bd = null;
                  }
                  return;
               }
            }
            return;
         }
         §§goto(addr30);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            stop();
            if(_loc1_)
            {
               addr22:
               root.getTxt("Enemy turn",this.turntxt);
               if(_loc1_)
               {
                  this.init();
               }
            }
            return;
         }
         §§goto(addr22);
      }
      
      function frame2() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            root.getTxt("Player turn",this.turntxt);
            if(_loc2_)
            {
               addr26:
               this.init();
            }
            return;
         }
         §§goto(addr26);
      }
      
      function frame3() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            root.getTxt("Victory",this.turntxt);
            if(_loc2_)
            {
               addr26:
               this.init();
            }
            return;
         }
         §§goto(addr26);
      }
      
      function frame4() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            root.getTxt("Failure",this.turntxt);
            if(_loc2_)
            {
               this.init();
            }
         }
      }
   }
}
