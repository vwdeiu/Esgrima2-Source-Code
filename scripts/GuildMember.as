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
   import playerio.DatabaseObject;
   
   public dynamic class GuildMember extends MovieClip
   {
       
      
      public var leadermc:MovieClip;
      
      public var pvptxt:TextField;
      
      public var reptxt:TextField;
      
      public var optionbtn:SimpleButton;
      
      public var onlinemc:MovieClip;
      
      public var ranktxt:TextField;
      
      public var nametxt:TextField;
      
      public var idtxt:TextField;
      
      public var mi:int;
      
      public var o:DatabaseObject;
      
      public var id:int;
      
      public var pguild:Boolean;
      
      public function GuildMember()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               addr24:
               addFrameScript(0,this.frame1);
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function displayrank() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.ranktxt.text = root.getTxt(this.o.GuildRank,this.ranktxt);
         }
      }
      
      public function clicked(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         root.guildrc = new MemberRC() as MovieClip;
         root.guildrc.member = this.o.key;
         root.guildrc.membero = this.o;
         root.guildrc.mc = this;
         root.guildrc.x = root.mouseX;
         root.guildrc.y = root.mouseY;
         root.addChildAt(root.guildrc,root.getChildIndex(root.mouse));
         if(!_loc2_)
         {
            root.q.fadeIn(root.guildrc);
         }
      }
      
      public function remove(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.optionbtn.removeEventListener(MouseEvent.CLICK,this.clicked);
            if(!_loc3_)
            {
               addr26:
               removeEventListener(Event.REMOVED_FROM_STAGE,this.remove);
            }
            return;
         }
         §§goto(addr26);
      }
      
      function frame1() : *
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.mi = 0;
            while(this.mi < numChildren)
            {
               getChildAt(this.mi).mouseEnabled = false;
               if(_loc3_)
               {
                  var _loc1_:*;
                  §§push((_loc1_ = this).mi);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc2_:* = §§pop();
                  if(!_loc4_)
                  {
                     _loc1_.mi = _loc2_;
                  }
               }
            }
            if(_loc3_)
            {
               this.optionbtn.mouseEnabled = true;
               if(!_loc4_)
               {
                  addr62:
                  this.idtxt.text = this.id;
                  if(!_loc4_)
                  {
                     §§push("Online");
                     if(!_loc4_)
                     {
                        if(§§pop() in this.o)
                        {
                           this.onlinemc.gotoAndStop(2);
                        }
                        §§push(!this.pguild);
                        §§push(!this.pguild);
                        if(_loc3_)
                        {
                           if(!§§pop())
                           {
                              if(!_loc4_)
                              {
                                 §§pop();
                                 if(_loc3_)
                                 {
                                    addr106:
                                    if(root.pChar.GuildRank == "Recruit" || root.pChar.key == this.o.key)
                                    {
                                       if(!_loc4_)
                                       {
                                          this.optionbtn.visible = false;
                                          if(!_loc4_)
                                          {
                                             addr126:
                                             if(this.o.GuildRank !== "Leader")
                                             {
                                                if(_loc3_)
                                                {
                                                   this.leadermc.visible = false;
                                                   if(!_loc3_)
                                                   {
                                                   }
                                                   addr148:
                                                   this.displayrank();
                                                   addr150:
                                                   this.reptxt.text = this.o.Reputation;
                                                   if(!_loc4_)
                                                   {
                                                      addr159:
                                                      if(!("PVPWins" in this.o))
                                                      {
                                                         this.pvptxt.text = 0;
                                                         if(_loc3_)
                                                         {
                                                            addr171:
                                                         }
                                                         §§goto(addr188);
                                                      }
                                                      else
                                                      {
                                                         this.pvptxt.text = this.o.PVPWins;
                                                         if(!_loc4_)
                                                         {
                                                            addr188:
                                                            this.optionbtn.addEventListener(MouseEvent.CLICK,this.clicked);
                                                            if(_loc3_)
                                                            {
                                                               addr197:
                                                               addEventListener(Event.REMOVED_FROM_STAGE,this.remove);
                                                            }
                                                            return;
                                                         }
                                                      }
                                                      §§goto(addr197);
                                                   }
                                                   §§goto(addr171);
                                                }
                                                §§goto(addr150);
                                             }
                                             this.nametxt.text = this.o.key;
                                             if(!_loc3_)
                                             {
                                             }
                                             §§goto(addr148);
                                          }
                                       }
                                       §§goto(addr159);
                                    }
                                    §§goto(addr126);
                                 }
                                 §§goto(addr148);
                              }
                           }
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr159);
                  }
                  §§goto(addr148);
               }
               §§goto(addr126);
            }
            §§goto(addr109);
         }
         §§goto(addr62);
      }
   }
}
