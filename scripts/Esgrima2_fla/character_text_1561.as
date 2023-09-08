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
   
   public dynamic class character_text_1561 extends MovieClip
   {
       
      
      public var txt:TextField;
      
      public var n:String;
      
      public function character_text_1561()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               addr30:
               addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4);
            }
            return;
         }
         §§goto(addr30);
      }
      
      public function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = null;
         this.txt.visible = false;
         §§push(root.getTxt(this.n,this.txt));
         if(_loc3_)
         {
            _loc1_ = §§pop();
            §§push(_loc1_);
         }
         if(§§pop() !== this.n)
         {
            getChildAt(1).visible = false;
            if(!_loc2_)
            {
               this.txt.visible = true;
            }
            this.txt.text = _loc1_;
         }
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.n = "Berserker";
            if(!_loc1_)
            {
               addr24:
               stop();
               if(_loc2_)
               {
                  this.init();
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      function frame2() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.init();
         }
      }
      
      function frame3() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.init();
         }
      }
      
      function frame4() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.init();
         }
      }
   }
}
