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
   import playerio.Client;
   
   public dynamic class AddItem extends MovieClip
   {
       
      
      public var okbtn:SimpleButton;
      
      public var bg:MovieClip;
      
      public var pricetxt:TextField;
      
      public var closebtn:Close;
      
      public var amounttxt:TextField;
      
      public var f:Function;
      
      public function AddItem()
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
      
      public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.clear();
            if(_loc1_)
            {
               root.q.removeChildFade(this);
            }
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            removeEventListener(MouseEvent.CLICK,this.clickm);
         }
      }
      
      public function clickm(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(param1.target.name == "closebtn")
         {
            if(_loc3_)
            {
               this.close();
            }
            else
            {
               addr69:
               this.close();
            }
         }
         else if(param1.target.name == "okbtn")
         {
            §§push(this.pricetxt.text == "");
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     addr57:
                     §§pop();
                     if(_loc3_)
                     {
                        addr65:
                        if(this.amounttxt.text == "")
                        {
                           return;
                        }
                        this.f();
                     }
                     §§goto(addr69);
                  }
               }
               §§goto(addr65);
            }
            §§goto(addr57);
         }
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            addEventListener(MouseEvent.CLICK,this.clickm);
            if(!_loc2_)
            {
               this.bg.pricetxt.text = root.getTxt("Enter price",this.bg.pricetxt);
               if(!_loc2_)
               {
                  addr53:
                  this.bg.amounttxt.text = root.getTxt("Enter amount",this.bg.amounttxt);
                  if(!_loc1_)
                  {
                  }
                  §§goto(addr76);
               }
               root.translateButtons(this);
               if(_loc1_)
               {
                  root.q.raster(this.bg);
               }
            }
            addr76:
            return;
         }
         §§goto(addr53);
      }
   }
}
