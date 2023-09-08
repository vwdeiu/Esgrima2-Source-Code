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
   
   public dynamic class show_character_new_1559 extends MovieClip
   {
       
      
      public var classtxtmc:MovieClip;
      
      public var classmc:MovieClip;
      
      public var newclasslabel:TextField;
      
      public function show_character_new_1559()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(_loc2_)
            {
               addr24:
               addFrameScript(0,this.frame1);
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function added(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Bitmap = null;
         var _loc3_:Rectangle = null;
         _loc2_ = root.q.raster(this,false,null,true,true,false);
         _loc3_ = this.getBounds(this);
         if(_loc5_)
         {
            trace(_loc3_);
            if(_loc5_)
            {
               addr52:
               _loc2_.x = _loc3_.x;
               if(_loc5_)
               {
                  _loc2_.y = _loc3_.y;
               }
            }
            var _loc4_:int = 0;
            if(!_loc6_)
            {
               while(_loc4_ < numChildren)
               {
                  getChildAt(_loc4_).visible = false;
                  if(!_loc6_)
                  {
                     _loc4_++;
                  }
               }
               if(_loc5_)
               {
                  addr91:
                  addChild(_loc2_);
                  if(_loc5_)
                  {
                     removeEventListener(Event.ADDED_TO_STAGE,this.added);
                  }
               }
               return;
            }
            §§goto(addr91);
         }
         §§goto(addr52);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            addEventListener(Event.ADDED_TO_STAGE,this.added);
         }
      }
   }
}
