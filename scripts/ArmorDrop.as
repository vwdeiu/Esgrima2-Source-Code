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
   
   public dynamic class ArmorDrop extends MovieClip
   {
       
      
      public var LightArmor:LightArmorBtn;
      
      public var HeavyArmor:HeavyArmorBtn;
      
      public var FemaleHats:FemaleHatsBtn;
      
      public var Helmets:HelmetsBtn;
      
      public var Suits:SuitsBtn;
      
      public var Hats:HatsBtn;
      
      public var Coats:CoatsBtn;
      
      public var Dresses:DressesBtn;
      
      public var a:SimpleButton;
      
      public var mainp:Point;
      
      public var defaultCategory:String;
      
      public function ArmorDrop()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(!_loc2_)
            {
               addFrameScript(0,this.frame1,1,this.frame2);
            }
         }
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.defaultCategory = "LightArmor";
            if(_loc1_)
            {
               addr24:
               this.mainp = new Point(-0.55,0.1);
            }
            return;
         }
         §§goto(addr24);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            stop();
            if(_loc2_)
            {
               addr23:
               root.translateButtons(this);
            }
            return;
         }
         §§goto(addr23);
      }
      
      function frame2() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            root.translateButtons(this);
         }
      }
   }
}
