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
   
   public dynamic class DeleteChar extends MovieClip
   {
       
      
      public var txt:TextField;
      
      public var passtxt:TextField;
      
      public var confirmbtn:SimpleButton;
      
      public var titletxt:TextField;
      
      public var bg:MovieClip;
      
      public var closebtn:Close;
      
      public var char:DatabaseObject;
      
      public function DeleteChar()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               addr23:
               addFrameScript(0,this.frame1);
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            removeEventListener(MouseEvent.CLICK,this.mclick);
         }
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.clear();
            if(_loc1_)
            {
               addr22:
               MovieClip(root).q.removeChildFade(this);
            }
            return;
         }
         §§goto(addr22);
      }
      
      public function mclick(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:String = param1.target.name;
         §§push(_loc2_);
         if(_loc4_)
         {
            §§push("closebtn");
            if(_loc4_)
            {
               if(§§pop() == §§pop())
               {
                  if(_loc4_)
                  {
                     this.close();
                  }
                  else
                  {
                     §§goto(addr94);
                  }
               }
               else
               {
                  addr35:
                  if(_loc2_ == "confirmbtn")
                  {
                     §§push(!root.onKong);
                     §§push(!root.onKong);
                     if(!_loc3_)
                     {
                        if(§§pop())
                        {
                           §§pop();
                           if(_loc4_)
                           {
                              §§push(root.onSpecial !== "armor");
                              if(!_loc3_)
                              {
                                 §§goto(addr54);
                              }
                              §§goto(addr108);
                           }
                           §§goto(addr78);
                        }
                        addr54:
                        §§push(§§pop());
                        if(_loc4_)
                        {
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 §§pop();
                                 addr66:
                                 §§push(root.language == "");
                                 §§push(root.language == "");
                                 if(!_loc3_)
                                 {
                                    §§goto(addr76);
                                 }
                                 §§goto(addr90);
                              }
                              §§goto(addr145);
                           }
                           §§goto(addr66);
                        }
                        addr76:
                        if(§§pop())
                        {
                           §§pop();
                           addr78:
                           §§push(this.passtxt.text == root.pass);
                           if(_loc4_)
                           {
                              §§goto(addr87);
                           }
                           §§goto(addr119);
                        }
                        addr87:
                        §§push(§§pop());
                        if(_loc4_)
                        {
                           addr90:
                           if(!§§pop())
                           {
                              §§pop();
                              if(_loc4_)
                              {
                                 addr94:
                                 §§push(root.onKong);
                                 if(!root.onKong)
                                 {
                                    §§pop();
                                    §§push(root.onSpecial == "armor");
                                    if(!_loc3_)
                                    {
                                       §§goto(addr108);
                                    }
                                    §§goto(addr135);
                                 }
                                 addr108:
                                 §§push(§§pop());
                                 if(!§§pop())
                                 {
                                    §§pop();
                                    if(!_loc3_)
                                    {
                                       addr119:
                                       §§push(root.language !== "");
                                       if(_loc4_)
                                       {
                                          §§goto(addr124);
                                       }
                                       §§goto(addr145);
                                    }
                                    §§goto(addr136);
                                 }
                                 §§goto(addr124);
                              }
                              §§goto(addr153);
                           }
                        }
                        §§goto(addr124);
                     }
                     addr124:
                     §§push(Boolean(§§pop()));
                     if(Boolean(§§pop()))
                     {
                        addr135:
                        §§pop();
                        addr136:
                        §§push(this.passtxt.text == this.char.key);
                        if(!_loc3_)
                        {
                           addr145:
                           §§push(Boolean(§§pop()));
                        }
                     }
                     if(§§pop())
                     {
                        root.deleteChar(this.char.key);
                        addr153:
                        this.close();
                        §§goto(addr155);
                     }
                     addr155:
                     return;
                  }
               }
               §§goto(addr153);
            }
         }
         §§goto(addr35);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         root.getTxt("Name",this.passtxt);
         this.passtxt.text = "";
         if(!_loc2_)
         {
            this.txt.text = root.getTxt("Password",this.txt);
            §§push(Boolean(root.onKong));
            if(_loc1_)
            {
               §§push(§§pop());
               if(_loc1_)
               {
                  if(!§§pop())
                  {
                     §§pop();
                     §§push(root.onSpecial == "armor");
                     if(_loc1_)
                     {
                        addr62:
                        §§push(Boolean(§§pop()));
                        if(!Boolean(§§pop()))
                        {
                           if(_loc1_)
                           {
                              §§pop();
                              §§push(root.language === "");
                              if(!_loc1_)
                              {
                              }
                              addr76:
                              if(§§pop())
                              {
                                 this.txt.text = root.getTxt("Character name",this.txt);
                                 if(_loc1_)
                                 {
                                    this.passtxt.displayAsPassword = false;
                                    if(_loc1_)
                                    {
                                       addr94:
                                       root.translateButtons(this);
                                    }
                                 }
                                 this.titletxt.text = root.getTxt("Confirm the deletion of",this.titletxt) + " " + this.char.key;
                                 if(_loc1_)
                                 {
                                    addEventListener(MouseEvent.CLICK,this.mclick);
                                 }
                                 return;
                              }
                              §§goto(addr94);
                           }
                           §§push(!§§pop());
                        }
                     }
                     §§goto(addr76);
                  }
               }
            }
            §§goto(addr62);
         }
         §§goto(addr94);
      }
   }
}
