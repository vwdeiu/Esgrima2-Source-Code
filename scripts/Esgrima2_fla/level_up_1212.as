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
   
   public dynamic class level_up_1212 extends MovieClip
   {
       
      
      public var txt:TextField;
      
      public var t:String;
      
      public function level_up_1212()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               addr23:
               addFrameScript(0,this.frame1);
            }
            return;
         }
         §§goto(addr23);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.txt.visible = false;
         this.t = root.getTxt("Level Up",this.txt);
         if(_loc2_)
         {
            if(this.t !== "Level Up")
            {
               this.txt.visible = true;
               addr45:
               this.txt.text = this.t;
               removeChildAt(0);
            }
            return;
         }
         §§goto(addr45);
      }
   }
}
