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
   
   public dynamic class CreateRoom extends MovieClip
   {
       
      
      public var passtxt:TextField;
      
      public var createbtn:SimpleButton;
      
      public var bg:MovieClip;
      
      public var msgtxt:TextField;
      
      public var closebtn:SimpleButton;
      
      public function CreateRoom()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(!_loc1_)
            {
               addr22:
               addFrameScript(0,this.frame1);
            }
            return;
         }
         §§goto(addr22);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.closebtn.removeEventListener(MouseEvent.CLICK,this.close);
            if(!_loc2_)
            {
               this.createbtn.removeEventListener(MouseEvent.CLICK,this.create);
            }
         }
      }
      
      public function close(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.clear();
            if(_loc3_)
            {
               MovieClip(parent).createmc = null;
               if(!_loc2_)
               {
                  MovieClip(root).q.removeChildFade(this);
               }
            }
         }
      }
      
      public function create(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:String = this.passtxt.text;
         if(_loc3_)
         {
            MovieClip(root).createbattle("Battle",parent.map,this.msgtxt.text,false,_loc2_);
            if(!_loc4_)
            {
               addr43:
               parent.close();
            }
            return;
         }
         §§goto(addr43);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         root.translateButtons(this);
         if(_loc2_)
         {
            this.closebtn.addEventListener(MouseEvent.CLICK,this.close,false,0,true);
            if(!_loc1_)
            {
               this.createbtn.addEventListener(MouseEvent.CLICK,this.create,false,0,true);
               if(!_loc1_)
               {
                  this.bg.titletxt.text = root.getTxt("Create a battle",this.bg.titletxt);
                  this.bg.messagelabel.text = root.getTxt("Enter message",this.bg.messagelabel) + ":";
                  this.bg.passwordlabel.text = root.getTxt("Password",this.bg.passwordlabel) + ":";
                  addr96:
                  MovieClip(root).q.raster(this.bg);
                  addr65:
               }
               return;
            }
            §§goto(addr96);
         }
         §§goto(addr65);
      }
   }
}
