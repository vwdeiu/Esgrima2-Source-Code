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
   
   public dynamic class SkillUpgrade extends MovieClip
   {
       
      
      public var confirmbtn:SimpleButton;
      
      public var titletxt:TextField;
      
      public var bg:MovieClip;
      
      public var nobtn:SimpleButton;
      
      public var skill:String;
      
      public function SkillUpgrade()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(!_loc1_)
            {
               addr23:
               addFrameScript(0,this.frame1);
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function clickm(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = null;
         if(!_loc3_)
         {
            if(param1.target is SimpleButton)
            {
               if(_loc4_)
               {
                  §§push(param1.target.name);
                  if(_loc4_)
                  {
                     _loc2_ = §§pop();
                     §§push(_loc2_);
                  }
                  if(§§pop() != "nobtn")
                  {
                     root.getC().send("UpgradeSkill",this.skill);
                     this.close();
                  }
                  §§goto(addr64);
               }
               this.close();
               addr55:
            }
            addr64:
            return;
         }
         §§goto(addr55);
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            removeEventListener(MouseEvent.CLICK,this.clickm);
            if(!_loc1_)
            {
               root.skillconfirm = null;
               if(!_loc1_)
               {
                  addr40:
                  root.q.removeChildFade(this);
               }
               return;
            }
         }
         §§goto(addr40);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.titletxt.text = root.getTxt("UpgradeAsk",this.titletxt) + " " + root.getTxt(this.skill) + "?";
            if(_loc1_)
            {
               root.translateButtons(this);
               if(!_loc2_)
               {
                  addEventListener(MouseEvent.CLICK,this.clickm);
                  if(_loc2_)
                  {
                  }
               }
               §§goto(addr69);
            }
            root.q.raster(this.bg);
         }
         addr69:
      }
   }
}
