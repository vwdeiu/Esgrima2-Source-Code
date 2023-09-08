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
   
   public dynamic class Slot extends MovieClip
   {
       
      
      public var qtxt:TextField;
      
      public var a:MovieClip;
      
      public var na:MovieClip;
      
      public var item:String;
      
      public var q:int;
      
      public var type:String;
      
      public var id:int;
      
      public var arrayid:String;
      
      public var slot:Boolean;
      
      public var b:Bitmap;
      
      public var bd:BitmapData;
      
      public function Slot()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(_loc2_)
            {
               addr23:
               addFrameScript(0,this.frame1,6,this.frame7);
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function removed(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.b)
            {
               if(!_loc3_)
               {
                  this.b.bitmapData.dispose();
                  if(_loc2_)
                  {
                     this.b = null;
                     if(_loc2_)
                     {
                        §§goto(addr40);
                     }
                  }
               }
               §§goto(addr40);
            }
            §§goto(addr45);
         }
         addr40:
         trace("Disposed slot bitmap");
         if(!_loc3_)
         {
            addr45:
            removeEventListener(Event.REMOVED_FROM_STAGE,this.removed);
         }
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.qtxt.text = "";
         if(_loc2_)
         {
            if(this.q > 1)
            {
               this.qtxt.text = String(this.q);
            }
            this.slot = true;
            if(_loc2_)
            {
               stop();
               if(_loc2_)
               {
                  mouseChildren = false;
                  if(_loc2_)
                  {
                     §§goto(addr62);
                  }
               }
               §§goto(addr69);
            }
         }
         addr62:
         this.qtxt.mouseEnabled = false;
         if(!_loc1_)
         {
            addr69:
            addEventListener(Event.REMOVED_FROM_STAGE,this.removed);
            stop();
         }
      }
      
      function frame7() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            stop();
         }
      }
   }
}
