package
{
   import flash.display.Sprite;
   import flash.events.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   public class FPSCounter extends Sprite
   {
       
      
      private var last:uint;
      
      private var ticks:uint = 0;
      
      private var tf:TextField;
      
      public function FPSCounter(param1:int = 0, param2:int = 0, param3:uint = 16777215, param4:Boolean = false, param5:uint = 0)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         this.last = getTimer();
         if(_loc7_)
         {
            super();
            x = param1;
            y = param2;
            this.tf = new TextField();
            if(!_loc6_)
            {
               this.tf.textColor = param3;
               this.tf.text = "----- fps / ---- mb";
               this.tf.selectable = false;
               if(!_loc6_)
               {
                  this.tf.background = param4;
                  §§goto(addr63);
               }
               §§goto(addr88);
            }
            addr63:
            this.tf.backgroundColor = param5;
            this.tf.autoSize = TextFieldAutoSize.LEFT;
            if(!_loc6_)
            {
               addChild(this.tf);
               if(_loc7_)
               {
                  addr88:
                  width = this.tf.textWidth;
                  height = this.tf.textHeight;
                  addEventListener(Event.ENTER_FRAME,this.tick);
               }
            }
            return;
         }
         §§goto(addr88);
      }
      
      public function tick(param1:Event) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = NaN;
         if(_loc8_)
         {
            var _loc5_:*;
            var _loc6_:* = (_loc5_ = this).ticks + 1;
            if(!_loc7_)
            {
               _loc5_.ticks = _loc6_;
            }
         }
         var _loc2_:uint = getTimer();
         §§push(_loc2_);
         if(!_loc7_)
         {
            §§push(uint(§§pop() - this.last));
         }
         var _loc3_:* = §§pop();
         if(_loc8_)
         {
            §§push(_loc3_);
            if(!_loc7_)
            {
               if(§§pop() >= 1000)
               {
                  if(_loc8_)
                  {
                     addr66:
                     §§push(this.ticks / _loc3_);
                     if(!_loc7_)
                     {
                        §§push(§§pop() * 1000);
                        if(_loc8_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     _loc4_ = §§pop();
                     if(_loc8_)
                     {
                        this.tf.text = _loc4_.toFixed(1) + " fps /" + System.totalMemory / 1024 / 1024 + " mb";
                        if(!_loc7_)
                        {
                           addr104:
                           this.ticks = 0;
                           if(!_loc8_)
                           {
                           }
                        }
                        §§goto(addr112);
                     }
                     this.last = _loc2_;
                  }
               }
               addr112:
               return;
            }
            §§goto(addr66);
         }
         §§goto(addr104);
      }
   }
}
