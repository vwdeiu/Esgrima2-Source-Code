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
   
   public dynamic class EasyInvitation extends MovieClip
   {
       
      
      public var sendbtn:SimpleButton;
      
      public var bg:MovieClip;
      
      public var msgtxt:TextField;
      
      public var closebtn:Close;
      
      public function EasyInvitation()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(!_loc1_)
            {
               addFrameScript(0,this.frame1);
            }
         }
      }
      
      public function clicked(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1.target.name == "sendbtn")
            {
               if(!_loc2_)
               {
                  this.send();
                  if(_loc2_)
                  {
                  }
               }
               else
               {
                  addr46:
                  this.close();
               }
            }
            else if(param1.target.name == "closebtn")
            {
               if(!_loc2_)
               {
                  §§goto(addr46);
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            removeEventListener(MouseEvent.CLICK,this.clicked);
         }
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.clear();
            if(_loc2_)
            {
               parent.invitemc = null;
               if(_loc1_)
               {
               }
               §§goto(addr33);
            }
            parent.removeChild(this);
         }
         addr33:
      }
      
      public function send() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            root.aE.invite(this.msgtxt.text);
            if(!_loc1_)
            {
               this.close();
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.bg.init();
            if(!_loc1_)
            {
               root.q.raster(this.bg);
               if(_loc2_)
               {
                  root.translateButtons(this);
                  if(_loc1_)
                  {
                  }
               }
               §§goto(addr54);
            }
            addEventListener(MouseEvent.CLICK,this.clicked,false,0,true);
         }
         addr54:
      }
   }
}
