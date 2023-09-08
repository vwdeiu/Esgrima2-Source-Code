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
   
   public dynamic class Tip extends MovieClip
   {
       
      
      public var drag:MovieClip;
      
      public var okbtn:SimpleButton;
      
      public var bg:MovieClip;
      
      public var closebtn:Close;
      
      public var a:MovieClip;
      
      public var id:int;
      
      public function Tip()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(_loc1_)
            {
               addr23:
               addFrameScript(0,this.frame1);
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function closeb(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.close();
         }
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.clear();
            if(!_loc1_)
            {
               MovieClip(root).q.removeChildFade(this);
               if(_loc2_)
               {
                  addr39:
                  MovieClip(root).tipmc = null;
               }
               return;
            }
         }
         §§goto(addr39);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.okbtn.addEventListener(MouseEvent.CLICK,this.closeb);
            if(_loc1_)
            {
               this.closebtn.addEventListener(MouseEvent.CLICK,this.closeb);
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.a.gotoAndStop(this.id);
         root.changeButtonText(this.okbtn);
         this.bg.txt.text = root.getTxt("Tip");
         if(_loc2_)
         {
            MovieClip(root).q.raster(this.a);
            MovieClip(root).q.raster(this.bg);
            if(!_loc1_)
            {
               MovieClip(root).q.createDrag(this.drag,this);
            }
            this.okbtn.addEventListener(MouseEvent.CLICK,this.closeb);
            this.closebtn.addEventListener(MouseEvent.CLICK,this.closeb);
         }
      }
   }
}
