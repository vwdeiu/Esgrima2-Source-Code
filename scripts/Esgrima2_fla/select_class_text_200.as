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
   
   public dynamic class select_class_text_200 extends MovieClip
   {
       
      
      public var txt:TextField;
      
      public var mc:MovieClip;
      
      public function select_class_text_200()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(_loc1_)
            {
               addFrameScript(0,this.frame1);
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(root.language !== "eng")
            {
               if(_loc2_)
               {
                  this.txt.text = root.getTxt("Select Class");
                  if(!_loc1_)
                  {
                     removeChild(this.mc);
                     if(_loc2_)
                     {
                        addr48:
                     }
                  }
               }
               §§goto(addr48);
            }
            else
            {
               this.txt.visible = false;
            }
            return;
         }
         §§goto(addr48);
      }
   }
}
