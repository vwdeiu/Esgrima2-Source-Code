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
   
   public dynamic class GoldMallDrop extends MovieClip
   {
       
      
      public var Potions:SimpleButton;
      
      public var Others:SimpleButton;
      
      public var SkillManuals:SimpleButton;
      
      public var Back:SimpleButton;
      
      public var Weapons:SimpleButton;
      
      public var Costumes:SimpleButton;
      
      public var defaultCategory:String;
      
      public function GoldMallDrop()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(!_loc1_)
            {
               addr24:
               addFrameScript(0,this.frame1);
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            addEventListener(Event.ADDED_TO_STAGE,this.added);
            if(!_loc1_)
            {
               this.defaultCategory = "Weapons";
               if(!_loc2_)
               {
               }
               §§goto(addr45);
            }
            mainp = new Point(-0.55,0.1);
         }
         addr45:
      }
      
      public function added(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            root.translateButtons(this,0.6,0);
            if(_loc2_)
            {
               removeEventListener(Event.ADDED_TO_STAGE,this.added);
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.defaultCategory = "Weapons";
         }
      }
   }
}
