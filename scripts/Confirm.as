package
{
   import Esgrima2_fla.*;
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
   import playerio.*;
   
   public dynamic class Confirm extends MovieClip
   {
       
      
      public var confirmbtn:SimpleButton;
      
      public var titletxt:TextField;
      
      public var bg:MovieClip;
      
      public var closebtn:Close;
      
      public var char:DatabaseObject;
      
      public var txt:String;
      
      public var title:String;
      
      public var confirmation:Function;
      
      public var decline:Function;
      
      public function Confirm()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(_loc1_)
            {
               addFrameScript(0,this.frame1);
            }
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            removeEventListener(MouseEvent.CLICK,this.mclick);
         }
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.clear();
            if(!_loc1_)
            {
               MovieClip(root).q.removeChildFade(this);
            }
         }
      }
      
      public function mclick(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:String = param1.target.name;
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               §§push("closebtn");
               if(!_loc3_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(this.decline !== null)
                     {
                        if(!_loc3_)
                        {
                           this.decline();
                        }
                        §§goto(addr65);
                     }
                     this.close();
                     addr57:
                  }
                  else
                  {
                     addr60:
                     if(_loc2_ == "confirmbtn")
                     {
                        this.confirmation();
                        this.close();
                     }
                  }
                  addr65:
                  return;
               }
            }
            §§goto(addr60);
         }
         §§goto(addr57);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         x = root.stage.stageWidth / 2;
         y = root.stage.stageHeight / 2;
         root.translateButtons(this);
         this.titletxt.text = this.txt;
         this.bg.titletxt.text = this.title;
         addEventListener(MouseEvent.CLICK,this.mclick);
         root.q.raster(this.bg);
      }
   }
}
