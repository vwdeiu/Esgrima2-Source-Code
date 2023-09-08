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
   
   public dynamic class charbg_639 extends MovieClip
   {
       
      
      public var endlabel:TextField;
      
      public var critlabel:TextField;
      
      public var critchancelabel:TextField;
      
      public var pvplabel:TextField;
      
      public var namelabel:TextField;
      
      public var healthlabel:TextField;
      
      public var wislabel:TextField;
      
      public var intlabel:TextField;
      
      public var dodgelabel:TextField;
      
      public var replabel:TextField;
      
      public var titletxt:TextField;
      
      public var strlabel:TextField;
      
      public var luklabel:TextField;
      
      public var blocklabel:TextField;
      
      public var attacklabel:TextField;
      
      public var lvllabel:TextField;
      
      public var manalabel:TextField;
      
      public var deflabel:TextField;
      
      public var classlabel:TextField;
      
      public function charbg_639()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               addFrameScript(0,this.frame1);
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.titletxt.text = root.getTxt("Character",this.titletxt);
            if(_loc1_)
            {
               this.namelabel.text = root.getTxt("Name",this.namelabel);
               this.replabel.text = root.getTxt("Reputation",this.replabel);
               if(_loc1_)
               {
                  addr48:
                  this.lvllabel.text = root.getTxt("Level",this.lvllabel);
                  addr56:
                  this.classlabel.text = root.getTxt("Class",this.classlabel);
                  if(_loc1_)
                  {
                     this.attacklabel.text = root.getTxt("Attack",this.attacklabel);
                     addr74:
                     this.critchancelabel.text = root.getTxt("Crit chance",this.critchancelabel);
                     this.critlabel.text = root.getTxt("Critical",this.critlabel);
                     this.deflabel.text = root.getTxt("Defense",this.deflabel);
                     this.dodgelabel.text = root.getTxt("Dodge",this.dodgelabel);
                     this.blocklabel.text = root.getTxt("Block",this.blocklabel);
                     this.healthlabel.text = root.getTxt("Health",this.healthlabel);
                     this.manalabel.text = root.getTxt("Mana",this.manalabel);
                     this.pvplabel.text = root.getTxt("PVP Wins",this.pvplabel);
                     this.strlabel.text = root.getTxt("Strength",this.strlabel);
                     if(!_loc2_)
                     {
                        this.endlabel.text = root.getTxt("Endurance",this.endlabel);
                        if(!_loc2_)
                        {
                           this.wislabel.text = root.getTxt("Wisdom",this.wislabel);
                           addr167:
                           if(_loc1_)
                           {
                              addr184:
                              this.luklabel.text = root.getTxt("Luck",this.luklabel);
                           }
                           this.intlabel.text = root.getTxt("Intelligence",this.intlabel);
                        }
                        return;
                     }
                     §§goto(addr167);
                  }
                  §§goto(addr184);
               }
               §§goto(addr74);
            }
            §§goto(addr56);
         }
         §§goto(addr48);
      }
   }
}
