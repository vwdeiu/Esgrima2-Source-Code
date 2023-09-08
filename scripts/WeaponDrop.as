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
   
   public dynamic class WeaponDrop extends MovieClip
   {
       
      
      public var Lance:LanceBtn;
      
      public var Rod:RodBtn;
      
      public var Greatsword:GreatswordBtn;
      
      public var Book:BookBtn;
      
      public var Shield:ShieldBtn;
      
      public var Pistol:PistolBtn;
      
      public var Bow:BowBtn;
      
      public var Rapier:RapierBtn;
      
      public var Sabre:SabreBtn;
      
      public var a:SimpleButton;
      
      public var mainp:Point;
      
      public var defaultCategory:String;
      
      public function WeaponDrop()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(!_loc1_)
            {
               addFrameScript(0,this.frame1,1,this.frame2);
            }
         }
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.defaultCategory = "Sabre";
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
         if(_loc2_)
         {
            stop();
            if(!_loc1_)
            {
               root.translateButtons(this);
            }
         }
      }
      
      function frame2() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            root.translateButtons(this);
         }
      }
   }
}
