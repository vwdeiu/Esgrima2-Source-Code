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
   
   public dynamic class your_character_text_137 extends MovieClip
   {
       
      
      public var txt:TextField;
      
      public var mc:MovieClip;
      
      public function your_character_text_137()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(root.language !== "eng")
            {
               if(_loc2_)
               {
                  addr32:
                  this.txt.text = root.getTxt("Your Characters");
                  if(_loc2_)
                  {
                     removeChild(this.mc);
                     if(_loc1_)
                     {
                     }
                     §§goto(addr52);
                  }
               }
            }
            else
            {
               this.txt.visible = false;
            }
            addr52:
            return;
         }
         §§goto(addr32);
      }
   }
}
