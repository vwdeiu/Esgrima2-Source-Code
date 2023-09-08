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
   
   public dynamic class PRC extends MovieClip
   {
       
      
      public var tradebtn:SimpleButton;
      
      public var guildinvitebtn:SimpleButton;
      
      public var bg:MovieClip;
      
      public var friendbtn:SimpleButton;
      
      public var pshopbtn:SimpleButton;
      
      public var p:MovieClip;
      
      public var btn:SimpleButton;
      
      public function PRC()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(_loc1_)
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
         root.q.raster(this.bg);
         if(!_loc1_)
         {
            §§push(!this.p.shop);
            if(!_loc1_)
            {
               §§push(§§pop());
               if(!_loc1_)
               {
                  if(!§§pop())
                  {
                     if(_loc2_)
                     {
                        §§pop();
                        §§push(this.p.shop.length < 1);
                        if(_loc2_)
                        {
                           addr47:
                           if(§§pop())
                           {
                              addr48:
                              this.pshopbtn.mouseEnabled = false;
                              if(_loc2_)
                              {
                                 this.pshopbtn.alpha = 0.5;
                                 addr58:
                                 if(root.q.arrayContains(root.pChar.Social.Friends,this.p.pname))
                                 {
                                    this.friendbtn.alpha = 0.5;
                                    if(!_loc1_)
                                    {
                                       this.friendbtn.mouseEnabled = false;
                                       addr86:
                                       §§push(!("Guild" in root.pChar));
                                       §§push(!("Guild" in root.pChar));
                                       if(!_loc1_)
                                       {
                                          addr104:
                                          if(!§§pop())
                                          {
                                             if(!_loc1_)
                                             {
                                                §§pop();
                                                addr98:
                                                §§push(root.pChar.GuildRank == "Recruit");
                                             }
                                          }
                                          if(!§§pop())
                                          {
                                             §§goto(addr105);
                                          }
                                          §§goto(addr114);
                                       }
                                       §§goto(addr104);
                                    }
                                    §§goto(addr172);
                                 }
                                 §§goto(addr86);
                              }
                              §§goto(addr98);
                           }
                           §§goto(addr58);
                        }
                        §§goto(addr86);
                     }
                     addr105:
                     §§pop();
                     if(_loc2_)
                     {
                        addr114:
                        if(this.p.guild !== "")
                        {
                           if(_loc2_)
                           {
                              this.guildinvitebtn.alpha = 0.5;
                           }
                           this.guildinvitebtn.mouseEnabled = false;
                           if(this.p.guild !== "")
                           {
                              this.btn = new ViewGuildBtn() as SimpleButton;
                              this.btn.x = this.guildinvitebtn.x;
                              this.btn.y = this.guildinvitebtn.y;
                              addChild(this.btn);
                              if(!_loc1_)
                              {
                                 removeChild(this.guildinvitebtn);
                                 if(_loc2_)
                                 {
                                    this.btn.name = "viewguildbtn";
                                    addr172:
                                    root.translateButtons(this,0.6,8);
                                 }
                              }
                           }
                        }
                        §§goto(addr172);
                     }
                     return;
                  }
                  §§goto(addr47);
               }
               §§goto(addr104);
            }
            §§goto(addr114);
         }
         §§goto(addr48);
      }
   }
}
