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
   import playerio.DatabaseObject;
   
   public dynamic class ConfirmWTxt extends MovieClip
   {
       
      
      public var passtxt:TextField;
      
      public var confirmbtn:SimpleButton;
      
      public var titletxt:TextField;
      
      public var bg:MovieClip;
      
      public var closebtn:Close;
      
      public var char:DatabaseObject;
      
      public var txt:String;
      
      public var title:String;
      
      public var pass:String;
      
      public var confirmation:Function;
      
      public var decline:Function;
      
      public function ConfirmWTxt()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
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
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            removeEventListener(MouseEvent.CLICK,this.mclick);
         }
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.clear();
            if(!_loc1_)
            {
               addr23:
               MovieClip(root).q.removeChildFade(this);
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function mclick(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:String = param1.target.name;
         §§push(_loc2_);
         if(!_loc3_)
         {
            §§push("closebtn");
            if(!_loc3_)
            {
               if(§§pop() == §§pop())
               {
                  if(_loc4_)
                  {
                     if(this.decline !== null)
                     {
                        if(_loc4_)
                        {
                           this.decline();
                        }
                        §§goto(addr75);
                     }
                     this.close();
                  }
                  else
                  {
                     addr61:
                     if(this.passtxt.text !== this.pass)
                     {
                        if(!_loc3_)
                        {
                           return;
                        }
                     }
                     else
                     {
                        this.confirmation();
                        addr73:
                        this.close();
                     }
                  }
               }
               else
               {
                  addr58:
                  if(_loc2_ == "confirmbtn")
                  {
                     if(_loc4_)
                     {
                        §§goto(addr61);
                     }
                     §§goto(addr73);
                  }
               }
               addr75:
               return;
            }
         }
         §§goto(addr58);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         x = root.stage.stageWidth / 2;
         y = root.stage.stageHeight / 2;
         if(!_loc1_)
         {
            stage.focus = this.passtxt;
            if(_loc2_)
            {
               root.translateButtons(this);
               root.getTxt("Name",this.titletxt);
               §§goto(addr41);
            }
            §§goto(addr62);
         }
         addr41:
         if(!_loc1_)
         {
            root.getTxt("Name",this.bg.titletxt);
            addr62:
            this.titletxt.text = this.txt;
            this.bg.titletxt.text = this.title;
            if(!_loc1_)
            {
               root.getTxt("Name",this.passtxt);
               this.passtxt.text = "";
               addEventListener(MouseEvent.CLICK,this.mclick);
               if(!_loc2_)
               {
               }
               §§goto(addr105);
            }
            root.q.raster(this.bg);
         }
         addr105:
      }
   }
}
