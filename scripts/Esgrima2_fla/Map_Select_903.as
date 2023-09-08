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
   
   public dynamic class Map_Select_903 extends MovieClip
   {
       
      
      public var txt:TextField;
      
      public var The_TavernBtn:MovieClip;
      
      public var Snowy_VillageBtn:MovieClip;
      
      public var The_ColosseumBtn:MovieClip;
      
      public var Rose_ForestBtn:MovieClip;
      
      public var BeachBtn:MovieClip;
      
      public var Forgotten_SwampBtn:MovieClip;
      
      public var i:int;
      
      public function Map_Select_903()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(_loc1_)
            {
               addr22:
               addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
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
            stop();
            if(_loc1_)
            {
               addr22:
               this.txt.mouseEnabled = false;
            }
            return;
         }
         §§goto(addr22);
      }
      
      function frame2() : *
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            root.translateTexts(this);
            if(_loc4_)
            {
               §§goto(addr24);
            }
            §§goto(addr29);
         }
         addr24:
         this.i = 0;
         if(!_loc3_)
         {
            addr29:
            while(this.i < numChildren)
            {
               if(!(getChildAt(this.i) is MovieClip))
               {
                  if(_loc4_)
                  {
                     getChildAt(this.i).mouseEnabled = false;
                     if(_loc3_)
                     {
                        continue;
                     }
                  }
               }
               var _loc1_:*;
               §§push((_loc1_ = this).i);
               if(_loc4_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc2_:* = §§pop();
               if(_loc4_)
               {
                  _loc1_.i = _loc2_;
               }
            }
         }
      }
      
      function frame3() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            root.translateTexts(this);
         }
      }
   }
}
