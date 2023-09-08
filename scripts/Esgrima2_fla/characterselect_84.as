package Esgrima2_fla
{
   import fl.motion.*;
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
   import fr.kouma.display.*;
   import playerio.Client;
   import playerio.DatabaseObject;
   import playerio.Message;
   
   public dynamic class characterselect_84 extends MovieClip
   {
       
      
      public var skinmc:MovieClip;
      
      public var deletebtn:SimpleButton;
      
      public var classprv:SimpleButton;
      
      public var sbg:MovieClip;
      
      public var phead:SimpleButton;
      
      public var h:MovieClip;
      
      public var createbtn:SimpleButton;
      
      public var slotstxt:TextField;
      
      public var nhead:SimpleButton;
      
      public var closebtn3:SimpleButton;
      
      public var a1:GuardIdle2;
      
      public var __id0_:MovieClip;
      
      public var a2:GuardIdle2;
      
      public var errortxt:TextField;
      
      public var skinbtn:SimpleButton;
      
      public var charlist:MovieClip;
      
      public var closebtn:Close;
      
      public var charmask:MovieClip;
      
      public var classnxt:SimpleButton;
      
      public var a:Stand;
      
      public var nametxt:TextField;
      
      public var bg3:MovieClip;
      
      public var playbtn:SimpleButton;
      
      public var colorselect:MovieClip;
      
      public var backbtn2:SimpleButton;
      
      public var newbtn:SimpleButton;
      
      public var standp:Point;
      
      public var select:DatabaseObject;
      
      public var stand:MovieClip;
      
      public var standb:AnimatedBitmap;
      
      public var cnum:int;
      
      public var slotad:MovieClip;
      
      public var WarriorText:String;
      
      public var WarriorStrikes:String;
      
      public var WarriorArmorType:String;
      
      public var WarriorHeadType:String;
      
      public var WarriorBegin:Vector.<int>;
      
      public var WarriorEquip:Vector.<String>;
      
      public var WarriorArmor:String;
      
      public var pequip:Vector.<String>;
      
      public var MusketeerText:String;
      
      public var MusketeerArmorType:String;
      
      public var MusketeerHeadType:String;
      
      public var MusketeerStrikes:String;
      
      public var MusketeerBegin:Vector.<int>;
      
      public var MusketeerArmor:String;
      
      public var MusketeerEquip:Vector.<String>;
      
      public var ClericText:String;
      
      public var ClericBegin:Vector.<int>;
      
      public var ClericArmor:String;
      
      public var ClericEquip:Vector.<String>;
      
      public var ClericStrikes:String;
      
      public var ClericArmorType:String;
      
      public var ClericHeadType:String;
      
      public var BerserkerText:String;
      
      public var BerserkerBegin:Vector.<int>;
      
      public var BerserkerArmor:String;
      
      public var BerserkerEquip:Vector.<String>;
      
      public var BerserkerStrikes:String;
      
      public var BerserkerArmorType:String;
      
      public var BerserkerHeadType:String;
      
      public var GuardianText:String;
      
      public var GuardianBegin:Vector.<int>;
      
      public var GuardianArmor:String;
      
      public var GuardianEquip:Vector.<String>;
      
      public var GuardianStrikes:String;
      
      public var GuardianArmorType:String;
      
      public var GuardianHeadType:String;
      
      public const SamuraiText:String = "The Samurai is a noble fighter; he is a master of the art of bowmanship, and at one with what we call nature.";
      
      public const SamuraiBegin:Vector.<int>;
      
      public const SamuraiArmor:String = "Warrior Armor";
      
      public const SamuraiEquip:Vector.<String>;
      
      public const SamuraiStrikes:String = "1-2";
      
      public const SamuraiArmorType:String = "Light Armor";
      
      public const SamuraiHeadType:String = "Hat";
      
      public var classesLocked:String;
      
      public var sw:MovieClip;
      
      public var startp:Point;
      
      public var classS:String;
      
      public var classID:int;
      
      public var classes:Vector.<String>;
      
      public var classmc:MovieClip;
      
      public var MusketeerA:AnimatedBitmapData;
      
      public var WarriorA:AnimatedBitmapData;
      
      public var ClericA:AnimatedBitmapData;
      
      public var SamuraiA:AnimatedBitmapData;
      
      public var BerserkerA:AnimatedBitmapData;
      
      public var GuardianA:AnimatedBitmapData;
      
      public var classr:AnimatedBitmap;
      
      public var statr:Bitmap;
      
      public var classesUnlocked:String;
      
      public var a1bd:AnimatedBitmapData;
      
      public var a1r:AnimatedBitmap;
      
      public var a2r:AnimatedBitmap;
      
      public var creating:Boolean;
      
      public var pskin:uint;
      
      public var clothes1b:AnimatedBitmap;
      
      public var clothes:String;
      
      public var pface:int;
      
      public var bonus:String;
      
      public var skin:uint;
      
      public var __animFactory___id0_af1:AnimatorFactory3D;
      
      public var __animArray___id0_af1:Array;
      
      public var ____motion___id0_af1_mat3DVec__:Vector.<Number>;
      
      public var ____motion___id0_af1_matArray__:Array;
      
      public var __motion___id0_af1:MotionBase;
      
      public function characterselect_84()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.SamuraiBegin = Vector.<int>([4,5,5,4,1]);
            if(!_loc1_)
            {
               this.SamuraiEquip = Vector.<String>(["Warrior Armor","None","Training Bow","None","None","None","None"]);
               super();
               addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
               if(this.__animFactory___id0_af1 == null)
               {
                  this.__animArray___id0_af1 = new Array();
                  this.__motion___id0_af1 = new MotionBase();
                  this.__motion___id0_af1.duration = 1;
                  this.__motion___id0_af1.overrideTargetTransform();
                  if(_loc2_)
                  {
                     this.__motion___id0_af1.addPropertyArray("visible",[true]);
                     if(_loc2_)
                     {
                        this.__motion___id0_af1.addPropertyArray("cacheAsBitmap",[true]);
                        this.__motion___id0_af1.addPropertyArray("blendMode",["normal"]);
                        this.__motion___id0_af1.addPropertyArray("opaqueBackground",[null]);
                        this.__motion___id0_af1.is3D = true;
                        this.__motion___id0_af1.motion_internal::spanStart = 1;
                        this.____motion___id0_af1_matArray__ = new Array();
                        addr124:
                        this.____motion___id0_af1_mat3DVec__ = new Vector.<Number>(16);
                        if(_loc2_)
                        {
                           this.____motion___id0_af1_mat3DVec__[0] = 1;
                           this.____motion___id0_af1_mat3DVec__[1] = 0;
                           this.____motion___id0_af1_mat3DVec__[2] = 0;
                           this.____motion___id0_af1_mat3DVec__[3] = 0;
                           if(_loc2_)
                           {
                              addr164:
                              this.____motion___id0_af1_mat3DVec__[4] = 0;
                              this.____motion___id0_af1_mat3DVec__[5] = 1;
                           }
                           this.____motion___id0_af1_mat3DVec__[6] = 0;
                           if(!_loc1_)
                           {
                              addr181:
                              this.____motion___id0_af1_mat3DVec__[7] = 0;
                              if(_loc2_)
                              {
                                 addr188:
                                 this.____motion___id0_af1_mat3DVec__[8] = 0;
                                 this.____motion___id0_af1_mat3DVec__[9] = 0;
                                 this.____motion___id0_af1_mat3DVec__[10] = 1;
                                 if(_loc2_)
                                 {
                                    this.____motion___id0_af1_mat3DVec__[11] = 0;
                                    this.____motion___id0_af1_mat3DVec__[12] = -217.149994;
                                    if(_loc2_)
                                    {
                                       addr218:
                                       this.____motion___id0_af1_mat3DVec__[13] = -135;
                                       if(_loc2_)
                                       {
                                          this.____motion___id0_af1_mat3DVec__[14] = 0;
                                          this.____motion___id0_af1_mat3DVec__[15] = 1;
                                          if(_loc2_)
                                          {
                                             addr239:
                                             §§push(this.____motion___id0_af1_matArray__);
                                             if(!_loc1_)
                                             {
                                                §§pop().push(new Matrix3D(this.____motion___id0_af1_mat3DVec__));
                                                this.__motion___id0_af1.addPropertyArray("matrix3D",this.____motion___id0_af1_matArray__);
                                                §§goto(addr287);
                                             }
                                             §§pop().push(this.__motion___id0_af1);
                                          }
                                       }
                                       §§goto(addr287);
                                    }
                                    this.__animFactory___id0_af1 = new AnimatorFactory3D(null,this.__animArray___id0_af1);
                                    this.__animFactory___id0_af1.addTargetInfo(this,"__id0_",0,true,0,true,null,-1);
                                    §§goto(addr287);
                                 }
                                 §§goto(addr264);
                              }
                              §§goto(addr239);
                           }
                        }
                        §§goto(addr188);
                     }
                     §§goto(addr164);
                  }
                  §§goto(addr124);
               }
               addr287:
               if(_loc2_)
               {
                  addr264:
                  §§push(this.__animArray___id0_af1);
               }
               return;
            }
            §§goto(addr218);
         }
         §§goto(addr181);
      }
      
      public function playg(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!this.select)
            {
               if(!_loc4_)
               {
                  return;
               }
            }
            else
            {
               MovieClip(root).playGame(this.select);
            }
         }
         var _loc2_:int = MovieClip(root).q.vectorKeyID(root.chars,this.select.key);
         if(_loc3_)
         {
            §§push(!"LastPlayed");
            if(!_loc4_)
            {
               §§push(§§pop() in root.account);
               if(_loc3_)
               {
                  if(!§§pop())
                  {
                     if(!_loc4_)
                     {
                        §§pop();
                        if(_loc3_)
                        {
                           addr69:
                           §§push(root.account.LastPlayed === _loc2_);
                           if(!_loc3_)
                           {
                           }
                           §§goto(addr85);
                        }
                        §§goto(addr89);
                     }
                  }
                  addr85:
                  §§goto(addr84);
               }
               addr84:
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     addr89:
                     root.account.LastPlayed = new int(_loc2_);
                     if(!_loc4_)
                     {
                        root.acc.send("LastPlay",_loc2_);
                     }
                  }
               }
               return;
            }
            §§goto(addr85);
         }
         §§goto(addr69);
      }
      
      public function deletechar(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.select)
            {
               var _loc2_:MovieClip = new DeleteChar() as MovieClip;
               if(_loc4_)
               {
                  _loc2_.x = 400;
                  if(!_loc3_)
                  {
                     §§goto(addr52);
                  }
                  §§goto(addr68);
               }
               addr52:
               _loc2_.y = 300;
               if(!_loc3_)
               {
                  root.addChildAt(_loc2_,root.getChildIndex(root.mouse));
                  if(!_loc3_)
                  {
                     addr68:
                     _loc2_.char = this.select;
                  }
               }
               return;
            }
         }
      }
      
      public function generateSelection() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:DatabaseObject = null;
         var _loc4_:MovieClip = null;
         var _loc5_:* = 0;
         if(_loc6_)
         {
            this.cnum = MovieClip(root).chars.length;
         }
         var _loc1_:* = 2;
         if("Slots" in MovieClip(root).account)
         {
            §§push(int(root.account.Slots));
            if(_loc6_)
            {
               _loc1_ = §§pop();
               if(_loc6_)
               {
                  addr52:
                  this.slotstxt.text = String(root.getTxt("Slots") + " " + this.cnum + "/" + _loc1_);
                  trace("charlist:" + this.charlist);
                  MovieClip(root).q.RemoveChildren(this.charlist);
                  trace("charlist2:" + this.charlist);
                  if(!_loc7_)
                  {
                     §§push(this.cnum);
                     if(!_loc7_)
                     {
                        addr95:
                        if(§§pop() <= 0)
                        {
                           if(_loc6_)
                           {
                              if(!root.fader)
                              {
                                 addr102:
                                 root.q.fade(this,2);
                              }
                              else
                              {
                                 gotoAndStop(2);
                              }
                              return;
                           }
                           §§goto(addr102);
                        }
                        else
                        {
                           §§push(0);
                        }
                     }
                     var _loc2_:* = §§pop();
                     while(_loc2_ < this.cnum)
                     {
                        _loc3_ = MovieClip(root).chars[_loc2_];
                        (_loc4_ = new SelectChar() as MovieClip).x = 127.7;
                        if(!_loc7_)
                        {
                           §§push(_loc2_);
                           if(_loc6_)
                           {
                              §§push(int(§§pop() * 50));
                           }
                           _loc5_ = §§pop();
                           _loc4_.y = 30 + _loc5_;
                           if(_loc6_)
                           {
                              addr159:
                              this.charlist.addChild(_loc4_);
                              _loc4_.a.lvltxt.text = root.getTxt("Level",_loc4_.a.lvltxt) + " " + _loc3_.Level;
                           }
                           root.getTxt("Name",_loc4_.a.nametxt);
                           if(!_loc7_)
                           {
                              _loc4_.a.nametxt.text = _loc3_.key;
                              _loc4_.a.facemc.gotoAndStop(_loc3_.Class);
                              _loc4_.o = _loc3_;
                              _loc4_.mouseChildren = false;
                           }
                           MovieClip(root).q.asAnimatedButton(_loc4_);
                           if(!_loc7_)
                           {
                              trace("adding select listener");
                              if(_loc7_)
                              {
                                 continue;
                              }
                           }
                           _loc4_.addEventListener(MouseEvent.CLICK,this.selectchar,false,0,true);
                           if(_loc6_)
                           {
                              _loc2_++;
                           }
                           continue;
                        }
                        §§goto(addr159);
                     }
                     trace(this.charlist);
                     if(!_loc7_)
                     {
                        trace(this.charmask);
                        MovieClip(root).q.scrollbar(this.charlist,this.charmask,"left");
                        if(MovieClip(root).chars.length >= 1)
                        {
                           this.select = MovieClip(root).chars[0];
                           if(_loc6_)
                           {
                              §§goto(addr274);
                           }
                           §§goto(addr288);
                        }
                        addr274:
                        if("LastPlayed" in MovieClip(root).account)
                        {
                           addr288:
                           this.select = MovieClip(root).chars[MovieClip(root).account.LastPlayed];
                        }
                        if(this.select)
                        {
                           this.generatechar(this.select);
                        }
                        §§goto(addr307);
                     }
                     addr307:
                     return;
                  }
               }
               §§goto(addr102);
            }
            §§goto(addr95);
         }
         §§goto(addr52);
      }
      
      public function selectchar(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:DatabaseObject = param1.target.o;
         if(!_loc4_)
         {
            this.select = _loc2_;
            if(!_loc4_)
            {
               this.Clearchar();
               if(_loc3_)
               {
                  addr40:
                  this.generatechar(_loc2_);
               }
               return;
            }
         }
         §§goto(addr40);
      }
      
      public function newchar(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 2;
         if("Slots" in MovieClip(root).account)
         {
            trace(MovieClip(root).account.Slots);
            §§push(int(MovieClip(root).account.Slots));
            if(!_loc4_)
            {
               _loc2_ = §§pop();
               addr55:
               §§push(this.cnum);
            }
            if(§§pop() >= _loc2_)
            {
               this.slotAd();
               if(_loc3_)
               {
                  return;
               }
            }
            else
            {
               gotoAndStop(2);
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function slotAd() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.slotad)
            {
               if(!_loc1_)
               {
                  return;
               }
            }
            else
            {
               this.slotad = new SlotAd() as MovieClip;
               if(!_loc1_)
               {
                  addChild(this.slotad);
               }
            }
         }
      }
      
      public function Clearchar() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.standb)
            {
               if(!_loc2_)
               {
                  this.standb.destroy();
                  if(!_loc1_)
                  {
                  }
               }
               §§goto(addr42);
            }
            MovieClip(root).q.remove(this.stand);
         }
         addr42:
      }
      
      public function generatechar(param1:DatabaseObject) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_)
         {
            trace("Generating " + param1.key);
         }
         var _loc2_:uint = param1.Creation.Skin;
         var _loc3_:uint = param1.Creation.Face;
         var _loc4_:* = param1.Equip.Head[0].split("_")[0];
         if(_loc9_)
         {
            if(param1.Equip.Headwear[0].split("_")[0] !== "None")
            {
               if(!_loc10_)
               {
                  addr61:
                  §§push(param1.Equip.Headwear[0].split("_")[0]);
                  if(_loc9_)
                  {
                     _loc4_ = §§pop();
                     addr75:
                     §§push(param1.Equip.H1[0].split("_")[0]);
                  }
                  var _loc5_:* = §§pop();
                  var _loc6_:String = param1.Equip.H2[0].split("_")[0];
                  var _loc7_:String = param1.Equip.Armor[0].split("_")[0];
                  if(!_loc10_)
                  {
                     if(param1.Equip.Apparel[0].split("_")[0] !== "None")
                     {
                        if(_loc9_)
                        {
                           _loc7_ = param1.Equip.Apparel[0].split("_")[0];
                           if(!_loc10_)
                           {
                              addr138:
                              this.Clearchar();
                           }
                           var _loc8_:MovieClip;
                           (_loc8_ = new Stand() as MovieClip).gotoAndStop(param1.Class);
                           if(_loc9_)
                           {
                              _loc8_.a.head.gotoAndStop(_loc3_);
                              _loc8_.a.hat.gotoAndStop(_loc4_);
                              MovieClip(root).generateSkin(_loc8_,_loc2_);
                              if(_loc8_.a.wep)
                              {
                                 _loc8_.a.wep.gotoAndStop(_loc5_);
                              }
                              if(_loc8_.a.wep1)
                              {
                                 _loc8_.a.wep1.gotoAndStop(_loc5_);
                                 if(_loc9_)
                                 {
                                    addr189:
                                    if(_loc8_.a.wep2)
                                    {
                                       if(param1.Class !== "Samurai")
                                       {
                                          _loc8_.a.wep2.gotoAndStop(_loc6_);
                                       }
                                       if(param1.Class == "Samurai")
                                       {
                                          if(_loc9_)
                                          {
                                             _loc8_.a.wep2.gotoAndStop(_loc5_);
                                             addr221:
                                             if(_loc8_.a.weapon)
                                             {
                                                if(!_loc10_)
                                                {
                                                   _loc8_.a.weapon.gotoAndStop(_loc5_);
                                                   if(!_loc10_)
                                                   {
                                                      addr235:
                                                      if(_loc8_.a.shield)
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            _loc8_.a.shield.gotoAndStop(_loc6_);
                                                            if(!_loc10_)
                                                            {
                                                               §§goto(addr250);
                                                            }
                                                            §§goto(addr295);
                                                         }
                                                         §§goto(addr259);
                                                      }
                                                      §§goto(addr250);
                                                   }
                                                   addr250:
                                                   _loc8_.a.body.gotoAndStop(_loc7_);
                                                   if(_loc8_.a.dress)
                                                   {
                                                      addr259:
                                                      _loc8_.a.dress.gotoAndStop(_loc8_.a.body.currentFrame);
                                                      §§goto(addr267);
                                                   }
                                                   addr267:
                                                   _loc8_.a.hand1.gotoAndStop(_loc8_.a.body.currentFrame);
                                                   _loc8_.a.hand2.gotoAndStop(_loc8_.a.body.currentFrame);
                                                   _loc8_.a.arm1.gotoAndStop(_loc8_.a.body.currentFrame);
                                                   if(_loc8_.a.arm2)
                                                   {
                                                      addr295:
                                                      _loc8_.a.arm2.gotoAndStop(_loc8_.a.body.currentFrame);
                                                      if(_loc9_)
                                                      {
                                                         §§goto(addr306);
                                                      }
                                                      §§goto(addr375);
                                                   }
                                                   addr306:
                                                   _loc8_.a.fist1.gotoAndStop(_loc8_.a.body.currentFrame);
                                                   if(_loc8_.a.fist2)
                                                   {
                                                      _loc8_.a.fist2.gotoAndStop(_loc8_.a.body.currentFrame);
                                                   }
                                                   §§goto(addr326);
                                                }
                                                §§goto(addr259);
                                             }
                                             §§goto(addr235);
                                             addr209:
                                          }
                                          addr326:
                                          if(_loc8_.a.leg1)
                                          {
                                             _loc8_.a.leg1.gotoAndStop(_loc8_.a.body.currentFrame);
                                             if(_loc9_)
                                             {
                                                §§goto(addr341);
                                             }
                                             §§goto(addr439);
                                          }
                                          addr341:
                                          if(_loc8_.a.leg2)
                                          {
                                             if(!_loc10_)
                                             {
                                                _loc8_.a.leg2.gotoAndStop(_loc8_.a.body.currentFrame);
                                                §§goto(addr356);
                                             }
                                             §§goto(addr403);
                                          }
                                          §§goto(addr356);
                                       }
                                    }
                                    §§goto(addr221);
                                 }
                                 §§goto(addr209);
                              }
                              §§goto(addr189);
                           }
                           addr356:
                           _loc8_.a.leg3.gotoAndStop(_loc8_.a.body.currentFrame);
                           _loc8_.a.leg4.gotoAndStop(_loc8_.a.body.currentFrame);
                           if(_loc9_)
                           {
                              addr375:
                              _loc8_.a.foot1.gotoAndStop(_loc8_.a.body.currentFrame);
                              _loc8_.a.foot2.gotoAndStop(_loc8_.a.body.currentFrame);
                              addChildAt(_loc8_,getChildIndex(this.sbg) + 1);
                              if(!_loc10_)
                              {
                                 this.standb = MovieClip(root).q.rasterize(_loc8_.a,true,true,false,true);
                                 addr403:
                                 if(_loc10_)
                                 {
                                 }
                                 §§goto(addr429);
                              }
                              _loc8_.mouseEnabled = false;
                           }
                           addr429:
                           _loc8_.mouseChildren = false;
                           if(_loc9_)
                           {
                              _loc8_.x = this.standp.x;
                              addr439:
                              _loc8_.y = this.standp.y;
                           }
                           return;
                        }
                     }
                  }
                  §§goto(addr138);
               }
            }
            §§goto(addr75);
         }
         §§goto(addr61);
      }
      
      public function go1(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            var e:MouseEvent = param1;
            if(!_loc4_)
            {
               this.backbtn2.removeEventListener(MouseEvent.CLICK,this.go1);
               if(_loc3_)
               {
                  addr43:
                  MovieClip(root).q.fade(this,1,null,function():void
                  {
                     Clear();
                  });
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      public function generate(param1:MouseEvent = null) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:AnimatedBitmapData = null;
         var _loc4_:ColorTransform = null;
         var _loc5_:uint = 0;
         if(_loc8_)
         {
            if(param1 !== null)
            {
               if(param1.target.name == "classnxt")
               {
                  var _loc6_:*;
                  §§push((_loc6_ = this).classID);
                  if(_loc8_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc7_:* = §§pop();
                  if(_loc8_)
                  {
                     _loc6_.classID = _loc7_;
                  }
                  if(!_loc9_)
                  {
                     addr71:
                     §§push(this.classID);
                     if(!_loc9_)
                     {
                        if(§§pop() <= 0)
                        {
                           addr78:
                           this.classID = this.classes.length;
                        }
                        §§push(this.classID);
                     }
                     if(§§pop() > this.classes.length)
                     {
                        if(_loc8_)
                        {
                           addr91:
                           this.classID = 1;
                        }
                     }
                  }
                  §§push(this.classes[this.classID - 1]);
                  if(_loc8_)
                  {
                     §§push(§§pop());
                  }
                  var _loc2_:* = §§pop();
                  trace(_loc2_);
                  this.classmc.gotoAndStop(_loc2_);
                  if(!_loc9_)
                  {
                     if(this.classr)
                     {
                        if(!_loc9_)
                        {
                           this.classr.destroy();
                           addr124:
                           this.classmc.type = _loc2_;
                           this.classmc.gotoAndStop(_loc2_);
                           if(_loc8_)
                           {
                              this.classS = _loc2_;
                              if(_loc8_)
                              {
                                 this.sw.a.title.text = root.getTxt(_loc2_,!!this.sw.a.txtDone ? null : this.sw.a.title);
                                 this.sw.a.txt.text = root.getTxt(_loc2_ + "Description",!!this.sw.a.txtDone ? null : this.sw.a.txt);
                                 if(_loc8_)
                                 {
                                    this.sw.a.strikelabel.text = root.getTxt("Strikes per attack",!!this.sw.a.txtDone ? null : this.sw.a.strikelabel);
                                    this.sw.a.bodylabel.text = root.getTxt("Body",!!this.sw.a.txtDone ? null : this.sw.a.bodylabel);
                                    this.sw.a.headlabel.text = root.getTxt("Head",!!this.sw.a.txtDone ? null : this.sw.a.headlabel);
                                    if(_loc8_)
                                    {
                                       this.sw.a.armortxt.text = root.getTxt(this[_loc2_ + "ArmorType"],!!this.sw.a.txtDone ? null : this.sw.a.armortxt);
                                       this.sw.a.armormc.gotoAndStop(this[_loc2_ + "ArmorType"]);
                                       this.sw.a.headtxt.text = root.getTxt(this[_loc2_ + "HeadType"],!!this.sw.a.txtDone ? null : this.sw.a.headtxt);
                                       if(_loc8_)
                                       {
                                          this.sw.a.headmc.gotoAndStop(this[_loc2_ + "HeadType"]);
                                          this.sw.a.striketxt.text = this[_loc2_ + "Strikes"];
                                          if(!this.sw.a.txtDone)
                                          {
                                             if(!_loc9_)
                                             {
                                                root.changeButtonText(this.sw.a.choosebtn);
                                                addr350:
                                                this.sw.a.txtDone = true;
                                                if(this.classmc.lockmc)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      this.classmc.removeChild(this.classmc.lockmc);
                                                      if(_loc8_)
                                                      {
                                                         addr370:
                                                         this.classmc.lockmc = null;
                                                         addr374:
                                                         §§push(this.classesLocked);
                                                         if(!_loc9_)
                                                         {
                                                            §§push(_loc2_);
                                                            if(_loc8_)
                                                            {
                                                               §§push(§§pop().indexOf(§§pop()) >= 0);
                                                               if(!_loc9_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        addr391:
                                                                        §§pop();
                                                                        §§push(this.classesUnlocked);
                                                                        if(!_loc9_)
                                                                        {
                                                                           addr400:
                                                                           if(§§pop().indexOf(_loc2_) < 0)
                                                                           {
                                                                              this.sw.a.txt.text = "?";
                                                                              if(_loc8_)
                                                                              {
                                                                                 §§push(_loc2_);
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    addr414:
                                                                                    §§push("Berserker");
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       if(§§pop() == §§pop())
                                                                                       {
                                                                                          this.sw.a.txt.text = root.getTxt("BerserkerUnlock",!!this.sw.a.txtDone ? null : this.sw.a.txt);
                                                                                          addr418:
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             addr449:
                                                                                             §§push(_loc2_);
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                addr452:
                                                                                                §§push("Guardian");
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   if(§§pop() == §§pop())
                                                                                                   {
                                                                                                      this.sw.a.txt.text = root.getTxt("GuardianUnlock",!!this.sw.a.txtDone ? null : this.sw.a.txt);
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         addr480:
                                                                                                         §§push(_loc2_);
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            addr484:
                                                                                                            §§push("Empire Officer");
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               addr488:
                                                                                                               if(§§pop() == §§pop())
                                                                                                               {
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     this.sw.a.txt.text = root.getTxt("OfficerUnlock",!!this.sw.a.txtDone ? null : this.sw.a.txt);
                                                                                                                     addr492:
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        addr515:
                                                                                                                        this.sw.a.title.text = "";
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           addr524:
                                                                                                                           trace(this.classesLocked);
                                                                                                                           addr528:
                                                                                                                           trace(this.classesUnlocked);
                                                                                                                           trace(this.classesLocked.indexOf(_loc2_));
                                                                                                                        }
                                                                                                                        §§goto(addr528);
                                                                                                                     }
                                                                                                                     trace(this.classesUnlocked.indexOf(_loc2_));
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        (_loc4_ = new ColorTransform()).color = 0;
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           this.classmc.a.transform.colorTransform = _loc4_;
                                                                                                                           addr562:
                                                                                                                           this.classmc.a.visible = false;
                                                                                                                           if(_loc2_ == "Empire Officer")
                                                                                                                           {
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 addr573:
                                                                                                                                 this.classmc.a.wep1.gotoAndStop("Swamp Striker");
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    addr581:
                                                                                                                                    this.classmc.a.hat.gotoAndStop("Royal Grenader Hat");
                                                                                                                                    addr587:
                                                                                                                                    if(this[_loc2_ + "A"] !== null)
                                                                                                                                    {
                                                                                                                                       addr594:
                                                                                                                                       _loc3_ = this[_loc2_ + "A"];
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       _loc5_ = getTimer();
                                                                                                                                       _loc3_ = new AnimatedBitmapData(this.classmc.a,true,true,0,1,null,null,"",1,null,true);
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          this[_loc2_ + "A"] = _loc3_;
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          addr647:
                                                                                                                                          this.classr = new AnimatedBitmap(this[_loc2_ + "A"],Event.ENTER_FRAME,60,false,"auto",false);
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             this.classmc.addChild(this.classr);
                                                                                                                                             if(_loc8_)
                                                                                                                                             {
                                                                                                                                                this.classr.x = this.classmc.a.x;
                                                                                                                                                if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   this.classr.y = this.classmc.a.y;
                                                                                                                                                   this.pequip = this[_loc2_ + "Equip"];
                                                                                                                                                   if(this.statr)
                                                                                                                                                   {
                                                                                                                                                      this.statr.bitmapData.dispose();
                                                                                                                                                      if(this.statr.parent !== null)
                                                                                                                                                      {
                                                                                                                                                         addr707:
                                                                                                                                                         this.statr.parent.removeChild(this.statr);
                                                                                                                                                         if(_loc8_)
                                                                                                                                                         {
                                                                                                                                                            addr715:
                                                                                                                                                            this.sw.a.addChild(this.sw.a.a);
                                                                                                                                                            MovieClip(root).generateStats(this.sw.a.a,this[_loc2_ + "Begin"]);
                                                                                                                                                            this.sw.gotoAndPlay(2);
                                                                                                                                                            if(_loc8_)
                                                                                                                                                            {
                                                                                                                                                               addr743:
                                                                                                                                                               this.statr = MovieClip(root).q.raster(this.sw.a.a,true,null,false);
                                                                                                                                                               §§push(this.classesLocked);
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.classS);
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().indexOf(§§pop()) >= 0);
                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop();
                                                                                                                                                                              addr783:
                                                                                                                                                                              §§push(this.classesUnlocked.indexOf(this.classS) < 0);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        addr787:
                                                                                                                                                                        this.sw.a.choosebtn.visible = false;
                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           addr795:
                                                                                                                                                                           this.classmc.lockmc = new Lock() as MovieClip;
                                                                                                                                                                           this.classmc.lockmc.x = this.classmc.lockspawn.x;
                                                                                                                                                                        }
                                                                                                                                                                        this.classmc.lockmc.y = this.classmc.lockspawn.y;
                                                                                                                                                                        addr818:
                                                                                                                                                                        this.classmc.lockmc.scaleX = 0.303162;
                                                                                                                                                                        this.classmc.lockmc.scaleY = 0.303162;
                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           this.classmc.lockmc.cacheAsBitmap = true;
                                                                                                                                                                        }
                                                                                                                                                                        this.classmc.addChild(this.classmc.lockmc);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        this.sw.a.choosebtn.visible = true;
                                                                                                                                                                     }
                                                                                                                                                                     return;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr783);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr818);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr743);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr715);
                                                                                                                                                }
                                                                                                                                                §§goto(addr787);
                                                                                                                                             }
                                                                                                                                             §§goto(addr707);
                                                                                                                                          }
                                                                                                                                          §§goto(addr795);
                                                                                                                                       }
                                                                                                                                       trace("Raster for " + _loc2_ + " took: " + (getTimer() - _loc5_));
                                                                                                                                    }
                                                                                                                                    §§goto(addr647);
                                                                                                                                 }
                                                                                                                                 §§goto(addr587);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr587);
                                                                                                                        }
                                                                                                                        §§goto(addr562);
                                                                                                                     }
                                                                                                                     §§goto(addr594);
                                                                                                                  }
                                                                                                                  §§goto(addr573);
                                                                                                               }
                                                                                                               §§goto(addr515);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr562);
                                                                                                      }
                                                                                                      §§goto(addr524);
                                                                                                   }
                                                                                                   §§goto(addr480);
                                                                                                }
                                                                                                §§goto(addr488);
                                                                                             }
                                                                                             §§goto(addr562);
                                                                                          }
                                                                                          §§goto(addr587);
                                                                                       }
                                                                                       §§goto(addr449);
                                                                                    }
                                                                                    §§goto(addr562);
                                                                                 }
                                                                                 §§goto(addr484);
                                                                              }
                                                                              §§goto(addr418);
                                                                           }
                                                                           §§goto(addr562);
                                                                        }
                                                                        §§goto(addr452);
                                                                     }
                                                                  }
                                                                  §§goto(addr400);
                                                               }
                                                               §§goto(addr391);
                                                            }
                                                            §§goto(addr400);
                                                         }
                                                         §§goto(addr414);
                                                      }
                                                      §§goto(addr524);
                                                   }
                                                   §§goto(addr374);
                                                }
                                                §§goto(addr370);
                                             }
                                             §§goto(addr562);
                                          }
                                          §§goto(addr350);
                                       }
                                       §§goto(addr515);
                                    }
                                    §§goto(addr562);
                                 }
                                 §§goto(addr418);
                              }
                              §§goto(addr492);
                           }
                           §§goto(addr350);
                        }
                        §§goto(addr581);
                     }
                     §§goto(addr124);
                  }
                  §§goto(addr370);
               }
               else
               {
                  §§push((_loc6_ = this).classID);
                  if(!_loc9_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc7_ = §§pop();
                  if(!_loc9_)
                  {
                     _loc6_.classID = _loc7_;
                  }
                  if(!_loc9_)
                  {
                     §§goto(addr71);
                  }
               }
               §§goto(addr78);
            }
            §§goto(addr71);
         }
         §§goto(addr91);
      }
      
      public function walk(param1:Event) : void
      {
      }
      
      public function Clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         MovieClip(root).q.remove(this.sw,"",false);
         if(!_loc1_)
         {
            this.sw = null;
            if(this.classr)
            {
               this.classr.destroy();
            }
         }
         if(this.a1r)
         {
            if(!_loc1_)
            {
               this.a1r.destroy();
               if(_loc2_)
               {
                  addr56:
                  if(this.a2r)
                  {
                     if(_loc2_)
                     {
                        this.a2r.destroy();
                        if(!_loc1_)
                        {
                           addr74:
                           this.classnxt.removeEventListener(MouseEvent.CLICK,this.generate);
                           if(_loc2_)
                           {
                              this.classprv.removeEventListener(MouseEvent.CLICK,this.generate);
                           }
                        }
                     }
                  }
                  §§goto(addr74);
               }
               return;
            }
            §§goto(addr74);
         }
         §§goto(addr56);
      }
      
      public function choose(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var e:MouseEvent = param1;
         §§push(this.classS);
         if(_loc3_)
         {
            if(§§pop() == "")
            {
               if(_loc3_)
               {
                  return;
               }
            }
            else
            {
               §§push(this.classesLocked);
               if(!_loc4_)
               {
                  §§push(this.classS);
                  if(!_loc4_)
                  {
                     §§push(§§pop().indexOf(§§pop()) >= 0);
                     if(!_loc4_)
                     {
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              §§pop();
                              addr65:
                              §§push(this.classesUnlocked.indexOf(this.classS) < 0);
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           return;
                        }
                     }
                     else
                     {
                        this.sw.a.choosebtn.removeEventListener(MouseEvent.CLICK,this.choose);
                        addr88:
                        MovieClip(root).q.fade(this,3,null,function():void
                        {
                           Clear();
                        });
                     }
                     return;
                  }
               }
               §§goto(addr65);
            }
            §§goto(addr88);
         }
         §§goto(addr65);
      }
      
      public function prevhead(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.h.getChildAt(0).currentFrame == 1)
            {
               if(_loc3_)
               {
                  return;
               }
               §§goto(addr43);
            }
            else
            {
               this.h.getChildAt(0).prevFrame();
               if(_loc3_)
               {
                  addr43:
                  this.pface = this.h.getChildAt(0).currentFrame;
                  if(!_loc2_)
                  {
                     addr52:
                     this.generateSkin();
                  }
                  return;
               }
            }
         }
         §§goto(addr52);
      }
      
      public function nexthead(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.h.getChildAt(0).currentFrame == this.h.getChildAt(0).totalFrames)
            {
               if(_loc3_)
               {
                  return;
               }
            }
            else
            {
               this.h.getChildAt(0).nextFrame();
               if(!_loc2_)
               {
                  addr55:
                  this.pface = this.h.getChildAt(0).currentFrame;
                  if(!_loc3_)
                  {
                  }
                  §§goto(addr67);
               }
               this.generateSkin();
            }
            addr67:
            return;
         }
         §§goto(addr55);
      }
      
      public function Clear3(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.skinbtn.removeEventListener(MouseEvent.CLICK,this.openskin);
         this.closebtn3.removeEventListener(MouseEvent.CLICK,this.close3);
         if(_loc2_)
         {
            this.createbtn.removeEventListener(MouseEvent.CLICK,this.create);
            if(!_loc3_)
            {
               this.clothes1b.stop();
               this.clothes1b.destroy();
               if(_loc2_)
               {
                  root.q.remove(this.statr);
                  if(!_loc3_)
                  {
                     this.phead.removeEventListener(MouseEvent.CLICK,this.prevhead);
                     §§goto(addr72);
                  }
                  §§goto(addr121);
               }
               §§goto(addr123);
            }
            §§goto(addr82);
         }
         addr72:
         this.nhead.removeEventListener(MouseEvent.CLICK,this.nexthead);
         if(!_loc3_)
         {
            addr82:
            this.colorselect.colorset.removeEventListener(MouseEvent.MOUSE_DOWN,this.colorselect.colorset.select);
            if(_loc2_)
            {
               if(this.colorselect.visible)
               {
                  if(!_loc3_)
                  {
                     this.colorselect.visible = false;
                     if(_loc3_)
                     {
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr123);
               }
               §§goto(addr121);
            }
            stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.closecolor);
            addr121:
            if(param1)
            {
               addr123:
               root.q.remove(this);
            }
            §§goto(addr127);
         }
         addr127:
      }
      
      public function close3(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.Clear3(false);
            if(!_loc3_)
            {
               addr24:
               gotoAndStop(2);
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function closecolor(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            trace("close");
            if(_loc2_)
            {
               §§push(Boolean(this.colorselect.visible));
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        addr41:
                        §§pop();
                        if(!_loc3_)
                        {
                           addr52:
                           §§push(param1.target === this.colorselect);
                           if(!_loc2_)
                           {
                           }
                           §§goto(addr60);
                        }
                        §§goto(addr63);
                     }
                  }
                  addr60:
                  if(!§§pop())
                  {
                     if(!_loc3_)
                     {
                        addr63:
                        this.colorselect.visible = false;
                        if(_loc3_)
                        {
                        }
                        §§goto(addr75);
                     }
                     stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.closecolor);
                     §§goto(addr75);
                  }
                  addr75:
                  return;
               }
               §§goto(addr41);
            }
            §§goto(addr63);
         }
         §§goto(addr52);
      }
      
      public function openskin(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.colorselect.visible)
            {
               if(!_loc2_)
               {
                  return;
               }
               addr38:
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.closecolor);
            }
            else
            {
               this.colorselect.visible = true;
               if(!_loc2_)
               {
                  §§goto(addr38);
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      public function create(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var Name:String = null;
         if(!_loc4_)
         {
            var created:* = undefined;
            var e:MouseEvent = param1;
            created = function(param1:Message, param2:Boolean):void
            {
               var _loc4_:Boolean = false;
               var _loc5_:Boolean = true;
               if(_loc5_)
               {
                  var m:Message = param1;
                  var s:Boolean = param2;
                  if(_loc5_)
                  {
                     root.acc.removeMessageHandler("Created",created);
                     if(!s)
                     {
                        errortxt.text = "Name taken.";
                        addr30:
                        creating = false;
                        if(_loc5_)
                        {
                           §§goto(addr35);
                        }
                     }
                     else
                     {
                        var c:Client = root.client;
                     }
                     c.bigDB.load("Chars",Name,function(param1:DatabaseObject):void
                     {
                        var _loc2_:Boolean = true;
                        var _loc3_:Boolean = false;
                        if(!("Chars" in MovieClip(root).account))
                        {
                           MovieClip(root).account.Chars = [];
                           if(!_loc3_)
                           {
                              addr20:
                              MovieClip(root).account.Chars.push(Name);
                              MovieClip(root).chars.push(param1);
                              param1.Money = uint(0);
                              if(!_loc3_)
                              {
                                 param1.XP = uint(0);
                                 if(!_loc3_)
                                 {
                                    param1.Inventory = [];
                                    addr52:
                                    param1.Level = 1;
                                 }
                                 param1.Shop = [];
                                 MovieClip(root).playGame(param1,Clear3);
                                 if(_loc2_)
                                 {
                                    addr67:
                                    creating = false;
                                 }
                                 return;
                              }
                              §§goto(addr52);
                           }
                           §§goto(addr67);
                        }
                        §§goto(addr20);
                     });
                     return;
                  }
                  §§goto(addr30);
               }
               addr35:
            };
            this.errortxt.text = "";
            if(this.nametxt.text == "")
            {
               if(!_loc4_)
               {
                  §§goto(addr56);
               }
               else
               {
                  addr63:
                  root.acc.addMessageHandler("Created",created);
                  Name = this.nametxt.text;
                  if(!_loc4_)
                  {
                     root.acc.send("Create",this.pface,this.classS,new int(this.skin),Name);
                  }
               }
            }
            else
            {
               this.creating = true;
               if(_loc3_)
               {
                  §§goto(addr63);
               }
            }
            return;
         }
         addr56:
      }
      
      public function generateSkin() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var clothes1:AnimatedBitmapData = new AnimatedBitmapData(this.a.a,true,false,0,1,null,null,"",1,function():void
         {
            MovieClip(root).setVisual(a,null,true);
         });
         if(this.clothes1b)
         {
            this.clothes1b.stop();
            this.clothes1b.destroy();
         }
         this.clothes1b = new AnimatedBitmap(clothes1,Event.ENTER_FRAME,60,false,"auto",false);
         this.clothes1b._destroyData = true;
         if(_loc3_)
         {
            this.a.a.visible = false;
            if(_loc3_)
            {
               this.clothes1b.x = this.a.a.x;
               if(_loc3_)
               {
                  this.clothes1b.y = this.a.a.y;
                  if(!_loc2_)
                  {
                     this.a.addChild(this.clothes1b);
                     this.a.a.stop();
                     §§goto(addr114);
                  }
               }
            }
            §§goto(addr120);
         }
         addr114:
         trace("generated");
         if(!_loc2_)
         {
            addr120:
            this.skin = this.pskin;
         }
      }
      
      public function clearglow() : void
      {
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.closebtn.addEventListener(MouseEvent.CLICK,MovieClip(root).closegame,false,0,true);
         this.playbtn.addEventListener(MouseEvent.CLICK,this.playg,false,0,true);
         this.deletebtn.addEventListener(MouseEvent.CLICK,this.deletechar,false,0,true);
         this.standp = new Point(342,175);
         stop();
         if(_loc2_)
         {
            root.changeButtonText(this.newbtn);
            root.changeButtonText(this.deletebtn);
            if(!_loc1_)
            {
               root.changeButtonText(this.playbtn);
               this.generateSelection();
               trace("adding new char listener");
            }
            this.newbtn.addEventListener(MouseEvent.CLICK,this.newchar,false,0,true);
         }
      }
      
      function frame2() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.WarriorText = "Warriors are among the strongest fighters in all of Rio de Luz and serve as excellent meat shields.";
            if(_loc2_)
            {
               this.WarriorStrikes = "1-2";
               if(!_loc1_)
               {
                  this.WarriorArmorType = "Light Armor";
                  this.WarriorHeadType = "Hat/Helmet";
                  this.WarriorBegin = Vector.<int>([5,6,3,4,2]);
                  this.WarriorEquip = Vector.<String>(["Warrior Armor","None","Wooden Sabre","None","None","None","None"]);
                  if(_loc2_)
                  {
                     this.WarriorArmor = "Warrior Armor";
                     if(_loc2_)
                     {
                        this.pequip = this.WarriorEquip;
                        this.MusketeerText = "Musketeers are the most agile gunners. They are most suited for high ranged DPS, due to their fast shooting speed.";
                        if(_loc2_)
                        {
                           this.MusketeerArmorType = "Coat";
                           this.MusketeerHeadType = "Hat";
                           this.MusketeerStrikes = "2-4";
                           if(_loc2_)
                           {
                              this.MusketeerBegin = Vector.<int>([4,4,4,2,4]);
                              this.MusketeerArmor = "Recruit Uniform";
                              this.MusketeerEquip = Vector.<String>(["Recruit Uniform","None","Training Pistol","None","Training Pistol","None","None"]);
                              this.ClericText = "Clerics are the healers of Rio de Luz. They are essential for aiding the tanks and damage dealers during boss fights.";
                              if(!_loc1_)
                              {
                                 addr127:
                                 this.ClericBegin = Vector.<int>([2,3,7,2,5]);
                                 if(!_loc1_)
                                 {
                                    this.ClericArmor = "Recruit Dress";
                                    if(!_loc1_)
                                    {
                                       this.ClericEquip = Vector.<String>(["Recruit Dress","None","Training Book","None","None","None","None"]);
                                       this.ClericStrikes = "1";
                                       addr166:
                                       this.ClericArmorType = "Dress";
                                       this.ClericHeadType = "Female Hat";
                                       if(!_loc1_)
                                       {
                                          this["Fire MageText"] = "Fire mages are the most powerful users of magic, and are specialized in burning their foes to ashes.";
                                          this["Fire MageBegin"] = Vector.<int>([3,4,6,3,6]);
                                          if(_loc2_)
                                          {
                                             this["Fire MageArmor"] = "Farmer Suit";
                                             addr198:
                                             this["Fire MageEquip"] = Vector.<String>(["Farmer Suit","None","Wooden Scepter","None","None","None","None"]);
                                             if(_loc2_)
                                             {
                                                this["Fire MageStrikes"] = "1-2";
                                                this["Fire MageArmorType"] = "Suit";
                                                this["Fire MageHeadType"] = "Hat";
                                                if(!_loc1_)
                                                {
                                                   this.BerserkerText = "Berserkers are the strongest fighters of Rio de Luz. Using their mighty greatsword, destroy any who stand in their way.";
                                                   this.BerserkerBegin = Vector.<int>([6,7,4,4,4]);
                                                   this.BerserkerArmor = "Warrior Armor";
                                                   if(!_loc1_)
                                                   {
                                                      this.BerserkerEquip = Vector.<String>(["Warrior Armor","None","Wooden Training Sword","None","None","None","None"]);
                                                      this.BerserkerStrikes = "2";
                                                      this.BerserkerArmorType = "Light Armor";
                                                      if(!_loc1_)
                                                      {
                                                         this.BerserkerHeadType = "Hat/Helmet";
                                                         this.GuardianText = "The Guardians are mighty beasts that co-operate with the human race to save the land. Without them, Rio de Luz would be lost.";
                                                         this.GuardianBegin = Vector.<int>([3,10,3,2,3]);
                                                         if(!_loc1_)
                                                         {
                                                            this.GuardianArmor = "Basic Armor";
                                                            if(!_loc1_)
                                                            {
                                                               this.GuardianEquip = Vector.<String>(["Basic Armor","None","Wooden Lance","None","Wooden Shield","None","None"]);
                                                               addr326:
                                                               this.GuardianStrikes = "1-2";
                                                               this.GuardianArmorType = "Heavy Armor";
                                                               if(!_loc1_)
                                                               {
                                                                  addr334:
                                                                  this.GuardianHeadType = "Helmet";
                                                                  if(!_loc1_)
                                                                  {
                                                                     this["Empire OfficerText"] = "The Empire Officer is a loyal warrior of the Empire. Enemies fear his flexible use of Rapiers and Pistols.";
                                                                     this["Empire OfficerBegin"] = Vector.<int>([4,5,4,4,2]);
                                                                     this["Empire OfficerArmor"] = "Recruit Uniform";
                                                                     this["Empire OfficerEquip"] = Vector.<String>(["Recruit Uniform","None","Training Pistol","None","Training Rapier","None","None"]);
                                                                     if(!_loc1_)
                                                                     {
                                                                        this["Empire OfficerStrikes"] = "2-3";
                                                                        if(_loc2_)
                                                                        {
                                                                           addr386:
                                                                           this["Empire OfficerArmorType"] = "Coat";
                                                                           this["Empire OfficerHeadType"] = "Hat";
                                                                           this.classesLocked = "Berserker,Guardian,Empire Officer,Samurai";
                                                                           this.Clearchar();
                                                                           if(_loc2_)
                                                                           {
                                                                              addr402:
                                                                              root.changeButtonText(this.backbtn2);
                                                                              if(_loc2_)
                                                                              {
                                                                                 this.backbtn2.addEventListener(MouseEvent.CLICK,this.go1);
                                                                                 this.sw = new ClassWindow() as MovieClip;
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    addChild(this.sw);
                                                                                    this.sw.x = 685.5;
                                                                                    this.sw.y = 300;
                                                                                    if(!_loc1_)
                                                                                    {
                                                                                       addr437:
                                                                                       MovieClip(root).q.raster(this.sw.a.bg,true);
                                                                                       this.startp = new Point(-42,461);
                                                                                       if(!_loc1_)
                                                                                       {
                                                                                          addr455:
                                                                                          this.classS = "Warrior";
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             addr461:
                                                                                             this.classID = 1;
                                                                                             if(!_loc1_)
                                                                                             {
                                                                                                this.classes = Vector.<String>(["Warrior","Musketeer","Cleric","Fire Mage","Berserker","Guardian","Empire Officer","Samurai"]);
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   addr486:
                                                                                                   this["Fire MageA"] = null;
                                                                                                }
                                                                                                this["Empire OfficerA"] = null;
                                                                                                if(!_loc1_)
                                                                                                {
                                                                                                   this.classesUnlocked = "";
                                                                                                   if(!_loc1_)
                                                                                                   {
                                                                                                      addr501:
                                                                                                      if("ClassesUnlocked" in root.account)
                                                                                                      {
                                                                                                         this.classesUnlocked = root.account.ClassesUnlocked;
                                                                                                      }
                                                                                                      §§goto(addr511);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr597);
                                                                                             }
                                                                                             §§goto(addr607);
                                                                                          }
                                                                                          §§goto(addr486);
                                                                                       }
                                                                                       addr511:
                                                                                       this.classnxt.addEventListener(MouseEvent.CLICK,this.generate);
                                                                                       this.classprv.addEventListener(MouseEvent.CLICK,this.generate);
                                                                                       this.generate();
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          addr529:
                                                                                          trace(this.sw);
                                                                                          this.sw.a.choosebtn.addEventListener(MouseEvent.CLICK,this.choose);
                                                                                          if(!_loc1_)
                                                                                          {
                                                                                             addr545:
                                                                                             this.a1bd = new AnimatedBitmapData(this.a1,true,false,0,1,null,null,"",1,null,true);
                                                                                             if(!_loc1_)
                                                                                             {
                                                                                                §§goto(addr564);
                                                                                             }
                                                                                             §§goto(addr597);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr564);
                                                                                    }
                                                                                    §§goto(addr455);
                                                                                 }
                                                                                 §§goto(addr461);
                                                                              }
                                                                           }
                                                                           §§goto(addr545);
                                                                        }
                                                                        addr564:
                                                                        this.a1r = new AnimatedBitmap(this.a1bd,Event.ENTER_FRAME,60,false,"auto",true);
                                                                        if(!_loc1_)
                                                                        {
                                                                           this.a2r = new AnimatedBitmap(this.a1bd,Event.ENTER_FRAME,60,false,"auto",true);
                                                                           addr597:
                                                                           this.a1r.replace(this.a1);
                                                                           this.a2r.replace(this.a2);
                                                                           addr607:
                                                                           this.a1r._destroyData = true;
                                                                           this.a2r._destroyData = true;
                                                                        }
                                                                        return;
                                                                     }
                                                                     §§goto(addr511);
                                                                  }
                                                                  §§goto(addr529);
                                                               }
                                                               §§goto(addr597);
                                                            }
                                                            §§goto(addr437);
                                                         }
                                                         §§goto(addr461);
                                                      }
                                                      §§goto(addr501);
                                                   }
                                                   §§goto(addr545);
                                                }
                                                §§goto(addr511);
                                             }
                                             §§goto(addr386);
                                          }
                                          §§goto(addr326);
                                       }
                                       §§goto(addr511);
                                    }
                                    §§goto(addr334);
                                 }
                                 §§goto(addr402);
                              }
                              §§goto(addr326);
                           }
                           §§goto(addr529);
                        }
                        §§goto(addr127);
                     }
                     §§goto(addr455);
                  }
                  §§goto(addr198);
               }
               §§goto(addr166);
            }
            §§goto(addr455);
         }
         §§goto(addr545);
      }
      
      function frame3() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.colorselect.visible = false;
         }
         this.skinmc.mouseEnabled = false;
         root.changeButtonText(this.closebtn3);
         if(_loc2_)
         {
            root.changeButtonText(this.createbtn);
            if(_loc2_)
            {
               this.h.gotoAndStop(this.classS);
               root.getTxt("Name",this.nametxt);
               this.nametxt.text = "";
               if(!_loc1_)
               {
                  this.phead.addEventListener(MouseEvent.CLICK,this.prevhead);
                  if(!_loc1_)
                  {
                     addr65:
                     this.nhead.addEventListener(MouseEvent.CLICK,this.nexthead);
                     if(!_loc1_)
                     {
                        addr74:
                        this.closebtn3.addEventListener(MouseEvent.CLICK,this.close3);
                        this.skinbtn.addEventListener(MouseEvent.CLICK,this.openskin);
                        if(_loc2_)
                        {
                           addr98:
                           this.nametxt.text = " ";
                           if(_loc2_)
                           {
                              stage.focus = this.nametxt;
                              this.nametxt.setSelection(this.nametxt.length,this.nametxt.length);
                              this.nametxt.text = "";
                              this.nametxt.restrict = "a-zA-Z0-9žčņāšģķļēūī";
                              if(!_loc1_)
                              {
                                 this.createbtn.addEventListener(MouseEvent.CLICK,this.create);
                                 this.a.pclass = this.classS;
                                 if(_loc2_)
                                 {
                                    addr143:
                                    this.a.gotoAndStop(this.classS);
                                    this.pskin = 8089441;
                                    this.generateSkin();
                                    addr160:
                                    this.clothes = "Green Uniform";
                                    if(_loc1_)
                                    {
                                    }
                                    §§goto(addr171);
                                 }
                                 this.pface = 1;
                                 if(_loc2_)
                                 {
                                    addr171:
                                    this.bonus = "Attack";
                                    if(!_loc1_)
                                    {
                                       addr177:
                                       this.skin = this.pskin;
                                    }
                                    §§goto(addr181);
                                 }
                                 addr181:
                                 return;
                              }
                              §§goto(addr160);
                           }
                           §§goto(addr177);
                        }
                     }
                     §§goto(addr143);
                  }
                  §§goto(addr74);
               }
               §§goto(addr98);
            }
            §§goto(addr65);
         }
         §§goto(addr177);
      }
   }
}
