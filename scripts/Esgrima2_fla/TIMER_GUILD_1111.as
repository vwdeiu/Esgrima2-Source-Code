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
   
   public dynamic class TIMER_GUILD_1111 extends MovieClip
   {
       
      
      public var htxt:TextField;
      
      public var mtxt:TextField;
      
      public var hourtxt:TextField;
      
      public var titletxt:TextField;
      
      public var secondtxt:TextField;
      
      public var stxt:TextField;
      
      public var minutetxt:TextField;
      
      public var textFormat:TextFormat;
      
      public function TIMER_GUILD_1111()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(!_loc2_)
            {
               addr21:
               addFrameScript(0,this.frame1);
            }
            return;
         }
         §§goto(addr21);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.textFormat = new TextFormat();
            if(!_loc2_)
            {
               this.textFormat.letterSpacing = 5;
               if(_loc1_)
               {
                  this.hourtxt.setTextFormat(this.textFormat);
               }
               this.minutetxt.setTextFormat(this.textFormat);
               if(_loc1_)
               {
                  this.secondtxt.setTextFormat(this.textFormat);
                  this.htxt.text = root.getTxt("Hours");
                  §§goto(addr68);
               }
            }
            §§goto(addr83);
         }
         addr68:
         this.mtxt.text = root.getTxt("Minutes");
         this.stxt.text = root.getTxt("Seconds");
         if(_loc1_)
         {
            addr83:
            this.titletxt.text = root.getTxt("Time remaining");
         }
      }
   }
}
