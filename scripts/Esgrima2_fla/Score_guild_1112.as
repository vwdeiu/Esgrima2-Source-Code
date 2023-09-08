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
   
   public dynamic class Score_guild_1112 extends MovieClip
   {
       
      
      public var titletxt:TextField;
      
      public var eg:TextField;
      
      public var score1:TextField;
      
      public var yg:TextField;
      
      public var score2:TextField;
      
      public function Score_guild_1112()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(_loc2_)
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.titletxt.text = root.getTxt("Score");
            if(!_loc2_)
            {
               this.yg.text = root.getTxt("Your Guild");
               if(!_loc1_)
               {
               }
               §§goto(addr49);
            }
            this.eg.text = root.getTxt("Enemy Guild");
         }
         addr49:
      }
   }
}
