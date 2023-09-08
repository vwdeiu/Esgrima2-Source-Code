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
   
   public dynamic class EmpireOfficer_attack_1446 extends MovieClip
   {
       
      
      public var body:MovieClip;
      
      public var hand1:MovieClip;
      
      public var foot1:MovieClip;
      
      public var hand2:MovieClip;
      
      public var foot2:MovieClip;
      
      public var wep1:MovieClip;
      
      public var hat:MovieClip;
      
      public var wep2:MovieClip;
      
      public var arm1:MovieClip;
      
      public var head:MovieClip;
      
      public var arm2:MovieClip;
      
      public var fist1:MovieClip;
      
      public var leg1:MovieClip;
      
      public var fist2:MovieClip;
      
      public var leg2:MovieClip;
      
      public var leg3:MovieClip;
      
      public var bag:MovieClip;
      
      public var leg4:MovieClip;
      
      public var ranged:Boolean;
      
      public function EmpireOfficer_attack_1446()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(!_loc1_)
            {
               addFrameScript(0,this.frame1,35,this.frame36);
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.ranged = false;
         }
      }
      
      function frame36() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.ranged = true;
         }
      }
   }
}
