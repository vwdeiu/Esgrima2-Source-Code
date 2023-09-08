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
   
   public dynamic class BattleHP extends MovieClip
   {
       
      
      public var hpbar:MovieClip;
      
      public var mptxt:TextField;
      
      public var lvltxt:TextField;
      
      public var hptxt:TextField;
      
      public var nametxt:TextField;
      
      public var buffmc:POINT;
      
      public var mpbar:MovieClip;
      
      public function BattleHP()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               addr23:
               addFrameScript(0,this.frame1);
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function createBuffs(param1:Vector.<String>, param2:MovieClip) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:MovieClip = null;
         if(_loc8_)
         {
            param2.q.RemoveChildren(this.buffmc);
         }
         var _loc3_:int = param1.length;
         if(_loc8_)
         {
            trace(_loc3_);
            if(_loc8_)
            {
               addr44:
               trace("buffs: " + param1);
            }
            var _loc4_:int = 0;
            if(!_loc9_)
            {
               while(_loc4_ < _loc3_)
               {
                  §§push(param1[_loc4_]);
                  if(!_loc9_)
                  {
                     §§push(§§pop());
                     if(_loc8_)
                     {
                        §§push(_loc5_ = §§pop());
                        if(_loc8_)
                        {
                           addr76:
                           §§push("");
                           if(_loc8_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(!_loc8_)
                                 {
                                    continue;
                                 }
                              }
                              else
                              {
                                 §§push(_loc5_);
                                 if(_loc8_)
                                 {
                                    addr88:
                                    §§push(§§pop().split("_")[0]);
                                 }
                                 _loc6_ = §§pop();
                                 if(!_loc8_)
                                 {
                                    continue;
                                 }
                                 (_loc7_ = new Slot() as MovieClip).lvl = int(_loc5_.split("_")[1]);
                                 if(_loc8_)
                                 {
                                    param2.setSlot(_loc7_,_loc6_);
                                    if(!_loc9_)
                                    {
                                       _loc7_.x = _loc4_ * _loc7_.width;
                                       if(_loc9_)
                                       {
                                       }
                                       addr139:
                                       _loc4_++;
                                       continue;
                                    }
                                 }
                                 this.buffmc.addChild(_loc7_);
                              }
                              §§goto(addr139);
                           }
                           §§goto(addr88);
                        }
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr76);
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            stop();
         }
      }
   }
}
