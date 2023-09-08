package Esgrima2_fla
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
   
   public dynamic class warehousebg_1678 extends MovieClip
   {
       
      
      public var titletxt:TextField;
      
      public function warehousebg_1678()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               addr22:
               addFrameScript(0,this.frame1);
            }
            return;
         }
         §§goto(addr22);
      }
      
      public function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:String = root.getTxt("Warehouse",this.titletxt);
         if(_loc3_)
         {
            if(_loc1_ !== "Warehouse")
            {
               if(_loc3_)
               {
                  removeChildAt(1);
                  if(_loc2_)
                  {
                  }
                  §§goto(addr46);
               }
               this.titletxt.text = _loc1_;
            }
         }
         addr46:
      }
      
      function frame1() : *
      {
      }
   }
}
