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
   
   public dynamic class Tooltip extends MovieClip
   {
       
      
      public var txt:TextField;
      
      public var slot:Slot;
      
      public var Leveltxt_:TextField;
      
      public var r:MovieClip;
      
      public var nametxt:TextField;
      
      public var txt2:TextField;
      
      public var Qualitytxt:TextField;
      
      public var item:String;
      
      public function Tooltip()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(!_loc2_)
            {
               addFrameScript(0,this.frame1);
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.txt.text = "";
            if(_loc2_)
            {
               this.txt2.text = "";
               if(_loc2_)
               {
                  this.txt.autoSize = TextFieldAutoSize.LEFT;
                  if(_loc2_)
                  {
                     §§goto(addr53);
                  }
               }
               §§goto(addr53);
            }
            §§goto(addr60);
         }
         addr53:
         this.txt2.autoSize = TextFieldAutoSize.LEFT;
         if(!_loc1_)
         {
            addr60:
            mouseEnabled = false;
         }
      }
   }
}
