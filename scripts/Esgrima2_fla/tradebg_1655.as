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
   
   public dynamic class tradebg_1655 extends MovieClip
   {
       
      
      public var denars1:TextField;
      
      public var name1:TextField;
      
      public var denars2:TextField;
      
      public var name2:TextField;
      
      public var gold1:TextField;
      
      public var gold2:TextField;
      
      public var titletxt:TextField;
      
      public function tradebg_1655()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(!_loc1_)
            {
               addr23:
               addFrameScript(0,this.frame1);
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.titletxt.text = root.getTxt("Trade",this.titletxt);
            if(_loc2_)
            {
               this.denars1.text = this.denars2.text = root.getTxt("Denars",this.denars1);
               if(_loc2_)
               {
                  addr60:
                  this.gold1.text = this.gold2.text = root.getTxt("Gold",this.gold1);
               }
            }
            return;
         }
         §§goto(addr60);
      }
      
      function frame1() : *
      {
      }
   }
}
