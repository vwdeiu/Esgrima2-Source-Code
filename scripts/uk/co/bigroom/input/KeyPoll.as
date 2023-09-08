package uk.co.bigroom.input
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
   
   public class KeyPoll
   {
       
      
      private var states:ByteArray;
      
      private var dispObj:DisplayObject;
      
      public function KeyPoll(param1:DisplayObject)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         super();
         this.states = new ByteArray();
         if(_loc2_)
         {
            this.states.writeUnsignedInt(0);
            this.states.writeUnsignedInt(0);
            if(!_loc3_)
            {
               this.states.writeUnsignedInt(0);
               this.states.writeUnsignedInt(0);
               if(!_loc3_)
               {
                  addr45:
                  this.states.writeUnsignedInt(0);
               }
               this.states.writeUnsignedInt(0);
               if(_loc2_)
               {
                  this.states.writeUnsignedInt(0);
                  this.states.writeUnsignedInt(0);
                  if(!_loc3_)
                  {
                     addr72:
                     this.dispObj = param1;
                     this.dispObj.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDownListener,false,0,true);
                  }
                  this.dispObj.addEventListener(KeyboardEvent.KEY_UP,this.keyUpListener,false,0,true);
                  if(_loc2_)
                  {
                     this.dispObj.addEventListener(Event.ACTIVATE,this.activateListener,false,0,true);
                     if(!_loc3_)
                     {
                        this.dispObj.addEventListener(Event.DEACTIVATE,this.deactivateListener,false,0,true);
                     }
                  }
                  return;
               }
            }
            §§goto(addr72);
         }
         §§goto(addr45);
      }
      
      private function keyDownListener(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.states[param1.keyCode >>> 3] |= 1 << (param1.keyCode & 7);
         }
      }
      
      private function keyUpListener(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.states[param1.keyCode >>> 3] &= ~(1 << (param1.keyCode & 7));
         }
      }
      
      private function activateListener(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         if(_loc4_)
         {
            while(_loc2_ < 32)
            {
               this.states[_loc2_] = 0;
               if(_loc4_)
               {
                  _loc2_++;
               }
            }
         }
      }
      
      private function deactivateListener(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         if(_loc4_)
         {
            while(_loc2_ < 32)
            {
               this.states[_loc2_] = 0;
               if(!_loc3_)
               {
                  _loc2_++;
               }
            }
         }
      }
      
      public function isDown(param1:uint) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push((this.states[param1 >>> 3] & 1 << (param1 & 7)) == 0);
         if(!_loc3_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public function isUp(param1:uint) : Boolean
      {
         return (this.states[param1 >>> 3] & 1 << (param1 & 7)) == 0;
      }
   }
}
