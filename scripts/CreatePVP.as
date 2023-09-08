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
   import playerio.*;
   
   public dynamic class CreatePVP extends MovieClip
   {
       
      
      public var passwordtxt:TextField;
      
      public var createbtn:SimpleButton;
      
      public var bg:MovieClip;
      
      public var closebtn:Close;
      
      public var mapselect:MovieClip;
      
      public var mapmc:MovieClip;
      
      public var room:Object;
      
      public var map:String;
      
      public function CreatePVP()
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
      
      public function clicked(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            trace(param1.target);
            if(param1.target == this.mapselect)
            {
               if(_loc2_)
               {
                  if(this.room.Players == 8)
                  {
                     if(_loc2_)
                     {
                        this.mapselect.gotoAndStop(2);
                        if(!_loc3_)
                        {
                           addr42:
                           if(this.room.Players == 12)
                           {
                           }
                           addr183:
                           return;
                           addr53:
                        }
                        this.mapselect.gotoAndStop(3);
                        if(_loc2_)
                        {
                           §§goto(addr53);
                        }
                        §§goto(addr183);
                     }
                     addr63:
                     this.map = param1.target.name.split("Btn")[0].split("_").join(" ");
                     if(_loc2_)
                     {
                        this.mapselect.gotoAndStop(1);
                        if(!_loc3_)
                        {
                           this.mapselect.txt.text = root.getTxt(this.map,!!this.mapselect.selectedmap ? null : this.mapselect.txt);
                           this.mapselect.selectedmap = true;
                        }
                        this.mapmc.gotoAndStop(this.map);
                        §§goto(addr183);
                     }
                     else
                     {
                        §§goto(addr149);
                     }
                  }
                  §§goto(addr42);
               }
               §§goto(addr149);
            }
            else if(param1.target.name.indexOf("Btn") >= 0)
            {
               if(_loc2_)
               {
                  §§goto(addr63);
               }
            }
            else if(param1.target.name == "createbtn")
            {
               if(!_loc3_)
               {
                  §§push(Boolean(root.q.Loading));
                  if(!_loc3_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr142);
                        }
                     }
                     §§goto(addr148);
                  }
                  addr142:
                  §§pop();
                  if(!_loc3_)
                  {
                     addr148:
                     if(!root.battle)
                     {
                        MovieClip(root).createbattle("PVP",this.map,"",false,this.passwordtxt.text,this.room.Players);
                        if(!_loc3_)
                        {
                           addr175:
                        }
                        else
                        {
                           addr181:
                           this.close();
                        }
                        §§goto(addr42);
                     }
                  }
                  addr149:
                  return;
               }
               §§goto(addr175);
            }
            else if(param1.target.name == "closebtn")
            {
               §§goto(addr181);
            }
         }
         §§goto(addr42);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            removeEventListener(MouseEvent.CLICK,this.clicked);
         }
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.clear();
            if(!_loc2_)
            {
               root.pvpcreate = null;
               if(!_loc2_)
               {
                  root.removeChild(this);
               }
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         root.translateButtons(this);
         this.bg.titletxt.text = root.getTxt("Create Battle",this.bg.titletxt);
         if(!_loc2_)
         {
            this.bg.maplabel.text = root.getTxt("Map",this.bg.maplabel);
            this.bg.passlabel.text = root.getTxt("Password",this.bg.passlabel) + "?";
            if(!_loc2_)
            {
               addr63:
               MovieClip(root).q.raster(this.bg);
               if(this.room.Players == 8)
               {
                  if(_loc1_)
                  {
                     this.map = "The Tavern";
                     this.mapmc.gotoAndStop(this.map);
                     addr99:
                     this.mapselect.txt.text = root.getTxt(this.map,this.mapselect.txt);
                     if(_loc1_)
                     {
                        addEventListener(MouseEvent.CLICK,this.clicked);
                     }
                     addr87:
                     addr80:
                  }
                  return;
               }
               this.map = "The Colosseum";
               if(_loc1_)
               {
                  §§goto(addr87);
               }
               §§goto(addr99);
            }
            §§goto(addr80);
         }
         §§goto(addr63);
      }
   }
}
