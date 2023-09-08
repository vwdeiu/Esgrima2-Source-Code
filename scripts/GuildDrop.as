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
   
   public dynamic class GuildDrop extends MovieClip
   {
       
      
      public var Potions:PotionsBtn;
      
      public var Others:OthersBtn;
      
      public var Decorations:DecorationsBtn;
      
      public var Costumes:CostumesBtn;
      
      public var Gems:GemsBtn;
      
      public var a:SimpleButton;
      
      public var mainp:Point;
      
      public var defaultCategory:String;
      
      public function GuildDrop()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(!_loc1_)
            {
               addr23:
               addFrameScript(0,this.frame1,1,this.frame2);
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.defaultCategory = "Potions";
            if(!_loc1_)
            {
               this.mainp = new Point(-0.55,0.1);
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            stop();
            if(!_loc1_)
            {
               addr24:
               root.translateButtons(this);
            }
            return;
         }
         §§goto(addr24);
      }
      
      function frame2() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            root.translateButtons(this);
         }
      }
   }
}
