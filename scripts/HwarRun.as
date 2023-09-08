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
   import fr.kouma.display.*;
   
   public dynamic class HwarRun extends MovieClip
   {
       
      
      public var ms1:MovieClip;
      
      public var ms2:MovieClip;
      
      public var m1:MovieClip;
      
      public var m2:MovieClip;
      
      public var m3:MovieClip;
      
      public var a1:AnimatedBitmap;
      
      public var a2:AnimatedBitmap;
      
      public var a3:AnimatedBitmap;
      
      public var ads:AnimatedBitmapData;
      
      public function HwarRun()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(_loc1_)
            {
               addFrameScript(1,this.frame2,109,this.frame110,114,this.frame115,119,this.frame120);
            }
         }
      }
      
      public function loop(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:AnimatedBitmap = null;
         var _loc4_:MovieClip = null;
         var _loc2_:int = 1;
         if(!_loc6_)
         {
            while(_loc2_ <= 3)
            {
               §§push(this);
               §§push("a");
               if(!_loc6_)
               {
                  §§push(§§pop() + _loc2_);
               }
               _loc3_ = §§pop()[§§pop()];
               §§push(this);
               §§push("m");
               if(_loc5_)
               {
                  §§push(§§pop() + _loc2_);
               }
               if(!(_loc4_ = §§pop()[§§pop()]))
               {
                  if(_loc6_)
                  {
                     addr76:
                     _loc3_.x = _loc4_.x;
                     if(_loc6_)
                     {
                        continue;
                     }
                     addr82:
                     _loc3_.y = _loc4_.y;
                     if(_loc6_)
                     {
                        continue;
                     }
                  }
                  addr88:
                  _loc2_++;
                  continue;
               }
               if(!_loc3_)
               {
                  if(!_loc5_)
                  {
                     continue;
                  }
               }
               else
               {
                  trace(_loc2_);
                  if(_loc5_)
                  {
                     §§goto(addr76);
                  }
                  §§goto(addr82);
               }
               §§goto(addr88);
               §§goto(addr82);
            }
         }
      }
      
      public function Start() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:AnimatedBitmapData = new AnimatedBitmapData(this.ms2);
         if(_loc2_)
         {
            root.q.remove(this.ms2);
            this.ads = new AnimatedBitmapData(this.ms1);
            if(_loc2_)
            {
               root.q.remove(this.ms1);
            }
            this.a1 = new AnimatedBitmap(_loc1_,Event.ENTER_FRAME,60);
            addChild(this.a1);
            if(!_loc3_)
            {
               addr57:
               this.a1.x = this.m1.x;
               this.a1.y = this.m1.y;
               if(_loc2_)
               {
                  this.a2 = new AnimatedBitmap(_loc1_,Event.ENTER_FRAME,60);
                  addChild(this.a2);
                  this.a2.x = this.m2.x;
                  if(_loc2_)
                  {
                     this.a2.y = this.m2.y;
                     this.a3 = new AnimatedBitmap(_loc1_,Event.ENTER_FRAME,60);
                     addChild(this.a3);
                     if(!_loc3_)
                     {
                        this.a3.x = this.m3.x;
                        if(_loc2_)
                        {
                           addr128:
                           this.a3.y = this.m3.y;
                           addEventListener(Event.ENTER_FRAME,this.loop);
                           this.m1.visible = false;
                        }
                        this.m2.visible = false;
                        this.m3.visible = false;
                        if(_loc2_)
                        {
                           addr162:
                           this.ms1.visible = false;
                        }
                        return;
                     }
                  }
                  §§goto(addr128);
               }
               §§goto(addr162);
            }
            §§goto(addr128);
         }
         §§goto(addr57);
      }
      
      public function end(param1:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this);
         §§push("a");
         if(_loc4_)
         {
            §§push(§§pop() + param1);
         }
         var _loc2_:AnimatedBitmap = §§pop()[§§pop()];
         var _loc3_:Point = new Point(_loc2_.x,_loc2_.y);
         _loc2_.stop();
         removeChild(_loc2_);
         §§push(this);
         §§push("a");
         if(!_loc5_)
         {
            §§push(§§pop() + param1);
         }
         §§pop()[§§pop()] = new AnimatedBitmap(this.ads,Event.ENTER_FRAME,60);
         addChild(this["a" + param1]);
         §§push(this);
         §§push("a");
         if(!_loc5_)
         {
            §§push(§§pop() + param1);
         }
         §§pop()[§§pop()].x = _loc3_.x;
         §§push(this);
         §§push("a");
         if(!_loc5_)
         {
            §§push(§§pop() + param1);
         }
         §§pop()[§§pop()].y = _loc3_.y;
         if(param1 == 3)
         {
            if(_loc4_)
            {
               removeEventListener(Event.ENTER_FRAME,this.loop);
            }
         }
      }
      
      function frame2() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            x = root.pmcs[root.pChar.key + "_mc"].x + 370;
            if(!_loc2_)
            {
               y = root.pmcs[root.pChar.key + "_mc"].y - 40;
               if(_loc1_)
               {
                  visible = true;
                  addr55:
                  if(_loc1_)
                  {
                     parent.setChildIndex(this,root.getChildIndex(root.pmcs[root.pChar.key + "_mc"]));
                     if(!_loc2_)
                     {
                        addr84:
                        this.Start();
                     }
                  }
                  §§goto(addr84);
               }
               return;
            }
            §§goto(addr84);
         }
         §§goto(addr55);
      }
      
      function frame110() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.end(1);
         }
      }
      
      function frame115() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.end(2);
         }
      }
      
      function frame120() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.end(3);
            if(!_loc2_)
            {
               §§goto(addr23);
            }
            §§goto(addr27);
         }
         addr23:
         stop();
         if(!_loc2_)
         {
            addr27:
            root.dialog("Hwar Elite","D1");
         }
      }
   }
}
