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
   import fr.kouma.display.*;
   
   public dynamic class HunterAmbush extends MovieClip
   {
       
      
      public var ms1:MovieClip;
      
      public var ms2:MovieClip;
      
      public var ms3:MovieClip;
      
      public var ms4:MovieClip;
      
      public var m1:MovieClip;
      
      public var m2:MovieClip;
      
      public var m3:MovieClip;
      
      public var a1:AnimatedBitmap;
      
      public var a2:AnimatedBitmap;
      
      public var a3:AnimatedBitmap;
      
      public var ads:AnimatedBitmapData;
      
      public var valduhs:AnimatedBitmapData;
      
      public function HunterAmbush()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(!_loc1_)
            {
               addFrameScript(1,this.frame2,109,this.frame110,114,this.frame115,119,this.frame120);
            }
         }
      }
      
      public function loop(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:AnimatedBitmap = null;
         var _loc4_:MovieClip = null;
         var _loc2_:int = 1;
         if(_loc6_)
         {
            while(_loc2_ <= 3)
            {
               §§push(this);
               §§push("a");
               if(!_loc5_)
               {
                  §§push(§§pop() + _loc2_);
               }
               _loc3_ = §§pop()[§§pop()];
               §§push(this);
               §§push("m");
               if(_loc6_)
               {
                  §§push(§§pop() + _loc2_);
               }
               if(!(_loc4_ = §§pop()[§§pop()]))
               {
                  if(!_loc6_)
                  {
                  }
               }
               else if(!_loc3_)
               {
                  if(!_loc6_)
                  {
                     continue;
                  }
               }
               else
               {
                  trace(_loc2_);
                  if(_loc6_)
                  {
                     _loc3_.x = _loc4_.x;
                     if(!_loc6_)
                     {
                        continue;
                     }
                  }
                  _loc3_.y = _loc4_.y;
                  if(_loc5_)
                  {
                     continue;
                  }
               }
               _loc2_++;
            }
         }
      }
      
      public function Start() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:AnimatedBitmapData = new AnimatedBitmapData(this.ms2);
         if(_loc3_)
         {
            root.q.remove(this.ms2);
            if(!_loc4_)
            {
               this.ads = new AnimatedBitmapData(this.ms1);
               if(!_loc3_)
               {
               }
               §§goto(addr45);
            }
            root.q.remove(this.ms1);
         }
         addr45:
         var _loc2_:AnimatedBitmapData = new AnimatedBitmapData(this.ms3);
         root.q.remove(this.ms3);
         this.valduhs = new AnimatedBitmapData(this.ms4);
         if(_loc3_)
         {
            root.q.remove(this.ms4);
            if(_loc3_)
            {
               this.a1 = new AnimatedBitmap(_loc2_,Event.ENTER_FRAME,60);
               §§goto(addr80);
            }
            §§goto(addr186);
         }
         addr80:
         addChild(this.a1);
         if(_loc3_)
         {
            this.a1.x = this.m1.x;
            this.a1.y = this.m1.y;
            if(_loc3_)
            {
               this.a2 = new AnimatedBitmap(_loc1_,Event.ENTER_FRAME,60);
               addChild(this.a2);
               this.a2.x = this.m2.x;
               this.a2.y = this.m2.y;
               if(!_loc4_)
               {
                  this.a3 = new AnimatedBitmap(_loc1_,Event.ENTER_FRAME,60);
                  addChild(this.a3);
               }
            }
         }
         this.a3.x = this.m3.x;
         if(_loc3_)
         {
            this.a3.y = this.m3.y;
            addEventListener(Event.ENTER_FRAME,this.loop);
            if(_loc3_)
            {
               this.m1.visible = false;
               this.m2.visible = false;
               if(!_loc4_)
               {
                  addr186:
                  this.m3.visible = false;
               }
            }
         }
         this.ms1.visible = false;
      }
      
      public function end(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this);
         §§push("a");
         if(!_loc6_)
         {
            §§push(§§pop() + param1);
         }
         var _loc2_:AnimatedBitmap = §§pop()[§§pop()];
         var _loc3_:Point = new Point(_loc2_.x,_loc2_.y);
         if(_loc5_)
         {
            _loc2_.stop();
            if(!_loc6_)
            {
               removeChild(_loc2_);
            }
         }
         var _loc4_:AnimatedBitmapData = this.ads;
         §§push(param1);
         if(!_loc6_)
         {
            §§push(1);
            if(!_loc6_)
            {
               if(§§pop() == §§pop())
               {
                  _loc4_ = this.valduhs;
               }
               §§push(this);
               §§push("a");
               if(_loc5_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop()[§§pop()] = new AnimatedBitmap(_loc4_,Event.ENTER_FRAME,60);
               addChild(this["a" + param1]);
               if(!_loc6_)
               {
                  §§push(this);
                  §§push("a");
                  if(!_loc6_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop()[§§pop()].x = _loc3_.x;
                  if(_loc5_)
                  {
                     §§push(this);
                     §§push("a");
                     if(_loc5_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop()[§§pop()].y = _loc3_.y;
                     if(!_loc6_)
                     {
                        addr120:
                        if(param1 == 3)
                        {
                           addr121:
                           removeEventListener(Event.ENTER_FRAME,this.loop);
                        }
                     }
                  }
                  return;
               }
               §§goto(addr121);
            }
         }
         §§goto(addr120);
      }
      
      function frame2() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            x = root.pmcs[root.pChar.key + "_mc"].x - 370;
            if(!_loc2_)
            {
               scaleX = -1;
               if(_loc1_)
               {
                  y = root.pmcs[root.pChar.key + "_mc"].y - 40;
                  addr65:
                  visible = true;
                  if(!_loc2_)
                  {
                     parent.setChildIndex(this,root.getChildIndex(root.pmcs[root.pChar.key + "_mc"]));
                     this.Start();
                  }
                  addr45:
               }
               return;
            }
            §§goto(addr45);
         }
         §§goto(addr65);
      }
      
      function frame110() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
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
         if(!_loc2_)
         {
            this.end(3);
            if(_loc1_)
            {
               §§goto(addr23);
            }
            §§goto(addr27);
         }
         addr23:
         stop();
         if(_loc1_)
         {
            addr27:
            root.dialog("Huntsmen","OwlBack");
         }
      }
   }
}
