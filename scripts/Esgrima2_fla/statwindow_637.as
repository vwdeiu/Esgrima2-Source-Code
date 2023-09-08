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
   
   public dynamic class statwindow_637 extends MovieClip
   {
       
      
      public var Intelligencetxt:TextField;
      
      public var Endurancetxt:TextField;
      
      public var Wisdomtxt:TextField;
      
      public var Lucklabel:TextField;
      
      public var Endurancelabel:TextField;
      
      public var Strengthlabel:TextField;
      
      public var Lucktxt:TextField;
      
      public var Strengthtxt:TextField;
      
      public var Intelligencelabel:TextField;
      
      public var Wisdomlabel:TextField;
      
      public var statx:Number;
      
      public var Strengthy:Number;
      
      public var Endurancey:Number;
      
      public var Wisdomy:Number;
      
      public var Lucky:Number;
      
      public var Intelligencey:Number;
      
      public var stats:Vector.<String>;
      
      public function statwindow_637()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(!_loc2_)
            {
               addr22:
               addFrameScript(0,this.frame1);
            }
            return;
         }
         §§goto(addr22);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.statx = 92.85;
            if(_loc2_)
            {
               this.Strengthy = 9.25;
               if(_loc2_)
               {
                  this.Endurancey = 36.75;
                  this.Wisdomy = 63.55;
                  this.Lucky = 90.7;
                  if(_loc2_)
                  {
                     this.Intelligencey = 118.75;
                     this.stats = new Vector.<String>(5,true);
                     §§goto(addr61);
                  }
                  §§goto(addr68);
               }
               §§goto(addr98);
            }
            addr61:
            this.stats[0] = "Strength";
            if(!_loc1_)
            {
               this.stats[1] = "Endurance";
               addr80:
               this.stats[2] = "Wisdom";
               addr68:
            }
            this.stats[3] = "Luck";
            if(!_loc1_)
            {
               this.stats[4] = "Intelligence";
               addr98:
               trace(this.stats);
            }
            return;
         }
         §§goto(addr80);
      }
   }
}
