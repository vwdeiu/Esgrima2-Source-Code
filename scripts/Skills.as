package
{
   import Esgrima2_fla.*;
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
   
   public dynamic class Skills extends MovieClip
   {
       
      
      public var pointtxt:TextField;
      
      public var drag:MovieClip;
      
      public var titletxt:TextField;
      
      public var bg:MovieClip;
      
      public var closebtn:Close;
      
      public var a:MovieClip;
      
      public var WarriorSkills:Vector.<String>;
      
      public var MusketeerSkills:Vector.<String>;
      
      public var ClericSkills:Vector.<String>;
      
      public var GuardianSkills:Vector.<String>;
      
      public var BerserkerSkills:Vector.<String>;
      
      public var SamuraiSkills:Vector.<String>;
      
      public function Skills()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(_loc2_)
            {
               addFrameScript(0,this.frame1);
            }
         }
      }
      
      public function list() : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:* = 0;
         var _loc6_:* = null;
         var _loc7_:Object = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:MovieClip = null;
         var _loc11_:SimpleButton = null;
         if(!_loc13_)
         {
            §§push(Boolean(this.bg));
            if(_loc12_)
            {
               if(§§pop())
               {
                  if(!_loc13_)
                  {
                     §§goto(addr47);
                  }
                  §§goto(addr58);
               }
               §§goto(addr59);
            }
            addr47:
            §§pop();
            if(_loc12_)
            {
               addr51:
               §§push(this.bg.stage === null);
               if(_loc12_)
               {
                  addr59:
                  addr58:
                  if(!§§pop())
                  {
                     if(!_loc13_)
                     {
                        root.q.raster(this.bg);
                        if(!_loc12_)
                        {
                        }
                     }
                     §§goto(addr75);
                  }
                  root.q.RemoveButtons(this.a);
               }
               §§goto(addr59);
            }
            addr75:
            var _loc1_:Vector.<String> = root[root.pChar.Class + "Skills"];
            var _loc2_:int = _loc1_.length;
            if(_loc12_)
            {
               root.itemlist(this.a,_loc1_,_loc2_,"Skill");
            }
            var _loc3_:int = 0;
            if(_loc12_)
            {
               while(_loc3_ < _loc2_)
               {
                  §§push(_loc1_[_loc3_]);
                  if(_loc12_)
                  {
                     §§push(§§pop());
                     if(!_loc13_)
                     {
                        _loc4_ = §§pop();
                        if(_loc12_)
                        {
                           §§push(0);
                           if(!_loc13_)
                           {
                              _loc5_ = §§pop();
                              if(_loc12_)
                              {
                                 §§push(root.q.arrayContainsSplit(root.pChar.Skills.Active,_loc4_));
                                 if(_loc12_)
                                 {
                                    §§push(_loc6_ = §§pop());
                                    if(!_loc13_)
                                    {
                                       addr137:
                                       §§push("false");
                                       if(_loc12_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(!_loc13_)
                                             {
                                                §§push(root.q.arrayContainsSplit(root.pChar.Skills.Passive,_loc4_));
                                                if(_loc12_)
                                                {
                                                   addr162:
                                                   _loc6_ = §§pop();
                                                   if(_loc12_)
                                                   {
                                                      addr166:
                                                      if(_loc6_ !== "false")
                                                      {
                                                         if(!_loc12_)
                                                         {
                                                         }
                                                         addr179:
                                                         (_loc7_ = root[_loc4_.split(" ").join("_")]).LevelHave = _loc5_;
                                                         if(_loc12_)
                                                         {
                                                            §§push(1);
                                                            if(!_loc13_)
                                                            {
                                                               _loc8_ = §§pop();
                                                               addr206:
                                                               if(!_loc13_)
                                                               {
                                                                  §§push(int(_loc7_.Level));
                                                               }
                                                               (_loc10_ = this.a["s" + _loc3_]).alpha = 1;
                                                               if(_loc12_)
                                                               {
                                                                  _loc10_.filters = [];
                                                                  _loc10_.learnable = false;
                                                                  if(_loc13_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(root.pChar.Level < _loc9_)
                                                                  {
                                                                     _loc10_.alpha = 0.5;
                                                                     if(!_loc12_)
                                                                     {
                                                                        addr268:
                                                                        _loc10_.learnable = true;
                                                                        if(_loc13_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        addr274:
                                                                        (_loc11_ = new UpBox() as SimpleButton).name = _loc10_.name + "Up";
                                                                        if(!_loc13_)
                                                                        {
                                                                           _loc11_.y = _loc10_.y - 7;
                                                                           if(!_loc13_)
                                                                           {
                                                                              _loc11_.x = _loc10_.x + 23;
                                                                              if(_loc13_)
                                                                              {
                                                                              }
                                                                              addr317:
                                                                              _loc3_++;
                                                                              continue;
                                                                           }
                                                                           §§goto(addr317);
                                                                        }
                                                                        this.a.addChild(_loc11_);
                                                                     }
                                                                  }
                                                                  else if(root.pChar.Skills.Points < _loc8_)
                                                                  {
                                                                     _loc10_.filters = [root.redglow];
                                                                     if(_loc13_)
                                                                     {
                                                                        addr261:
                                                                        _loc10_.filters = [root.greenglow];
                                                                        if(!_loc12_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§goto(addr268);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr253:
                                                                     }
                                                                  }
                                                                  else if(_loc5_ < _loc7_.Points.length)
                                                                  {
                                                                     if(_loc12_)
                                                                     {
                                                                        §§goto(addr261);
                                                                     }
                                                                     §§goto(addr274);
                                                                  }
                                                                  §§goto(addr317);
                                                               }
                                                               §§goto(addr253);
                                                            }
                                                            _loc9_ = §§pop();
                                                         }
                                                         §§goto(addr206);
                                                      }
                                                   }
                                                   §§goto(addr179);
                                                }
                                                §§goto(addr166);
                                             }
                                             addr178:
                                             _loc5_ = int(int(_loc6_.split("_")[1]));
                                             §§goto(addr179);
                                          }
                                       }
                                       §§goto(addr166);
                                    }
                                    §§goto(addr162);
                                 }
                                 §§goto(addr137);
                              }
                              §§goto(addr166);
                           }
                           §§goto(addr178);
                        }
                        §§goto(addr179);
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr137);
               }
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function generate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.list();
            if(!_loc2_)
            {
               addr21:
               this.pointtxt.text = root.pChar.Skills.Points;
            }
            return;
         }
         §§goto(addr21);
      }
      
      public function clickm(param1:MouseEvent) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:MovieClip = null;
         var _loc2_:String = param1.target.name;
         if(_loc6_)
         {
            §§push(_loc2_);
            if(_loc6_)
            {
               §§push("closebtn");
               if(_loc6_)
               {
                  if(§§pop() == §§pop())
                  {
                     this.close();
                  }
                  else
                  {
                     §§push(_loc2_);
                     if(_loc6_)
                     {
                        addr43:
                        if(§§pop().indexOf("Up") >= 0)
                        {
                           if(!_loc7_)
                           {
                              if(root.skillconfirm)
                              {
                                 root.removeChild(root.skillconfirm);
                                 root.skillconfirm = null;
                                 addr51:
                              }
                              addr75:
                              _loc3_ = this.a[_loc2_.split("Up")[0]].item;
                              if(!_loc7_)
                              {
                                 trace(_loc3_);
                              }
                           }
                           (_loc4_ = root.skillconfirm = new SkillUpgrade() as MovieClip).skill = _loc3_;
                           if(!_loc7_)
                           {
                              _loc4_.x = 400;
                              if(!_loc6_)
                              {
                              }
                              §§goto(addr123);
                           }
                           _loc4_.y = 300;
                           if(!_loc7_)
                           {
                              root.addChildAt(_loc4_,root.getChildIndex(root.mouse));
                           }
                        }
                     }
                     §§goto(addr75);
                  }
                  addr123:
                  return;
               }
               §§goto(addr43);
            }
            §§goto(addr75);
         }
         §§goto(addr51);
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.clear();
            if(_loc1_)
            {
               root.q.removeChildFade(this);
               if(_loc2_)
               {
               }
               §§goto(addr32);
            }
            root.skillmc = null;
         }
         addr32:
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            removeEventListener(MouseEvent.CLICK,this.clickm);
            if(_loc2_)
            {
               root.dettachTool(this.a);
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.titletxt.text = root.getTxt(root.pChar.Class) + " " + root.getTxt("Skill Tree",this.titletxt);
            if(!_loc2_)
            {
               this.bg.skilllabel.text = root.getTxt("Your skill points:",this.bg.skilllabel);
               if(_loc1_)
               {
                  addr56:
                  this.a.gotoAndStop(root.pChar.Class);
                  this.generate();
                  if(!_loc2_)
                  {
                     addEventListener(MouseEvent.CLICK,this.clickm);
                     addr66:
                     if(!_loc2_)
                     {
                        root.attachTool(this.a,"Skill");
                        root.tip(9);
                        if(_loc2_)
                        {
                        }
                     }
                     §§goto(addr97);
                  }
                  root.q.createDrag(this.drag,this);
               }
               addr97:
               return;
            }
            §§goto(addr56);
         }
         §§goto(addr66);
      }
   }
}
