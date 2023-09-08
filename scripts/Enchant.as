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
   import fr.kouma.display.AnimatedBitmap;
   import playerio.*;
   
   public dynamic class Enchant extends MovieClip
   {
       
      
      public var bs:Slot;
      
      public var drag:MovieClip;
      
      public var gs:Slot;
      
      public var bg:MovieClip;
      
      public var closebtn:Close;
      
      public var ctxt:TextField;
      
      public var enchantbtn:SimpleButton;
      
      public var iS:Slot;
      
      public function Enchant()
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
      
      public function refreshnew() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            root.setSlot(this.iS,"None");
            if(!_loc2_)
            {
               root.setSlot(this.gs,"None");
               if(_loc1_)
               {
                  §§goto(addr46);
               }
               §§goto(addr60);
            }
            §§goto(addr53);
         }
         addr46:
         root.setSlot(this.bs,"None");
         if(_loc1_)
         {
            addr53:
            this.ctxt.text = "";
            if(_loc1_)
            {
               addr60:
               this.enchantbtn.visible = false;
            }
         }
      }
      
      public function refresh() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Object = root.pChar.Equip;
         if(!_loc5_)
         {
            §§push(this.iS.item);
            §§push("None");
            if(_loc4_)
            {
               if(§§pop() !== §§pop())
               {
                  §§push(this.iS.arrayid);
                  if(!_loc5_)
                  {
                     if(§§pop().indexOf(".") >= 0)
                     {
                        root.setSlot(this.iS,_loc1_[this.iS.arrayid.split(".")[1]][0]);
                        addr67:
                        §§push(this.gs.item);
                        §§push("None");
                        if(_loc4_)
                        {
                           if(§§pop() !== §§pop())
                           {
                              §§push(this.gs.arrayid);
                              §§push(".");
                              if(!_loc5_)
                              {
                                 addr82:
                                 if(§§pop().indexOf(§§pop()) >= 0)
                                 {
                                    if(!_loc5_)
                                    {
                                       root.setSlot(this.gs,_loc1_[this.gs.arrayid.split(".")[1]][0]);
                                       addr118:
                                       §§push(this.bs.item);
                                       if(!_loc5_)
                                       {
                                          addr172:
                                          if(§§pop() !== "None")
                                          {
                                             §§push(this.bs.arrayid);
                                          }
                                          var _loc2_:* = int(this.iS.item.split("_").length - 2);
                                          if(!_loc5_)
                                          {
                                             §§push(_loc2_);
                                             if(!_loc5_)
                                             {
                                                if(§§pop() < 0)
                                                {
                                                   addr193:
                                                   if(_loc4_)
                                                   {
                                                      §§push(0);
                                                   }
                                                   var _loc3_:* = uint(root.gemChances[_loc2_]);
                                                   §§push(this.bs.item);
                                                   if(!_loc5_)
                                                   {
                                                      §§push("None");
                                                      if(!_loc5_)
                                                      {
                                                         if(§§pop() !== §§pop())
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               trace(root.items[this.bs.item.split("_")[0]]["Boost"]);
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(uint(§§pop() + int(Number(root.items[this.bs.item.split("_")[0]]["Boost"].split("_")[2]) * 100)));
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§goto(addr258);
                                                                     }
                                                                     §§goto(addr311);
                                                                  }
                                                                  §§goto(addr258);
                                                               }
                                                            }
                                                            §§goto(addr315);
                                                         }
                                                         addr258:
                                                         _loc3_ = §§pop();
                                                         this.ctxt.text = _loc3_ + "% " + root.getTxt("Chance",this.ctxt);
                                                         §§push(this.iS.item);
                                                         if(_loc4_)
                                                         {
                                                            addr277:
                                                            §§push("None");
                                                            if(_loc4_)
                                                            {
                                                               addr281:
                                                               §§push(§§pop() !== §§pop());
                                                               if(_loc4_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc4_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        addr291:
                                                                        §§pop();
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§goto(addr308);
                                                                        }
                                                                        §§goto(addr311);
                                                                     }
                                                                     addr308:
                                                                     §§goto(addr309);
                                                                  }
                                                                  addr309:
                                                                  §§goto(addr306);
                                                               }
                                                               §§goto(addr291);
                                                            }
                                                            addr306:
                                                            §§goto(addr305);
                                                         }
                                                         addr305:
                                                         if(this.gs.item !== "None" && _loc3_ > 0)
                                                         {
                                                            addr315:
                                                            this.enchantbtn.visible = true;
                                                            if(!_loc4_)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            this.enchantbtn.visible = false;
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr281);
                                                   }
                                                   §§goto(addr277);
                                                }
                                                §§goto(addr193);
                                             }
                                             _loc2_ = §§pop();
                                          }
                                          §§goto(addr193);
                                       }
                                       §§push(".");
                                       if(_loc4_)
                                       {
                                          addr133:
                                          if(§§pop().indexOf(§§pop()) >= 0)
                                          {
                                             addr136:
                                             root.setSlot(this.bs,_loc1_[this.bs.arrayid.split(".")[1]][0]);
                                             if(_loc5_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             root.setSlot(this.bs,root.pChar.Inventory[this.bs.id]);
                                          }
                                       }
                                       §§goto(addr172);
                                    }
                                    §§goto(addr118);
                                 }
                                 else
                                 {
                                    root.setSlot(this.gs,root.pChar.Inventory[this.gs.id]);
                                    if(_loc4_)
                                    {
                                       §§goto(addr118);
                                    }
                                 }
                                 §§goto(addr172);
                              }
                              §§goto(addr133);
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr133);
                     }
                     else
                     {
                        root.setSlot(this.iS,root.pChar.Inventory[this.iS.id]);
                        §§goto(addr67);
                     }
                  }
                  §§goto(addr172);
               }
               §§goto(addr67);
            }
            §§goto(addr82);
         }
         §§goto(addr136);
      }
      
      public function mouseup(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(!root.dragmc);
            if(_loc4_)
            {
               §§push(§§pop());
               if(_loc4_)
               {
                  if(!§§pop())
                  {
                     if(!_loc5_)
                     {
                        §§pop();
                        if(_loc4_)
                        {
                           addr33:
                           §§push(!root.dragmc.item);
                           if(_loc4_)
                           {
                              addr39:
                              if(!§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    §§pop();
                                    if(!_loc5_)
                                    {
                                       addr51:
                                       if(root.dragmc.item != "None")
                                       {
                                          var _loc2_:Object = root.items[root.dragmc.item.split("_")[0]];
                                          var _loc3_:String = root.isEquipable(root.dragmc.item);
                                          if(_loc4_)
                                          {
                                             trace("Slots" in _loc2_);
                                             if(!_loc5_)
                                             {
                                                trace(_loc3_);
                                                if(_loc4_)
                                                {
                                                   trace(param1.target.name);
                                                   trace(_loc2_);
                                                   trace(_loc2_.Type);
                                                   if(_loc4_)
                                                   {
                                                      §§push(param1.target.name == "iS");
                                                      if(!_loc5_)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc4_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               §§pop();
                                                               §§push(_loc3_);
                                                               if(!_loc5_)
                                                               {
                                                                  §§push("false");
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(§§pop() !== §§pop());
                                                                     if(_loc4_)
                                                                     {
                                                                        addr124:
                                                                        if(§§pop())
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§push(_loc2_.Itemtype.indexOf("Cosmetic") >= 0);
                                                                              §§push(_loc2_.Itemtype.indexOf("Cosmetic") >= 0);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    §§pop();
                                                                                    §§push(_loc2_.Itemtype.indexOf("Costume") >= 0);
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    return;
                                                                                 }
                                                                                 root.setSlot(this.iS,root.dragmc.item);
                                                                                 addr155:
                                                                                 this.iS.arrayid = root.dragmc.arrayid;
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    this.iS.id = root.dragmc.id;
                                                                                    §§push(this.gs.item);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr181:
                                                                                       §§push("None");
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr188:
                                                                                          §§push(§§pop() !== §§pop());
                                                                                          if(§§pop() !== §§pop())
                                                                                          {
                                                                                             §§pop();
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                §§push(root.items[this.gs.item.split("_")[0]].Slots.split(_loc3_).length < 2);
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   addr210:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      root.setSlot(this.gs,"None");
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr293:
                                                                                                   if(!(§§pop() && "Type" in _loc2_ && _loc2_.Type.indexOf("Booster") >= 0))
                                                                                                   {
                                                                                                      return;
                                                                                                   }
                                                                                                   root.setSlot(this.bs,root.dragmc.item);
                                                                                                   addr323:
                                                                                                   this.bs.item = root.dragmc.item;
                                                                                                   this.bs.arrayid = root.dragmc.arrayid;
                                                                                                   this.bs.id = root.dragmc.id;
                                                                                                   addr309:
                                                                                                }
                                                                                                §§goto(addr343);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr262);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr210);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr234:
                                                                                          §§push(§§pop() === §§pop());
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr239:
                                                                                             §§push(!§§pop());
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                §§pop();
                                                                                                addr242:
                                                                                                §§push("Slots");
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr247:
                                                                                                   if(§§pop() in _loc2_)
                                                                                                   {
                                                                                                      addr254:
                                                                                                      _loc3_ = root.isEquipable(this.iS.item);
                                                                                                      if(_loc2_.Slots.split(_loc3_).length < 2)
                                                                                                      {
                                                                                                         addr262:
                                                                                                         return;
                                                                                                      }
                                                                                                      root.setSlot(this.gs,root.dragmc.item);
                                                                                                      this.gs.arrayid = root.dragmc.arrayid;
                                                                                                      this.gs.id = root.dragmc.id;
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         §§goto(addr309);
                                                                                                      }
                                                                                                      addr343:
                                                                                                      this.refresh();
                                                                                                      return;
                                                                                                   }
                                                                                                   §§push(param1.target.name == "bs");
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      §§goto(addr293);
                                                                                                   }
                                                                                                   §§goto(addr295);
                                                                                                   §§goto(addr309);
                                                                                                }
                                                                                                §§goto(addr295);
                                                                                             }
                                                                                             §§goto(addr247);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr293);
                                                                                    }
                                                                                    §§goto(addr254);
                                                                                 }
                                                                                 §§goto(addr323);
                                                                              }
                                                                              §§goto(addr293);
                                                                           }
                                                                           §§goto(addr254);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(param1.target.name == "gs");
                                                                           §§push(param1.target.name == "gs");
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 §§pop();
                                                                                 addr228:
                                                                                 §§push(this.iS.item);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§goto(addr234);
                                                                                    §§push("None");
                                                                                 }
                                                                                 §§goto(addr254);
                                                                              }
                                                                              §§goto(addr239);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr239);
                                                                  }
                                                                  §§goto(addr234);
                                                               }
                                                               §§goto(addr181);
                                                            }
                                                            §§goto(addr124);
                                                         }
                                                         §§goto(addr188);
                                                      }
                                                      §§goto(addr239);
                                                   }
                                                   §§goto(addr323);
                                                }
                                                §§goto(addr242);
                                             }
                                             §§goto(addr228);
                                          }
                                          §§goto(addr155);
                                       }
                                    }
                                    return;
                                 }
                              }
                           }
                        }
                        §§goto(addr51);
                     }
                  }
               }
            }
            §§goto(addr39);
         }
         §§goto(addr33);
      }
      
      public function clickm(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Vector.<String> = null;
         var _loc3_:Vector.<String> = null;
         if(_loc4_)
         {
            if(param1.target.name == "closebtn")
            {
               if(_loc4_)
               {
                  addr32:
                  this.close();
                  if(!_loc4_)
                  {
                  }
                  §§goto(addr127);
               }
               addr73:
               if(this.gs.item == "None")
               {
                  §§goto(addr79);
               }
               else
               {
                  _loc2_ = Vector.<String>([this.iS.item,this.gs.item,this.bs.item]);
                  _loc3_ = Vector.<String>([this.iS.arrayid,this.gs.arrayid,this.bs.arrayid]);
                  if(!_loc5_)
                  {
                     root.enchant(_loc2_,_loc3_);
                  }
               }
            }
            else if(param1.target.name == "enchantbtn")
            {
               if(_loc4_)
               {
                  §§push(this.iS.item);
                  if(_loc4_)
                  {
                     §§push("None");
                     if(!_loc5_)
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc4_)
                        {
                           if(!§§pop())
                           {
                              if(_loc4_)
                              {
                                 §§pop();
                                 if(_loc4_)
                                 {
                                    §§goto(addr73);
                                 }
                                 §§goto(addr79);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr73);
               }
               addr79:
               return;
            }
            addr127:
            return;
         }
         §§goto(addr32);
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
               root.enchantmc = null;
               if(_loc2_)
               {
               }
               §§goto(addr32);
            }
            root.q.removeChildFade(this);
         }
         addr32:
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            removeEventListener(MouseEvent.MOUSE_UP,this.mouseup);
            if(!_loc1_)
            {
               removeEventListener(MouseEvent.CLICK,this.clickm);
               if(!_loc1_)
               {
                  addr42:
                  root.dettachTool(this);
               }
               return;
            }
         }
         §§goto(addr42);
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         root.translateButtons(this);
         if(!_loc2_)
         {
            this.refreshnew();
            if(_loc1_)
            {
               addEventListener(MouseEvent.MOUSE_UP,this.mouseup);
               root.attachTool(this);
               addEventListener(MouseEvent.CLICK,this.clickm);
               if(!_loc2_)
               {
                  this.bg.titletxt.text = root.getTxt("Enchanting",this.bg.titletxt);
                  if(_loc1_)
                  {
                     this.bg.itemtxt.text = root.getTxt("Insert item",this.bg.itemtxt);
                     addr73:
                     this.bg.gemtxt.text = root.getTxt("Insert gem",this.bg.gemtxt);
                     this.bg.boostertxt.text = root.getTxt("Insert booster",this.bg.boostertxt);
                     if(_loc1_)
                     {
                        addr103:
                        root.q.raster(this.bg);
                        if(_loc1_)
                        {
                           root.q.createDrag(this.drag,this);
                        }
                     }
                  }
                  return;
               }
               §§goto(addr103);
            }
         }
         §§goto(addr73);
      }
   }
}
