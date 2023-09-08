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
   
   public dynamic class tippicmc_1612 extends MovieClip
   {
       
      
      public var ikNode_264:MovieClip;
      
      public var ikNode_253:MovieClip;
      
      public var txt5:TextField;
      
      public var ikNode_265:MovieClip;
      
      public var ikNode_254:MovieClip;
      
      public var ikNode_255:MovieClip;
      
      public var txt:TextField;
      
      public var ikNode_256:MovieClip;
      
      public var ikNode_257:MovieClip;
      
      public var questtxt:TextField;
      
      public var createtxt:TextField;
      
      public var ikNode_258:MovieClip;
      
      public var completeq:TextField;
      
      public var Tutorial_Master:MovieClip;
      
      public var ikNode_259:MovieClip;
      
      public var bg:MovieClip;
      
      public var leavetxt:TextField;
      
      public var traininggrounds:TextField;
      
      public var ikNode_260:MovieClip;
      
      public var txt1:TextField;
      
      public var ikNode_261:MovieClip;
      
      public var sabre:TextField;
      
      public var txt2:TextField;
      
      public var ikNode_251:MovieClip;
      
      public var ikNode_262:MovieClip;
      
      public var turntxt:TextField;
      
      public var txt3:TextField;
      
      public var ikNode_252:MovieClip;
      
      public var ikNode_263:MovieClip;
      
      public var txt4:TextField;
      
      public function tippicmc_1612()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(_loc2_)
            {
               addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4,4,this.frame5,6,this.frame7,7,this.frame8,8,this.frame9,9,this.frame10,10,this.frame11,11,this.frame12,12,this.frame13,13,this.frame14,14,this.frame15,15,this.frame16,16,this.frame17,17,this.frame18,18,this.frame19,19,this.frame20,20,this.frame21,21,this.frame22);
               addr22:
            }
            return;
         }
         §§goto(addr22);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.txt1.text = root.getTxt("Tip1Text1",this.txt1);
            if(_loc2_)
            {
               this.txt2.text = root.getTxt("Tip1Text2",this.txt2);
               if(!_loc2_)
               {
               }
               §§goto(addr53);
            }
            this.questtxt.text = root.getTxt("Quest",this.questtxt);
         }
         addr53:
      }
      
      function frame2() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            stop();
            if(!_loc2_)
            {
               this.txt1.text = root.getTxt("Tip2Text1",this.txt1);
               if(_loc1_)
               {
                  this.createtxt.text = root.getTxt("Create",this.createtxt);
                  if(!_loc2_)
                  {
                     addr57:
                     this.traininggrounds.text = root.getTxt("Training Grounds",this.traininggrounds);
                  }
               }
               §§goto(addr57);
            }
            return;
         }
         §§goto(addr57);
      }
      
      function frame3() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.questtxt.text = root.getTxt("Quest",this.questtxt);
            if(!_loc1_)
            {
               this.completeq.text = root.getTxt("Complete quest",this.completeq);
               if(_loc2_)
               {
                  this.txt1.text = root.getTxt("Tip3Text1",this.txt1);
               }
            }
         }
      }
      
      function frame4() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.txt1.text = root.getTxt("Tip4Text1",this.txt1);
            if(_loc2_)
            {
               addr37:
               this.leavetxt.text = root.getTxt("Leave",this.leavetxt);
            }
            return;
         }
         §§goto(addr37);
      }
      
      function frame5() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.txt1.text = root.getTxt("Tip5Text1",this.txt1);
            if(!_loc1_)
            {
               addr37:
               this.txt2.text = root.getTxt("Tip5Text2",this.txt2);
            }
            return;
         }
         §§goto(addr37);
      }
      
      function frame7() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.txt1.text = root.getTxt("Tip7Text1",this.txt1);
            if(!_loc1_)
            {
               this.txt2.text = root.getTxt("Tip7Text2",this.txt2);
               if(_loc2_)
               {
                  §§goto(addr52);
               }
            }
            §§goto(addr62);
         }
         addr52:
         this.txt3.text = root.getTxt("Tip7Text3",this.txt3);
         if(!_loc1_)
         {
            addr62:
            this.sabre.text = root.getTxt("Sabre",this.sabre);
         }
      }
      
      function frame8() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.txt1.text = root.getTxt("Tip8Text1",this.txt1);
            if(!_loc1_)
            {
               this.txt2.text = root.getTxt("Tip8Text2",this.txt2);
               if(_loc1_)
               {
               }
               §§goto(addr53);
            }
            this.txt.text = root.getTxt("Level Up",this.txt);
         }
         addr53:
      }
      
      function frame9() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.txt1.text = root.getTxt("Tip9Text1",this.txt1);
            if(_loc2_)
            {
               §§goto(addr35);
            }
            §§goto(addr46);
         }
         addr35:
         this.txt2.text = root.getTxt("Tip9Text2",this.txt2);
         if(!_loc1_)
         {
            addr46:
            this.txt3.text = root.getTxt("Tip9Text3",this.txt3);
         }
      }
      
      function frame10() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.txt1.text = root.getTxt("Tip10Text1",this.txt1);
            if(!_loc1_)
            {
               addr37:
               this.txt2.text = root.getTxt("Tip10Text2",this.txt2);
               if(!_loc1_)
               {
                  this.txt.text = root.getTxt("Health",this.txt);
               }
            }
            return;
         }
         §§goto(addr37);
      }
      
      function frame11() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.txt1.text = root.getTxt("Tip11Text1",this.txt1);
            if(_loc2_)
            {
               §§goto(addr37);
            }
            §§goto(addr47);
         }
         addr37:
         this.txt2.text = root.getTxt("Tip11Text2",this.txt2);
         if(_loc2_)
         {
            addr47:
            this.txt3.text = root.getTxt("Tip11Text3",this.txt3);
         }
      }
      
      function frame12() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.txt1.text = root.getTxt("Tip12Text1",this.txt1);
            if(_loc1_)
            {
               addr34:
               this.txt2.text = root.getTxt("Tip12Text2",this.txt2);
               if(_loc1_)
               {
                  this.txt3.text = root.getTxt("Tip12Text3",this.txt3);
               }
            }
            return;
         }
         §§goto(addr34);
      }
      
      function frame13() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.txt1.text = root.getTxt("Tip13Text1",this.txt1);
            if(!_loc1_)
            {
               this.txt2.text = root.getTxt("Tip13Text2",this.txt2);
            }
         }
      }
      
      function frame14() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.txt1.text = root.getTxt("Tip14Text1",this.txt1);
            if(_loc1_)
            {
               addr36:
               this.txt2.text = root.getTxt("Tip14Text2",this.txt2);
            }
            return;
         }
         §§goto(addr36);
      }
      
      function frame15() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.txt1.text = root.getTxt("Tip15Text1",this.txt1);
         }
      }
      
      function frame16() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.txt1.text = root.getTxt("Tip16Text1",this.txt1);
            if(!_loc1_)
            {
               addr36:
               this.txt2.text = root.getTxt("Tip16Text2",this.txt2);
            }
            return;
         }
         §§goto(addr36);
      }
      
      function frame17() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.txt1.text = root.getTxt("Tip17Text1",this.txt1);
         }
      }
      
      function frame18() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.txt1.text = root.getTxt("Tip18Text1",this.txt1);
            if(_loc2_)
            {
               this.txt2.text = root.getTxt("Tip18Text2",this.txt2);
               addr29:
               if(!_loc1_)
               {
                  this.txt3.text = root.getTxt("Tip18Text3",this.txt3);
                  addr46:
                  if(!_loc1_)
                  {
                     this.txt4.text = root.getTxt("Tip18Text4",this.txt4);
                     if(!_loc1_)
                     {
                        addr74:
                        this.txt5.text = root.getTxt("Tip18Text5",this.txt5);
                     }
                     return;
                  }
               }
               §§goto(addr74);
            }
            §§goto(addr46);
         }
         §§goto(addr29);
      }
      
      function frame19() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.txt1.text = root.getTxt("Tip19Text1",this.txt1);
            if(!_loc1_)
            {
               this.txt2.text = root.getTxt("Tip19Text2",this.txt2);
            }
         }
      }
      
      function frame20() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.txt1.text = root.getTxt("Tip20Text1",this.txt1);
         }
      }
      
      function frame21() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            root.getTxt("KhazarEnter",this.txt);
         }
      }
      
      function frame22() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.txt1.text = root.getTxt("Tip22Text1",this.txt1);
         }
      }
   }
}
