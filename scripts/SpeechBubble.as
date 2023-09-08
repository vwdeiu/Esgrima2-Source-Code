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
   
   public dynamic class SpeechBubble extends MovieClip
   {
       
      
      public var speechtxt:TextField;
      
      public var bubble:MovieClip;
      
      public var speech:String;
      
      public var lastspeech:int;
      
      public var ID:String;
      
      public var txtb:Bitmap;
      
      public var bubbleb:Bitmap;
      
      public var bubblebd:BitmapData;
      
      public function SpeechBubble()
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
      
      public function setTxt(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(!stage);
            if(!_loc4_)
            {
               §§push(§§pop());
               if(!_loc4_)
               {
                  if(!§§pop())
                  {
                     addr29:
                     §§pop();
                     §§push(stage == null);
                  }
                  if(§§pop())
                  {
                     return;
                  }
                  §§push(root.language !== "");
                  §§push(root.language !== "");
               }
               if(!§§pop())
               {
                  if(_loc5_)
                  {
                     §§pop();
                     §§push(root.language !== "eng");
                  }
               }
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     addr55:
                     this.speechtxt.defaultTextFormat = new TextFormat("Familiar Pro",12,null,null,null,null,null,null,null,null,null,null,0);
                     if(!_loc4_)
                     {
                        addr76:
                        visible = true;
                        if(!_loc4_)
                        {
                           this.speechtxt.text = param1;
                           this.speechtxt.autoSize = TextFieldAutoSize.LEFT;
                           if(!_loc4_)
                           {
                              addr94:
                              this.lastspeech = getTimer();
                              if(_loc5_)
                              {
                                 this.bubble.bubble.width = this.speechtxt.textWidth + 10;
                                 if(_loc4_)
                                 {
                                 }
                                 addr136:
                                 this.bubble.pointer.x = -1.7 + this.speechtxt.textWidth / 20;
                                 var _loc2_:MovieClip = this;
                                 var _loc3_:Number = 0;
                                 if(this.bubblebd)
                                 {
                                    this.bubblebd.dispose();
                                 }
                                 if(MovieClip(parent).bubbler)
                                 {
                                    if(!_loc4_)
                                    {
                                       MovieClip(parent.parent).removeChild(MovieClip(parent).bubbler);
                                       if(_loc5_)
                                       {
                                          addr179:
                                          this.bubblebd = new BitmapData(width + 20,height + 20,true,0);
                                          stage.quality = "best";
                                          §§goto(addr194);
                                       }
                                       §§goto(addr213);
                                    }
                                    addr194:
                                    this.bubblebd.draw(this);
                                    stage.quality = "low";
                                    MovieClip(parent).bubbler = new Bitmap(this.bubblebd,"auto",true);
                                    if(_loc5_)
                                    {
                                       addr213:
                                       MovieClip(parent).bubbler.x = x;
                                       MovieClip(parent).bubbler.y = y;
                                       MovieClip(parent).bubbler.alpha = _loc3_;
                                       MovieClip(parent.parent).addChildAt(MovieClip(parent).bubbler,root.getChildIndex(parent.titleb) + 1);
                                       visible = false;
                                    }
                                    return;
                                 }
                                 §§goto(addr179);
                              }
                           }
                           this.bubble.bubble.height = this.speechtxt.textHeight + 8;
                           this.bubble.pointer.y = this.bubble.bubble.height;
                        }
                        §§goto(addr136);
                     }
                     §§goto(addr94);
                  }
               }
               §§goto(addr76);
            }
            §§goto(addr29);
         }
         §§goto(addr55);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            cacheAsBitmap = true;
            if(!_loc1_)
            {
               addr31:
               mouseEnabled = false;
               if(!_loc1_)
               {
                  mouseChildren = false;
                  if(_loc2_)
                  {
                     visible = false;
                  }
               }
            }
            return;
         }
         §§goto(addr31);
      }
   }
}
