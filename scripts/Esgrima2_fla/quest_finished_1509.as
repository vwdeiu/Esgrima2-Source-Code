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
   
   public dynamic class quest_finished_1509 extends MovieClip
   {
       
      
      public var denartxt:TextField;
      
      public var questname:TextField;
      
      public var reptxt:TextField;
      
      public var titletxt:TextField;
      
      public var xptxt:TextField;
      
      public function quest_finished_1509()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(!_loc2_)
            {
               addFrameScript(0,this.frame1);
            }
         }
      }
      
      public function raster() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Bitmap = null;
         var _loc2_:Rectangle = null;
         if(!_loc4_)
         {
            this.titletxt.text = root.getTxt("Quest completed",this.titletxt);
         }
         _loc1_ = root.q.raster(this,false,null,true,true,false);
         _loc2_ = this.getBounds(this);
         if(!_loc4_)
         {
            trace(_loc2_);
            if(!_loc4_)
            {
               _loc1_.x = _loc2_.x;
               if(!_loc4_)
               {
                  addr68:
                  _loc1_.y = _loc2_.y;
               }
            }
            var _loc3_:int = 0;
            if(_loc5_)
            {
               while(_loc3_ < numChildren)
               {
                  getChildAt(_loc3_).visible = false;
                  if(_loc5_)
                  {
                     _loc3_++;
                  }
               }
               if(_loc5_)
               {
                  addr99:
                  addChild(_loc1_);
               }
               return;
            }
            §§goto(addr99);
         }
         §§goto(addr68);
      }
      
      function frame1() : *
      {
      }
   }
}
