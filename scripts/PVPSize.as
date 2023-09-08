package
{
   import Esgrima2_fla.*;
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
   import playerio.*;
   
   public dynamic class PVPSize extends MovieClip
   {
       
      
      public var closebtn:Close;
      
      public var battlesizetxt:TextField;
      
      public var standardbtn:SimpleButton;
      
      public var bigbtn:SimpleButton;
      
      public var roomo:Object;
      
      public function PVPSize()
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
      
      public function clicked(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(param1.target.name == "standardbtn")
         {
            this.roomo.Players = 8;
            this.Next();
            if(_loc3_)
            {
               addr50:
               this.roomo.Players = 12;
               this.Next();
               if(!_loc2_)
               {
               }
            }
         }
         else if(param1.target.name == "bigbtn")
         {
            if(_loc3_)
            {
            }
            §§goto(addr50);
         }
         else if(param1.target.name == "closebtn")
         {
            if(!_loc3_)
            {
               this.close();
            }
         }
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.clear();
            if(!_loc1_)
            {
               root.q.removeChildFade(this);
               if(!_loc2_)
               {
               }
               §§goto(addr33);
            }
            root.pvpsizemc = null;
         }
         addr33:
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            removeEventListener(MouseEvent.CLICK,this.clicked);
         }
      }
      
      public function Next() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.close();
            root.pvpcreate = new CreatePVP() as MovieClip;
            if(!_loc2_)
            {
               root.pvpcreate.x = stage.stageWidth / 2;
               root.pvpcreate.y = stage.stageHeight / 2;
               root.addChildAt(root.pvpcreate,root.getChildIndex(root.mouse));
               root.q.fadeIn(root.pvpcreate);
               root.pvpcreate.room = this.roomo;
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            root.translateButtons(this);
            if(!_loc2_)
            {
               this.roomo = {};
               if(!_loc1_)
               {
               }
               §§goto(addr51);
            }
            this.battlesizetxt.text = root.getTxt("Battle size",this.battlesizetxt);
            if(_loc1_)
            {
               addEventListener(MouseEvent.CLICK,this.clicked);
            }
         }
         addr51:
      }
   }
}
