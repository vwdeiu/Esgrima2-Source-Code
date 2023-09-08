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
   
   public dynamic class QuestTab extends MovieClip
   {
       
      
      public var lvltxt:TextField;
      
      public var nametxt:TextField;
      
      public var isquest:Boolean;
      
      public var quest:String;
      
      public var lvl:int;
      
      public var id:int;
      
      public function QuestTab()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(_loc1_)
            {
               addFrameScript(0,this.frame1);
            }
         }
      }
      
      public function init(param1:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.isquest = true;
            if(!_loc3_)
            {
               this.nametxt.text = param1.getTxt(this.quest,this.nametxt);
               if(!_loc3_)
               {
                  this.lvltxt.text = param1.getTxt("Level",this.lvltxt) + " " + this.lvl;
               }
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            mouseChildren = false;
            if(!_loc1_)
            {
               stop();
            }
         }
      }
   }
}
