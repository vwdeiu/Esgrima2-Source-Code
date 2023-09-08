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
   import fr.kouma.display.AnimatedBitmap;
   
   public dynamic class player_icon_face_1217 extends MovieClip
   {
       
      
      public var maskmc:MovieClip;
      
      public var nametxt:TextField;
      
      public var ab:AnimatedBitmap;
      
      public var mc:MovieClip;
      
      public var b:Bitmap;
      
      public var p:String;
      
      public var point:Point;
      
      public var WarriorPoint:Point;
      
      public var MusketeerPoint:Point;
      
      public var ClericPoint:Point;
      
      public var BerserkerPoint:Point;
      
      public var GuardianPoint:Point;
      
      public var SamuraiPoint:Point;
      
      public function player_icon_face_1217()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.maskmc.visible = false;
            this.p = "";
            if(_loc2_)
            {
               mouseChildren = false;
               if(_loc2_)
               {
                  this.WarriorPoint = new Point(5,50);
                  this.MusketeerPoint = new Point(10.6,42.1);
                  if(_loc2_)
                  {
                     this.ClericPoint = new Point(5.05,43.7);
                  }
                  this["Empire OfficerPoint"] = new Point(0.05,50.7);
                  if(_loc2_)
                  {
                     this["Fire MagePoint"] = new Point(2.95,52.15);
                     this.BerserkerPoint = new Point(-36.35,58);
                     addr90:
                     this.GuardianPoint = new Point(25.25,63.7);
                     if(_loc2_)
                     {
                        addr98:
                        this.SamuraiPoint = new Point(22.9,52.7);
                     }
                  }
                  return;
               }
            }
            §§goto(addr98);
         }
         §§goto(addr90);
      }
   }
}
