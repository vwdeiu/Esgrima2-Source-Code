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
   
   public dynamic class Elements extends MovieClip
   {
       
      
      public var listmc:MovieClip;
      
      public var maskmc:MovieClip;
      
      public var drag:MovieClip;
      
      public var bg:MovieClip;
      
      public var closebtn:Close;
      
      public function Elements()
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
      
      public function clickm(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1.target.name == "closebtn")
            {
               if(_loc3_)
               {
                  this.close();
               }
            }
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            removeEventListener(MouseEvent.CLICK,this.clickm);
         }
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.clear();
            if(_loc2_)
            {
               root.q.removeChildFade(this);
               if(_loc1_)
               {
               }
               §§goto(addr31);
            }
            root.elementmc = null;
         }
         addr31:
      }
      
      public function list() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Object = root.playerstats;
         this.listmc.firetxt.text = "x" + _loc1_.FIRE;
         if(_loc3_)
         {
            this.listmc.icetxt.text = "x" + _loc1_.ICE;
            if(_loc3_)
            {
               this.listmc.watertxt.text = "x" + _loc1_.WATER;
               if(!_loc2_)
               {
                  this.listmc.lightningtxt.text = "x" + _loc1_.LIGHTNING;
                  this.listmc.earthtxt.text = "x" + _loc1_.EARTH;
               }
            }
            this.listmc.planttxt.text = "x" + _loc1_.PLANT;
            this.listmc.darknesstxt.text = "x" + _loc1_.DARKNESS;
            this.listmc.lighttxt.text = "x" + _loc1_.LIGHT;
         }
         this.listmc.flyingtxt.text = "x" + _loc1_.FLYING;
         this.listmc.mechanictxt.text = "x" + _loc1_.MECHANIC;
         if(_loc3_)
         {
            this.listmc.beasttxt.text = "x" + _loc1_.BEAST;
         }
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         root.q.scrollbar(this.listmc,this.maskmc);
         this.bg.titletxt.text = root.getTxt("Elements",this.bg.titletxt);
         root.q.raster(this.bg);
         if(!_loc2_)
         {
            addEventListener(MouseEvent.CLICK,this.clickm);
            if(!_loc2_)
            {
               this.list();
               if(!_loc1_)
               {
               }
               §§goto(addr72);
            }
            root.q.createDrag(this.drag,this);
         }
         addr72:
      }
   }
}
