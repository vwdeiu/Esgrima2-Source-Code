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
   
   public dynamic class friendlist_1039 extends MovieClip
   {
       
      
      public var b:BitmapData;
      
      public var friendSelect:Bitmap;
      
      public function friendlist_1039()
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.b = new FriendSelect(439,19);
            if(!_loc2_)
            {
               this.friendSelect = new Bitmap(this.b);
               if(_loc1_)
               {
                  this.friendSelect.x = -50.65;
                  if(!_loc1_)
                  {
                  }
                  §§goto(addr62);
               }
            }
            this.friendSelect.visible = false;
            if(!_loc1_)
            {
            }
            §§goto(addr62);
         }
         addr62:
         addChild(this.friendSelect);
      }
   }
}
