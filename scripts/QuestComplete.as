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
   
   public dynamic class QuestComplete extends MovieClip
   {
       
      
      public var okbtn:OkBtn;
      
      public function QuestComplete()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               addFrameScript(0,this.frame1,18,this.frame19);
            }
         }
      }
      
      public function clicked(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.okbtn.removeEventListener(MouseEvent.CLICK,this.clicked);
            if(_loc2_)
            {
               addr27:
               root.q.remove(this);
            }
            return;
         }
         §§goto(addr27);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            x = 418.1;
            if(!_loc2_)
            {
               y = 143.1;
               if(_loc1_)
               {
                  addr28:
                  root.translateButtons(this);
               }
               return;
            }
         }
         §§goto(addr28);
      }
      
      function frame19() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            stop();
            if(_loc1_)
            {
               this.okbtn.addEventListener(MouseEvent.CLICK,this.clicked,false,0,true);
            }
         }
      }
   }
}
