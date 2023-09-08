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
   
   public dynamic class QuestTalk extends MovieClip
   {
       
      
      public var infotxt:TextField;
      
      public var moneytxt:TextField;
      
      public var exptxt:TextField;
      
      public var s0:Slot;
      
      public var drag:MovieClip;
      
      public var s1:Slot;
      
      public var titletxt:TextField;
      
      public var s2:Slot;
      
      public var bg:MovieClip;
      
      public var closebtn:Close;
      
      public var s3:Slot;
      
      public var s4:Slot;
      
      public var s5:Slot;
      
      public var nametxt:TextField;
      
      public var btnpoint:Point;
      
      public var clicked:Boolean;
      
      public var p:DatabaseObject;
      
      public var nr:RegExp;
      
      public var quest:String;
      
      public var qname:String;
      
      public var o:Object;
      
      public var npc:String;
      
      public var done:Boolean;
      
      public var a:Boolean;
      
      public var items:Vector.<String>;
      
      public var speech:Vector.<String>;
      
      public var n:int;
      
      public var i:int;
      
      public var s:MovieClip;
      
      public var C:Class;
      
      public var btn:SimpleButton;
      
      public function QuestTalk()
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
      
      public function replace(param1:String) : String
      {
         return MovieClip(root).q.stringCheckReplace(this.nr,param1,this.p.key);
      }
      
      public function mclick(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = null;
         §§push(param1.target is SimpleButton);
         if(_loc3_)
         {
            if(§§pop())
            {
               if(param1.target.name == "Quest")
               {
                  §§push(this.clicked);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           return;
                        }
                        addr67:
                        §§push(this.qname);
                        if(!_loc4_)
                        {
                           addr75:
                           if(§§pop() in root.QuestInstances)
                           {
                              if(_loc3_)
                              {
                                 §§push(root.QuestInstances[this.qname]);
                                 if(_loc3_)
                                 {
                                    _loc2_ = §§pop();
                                    addr88:
                                    if(_loc2_.split("_")[1] == "1")
                                    {
                                       if(!_loc4_)
                                       {
                                          root.createInstance(_loc2_.split("_")[0]);
                                          if(_loc3_)
                                          {
                                             addr105:
                                             this.close();
                                          }
                                          else
                                          {
                                             §§goto(addr129);
                                          }
                                       }
                                       §§goto(addr135);
                                    }
                                    §§goto(addr105);
                                 }
                                 §§goto(addr88);
                              }
                              return;
                           }
                           §§goto(addr105);
                        }
                        §§goto(addr88);
                     }
                     else
                     {
                        MovieClip(root).connection.send("Quest",this.qname);
                        this.clicked = true;
                        if(_loc3_)
                        {
                           §§push(this.a);
                           if(!_loc4_)
                           {
                              if(!§§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    §§goto(addr67);
                                 }
                                 §§goto(addr88);
                              }
                              §§goto(addr105);
                           }
                           §§goto(addr75);
                        }
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr75);
               }
               else if(root.scenemc)
               {
                  if(_loc3_)
                  {
                     root.q.remove(root.scenemc);
                     if(!_loc4_)
                     {
                        addr129:
                        root.scenemc = null;
                        if(!_loc4_)
                        {
                           addr135:
                           this.close();
                           §§goto(addr137);
                        }
                        addr137:
                        return;
                     }
                  }
                  §§goto(addr135);
               }
            }
            §§goto(addr135);
         }
         §§goto(addr75);
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
            MovieClip(root).dettachTool(this);
            if(!_loc2_)
            {
               addr32:
               MovieClip(root).q.removeChildFade(this);
               if(_loc1_)
               {
                  MovieClip(root).questtalk = null;
               }
            }
            return;
         }
         §§goto(addr32);
      }
      
      function frame1() : *
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         this.btnpoint = new Point(163.6,234.7);
         if(!_loc4_)
         {
            this.clicked = false;
            if(_loc3_)
            {
               this.p = MovieClip(root).pChar;
               this.nr = /{Name}/;
               if(!_loc4_)
               {
                  this.o = MovieClip(root).quests[this.qname];
                  this.items = this.o.Items;
                  §§push("Items");
                  if(!_loc4_)
                  {
                     §§push(§§pop() + this.p.Class);
                  }
                  §§push(§§pop() in this.o);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           this.items = this.o["Items" + this.p.Class];
                           addr83:
                           this.nametxt.text = root.getTxt(this.npc,this.nametxt);
                           this.titletxt.text = root.getTxt(this.qname,this.titletxt);
                           if(_loc3_)
                           {
                              this.speech = new Vector.<String>();
                              if(!_loc4_)
                              {
                                 trace(this.speech);
                                 if(_loc3_)
                                 {
                                    this.s0.visible = false;
                                    addr124:
                                    this.s1.visible = false;
                                    this.s2.visible = false;
                                    this.s3.visible = false;
                                    this.s4.visible = false;
                                    if(_loc3_)
                                    {
                                       this.s5.visible = false;
                                       this.n = this.items.length;
                                       if(this.items[0] !== "")
                                       {
                                          if(!_loc4_)
                                          {
                                             this.i = 0;
                                             while(this.i < this.n)
                                             {
                                                §§push(this);
                                                §§push(this);
                                                §§push("s");
                                                if(!_loc4_)
                                                {
                                                   §§push(§§pop() + this.i);
                                                }
                                                §§pop().s = §§pop()[§§pop()];
                                                if(_loc3_)
                                                {
                                                   MovieClip(root).setSlot(this.s,this.items[this.i]);
                                                   if(_loc3_)
                                                   {
                                                      this.s.visible = true;
                                                      if(!_loc4_)
                                                      {
                                                         var _loc1_:*;
                                                         §§push((_loc1_ = this).i);
                                                         if(_loc3_)
                                                         {
                                                            §§push(§§pop() + 1);
                                                         }
                                                         var _loc2_:* = §§pop();
                                                         if(_loc3_)
                                                         {
                                                            _loc1_.i = _loc2_;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             addr226:
                                             this.exptxt.text = "XP: " + this.o.XP;
                                             this.moneytxt.text = root.getTxt("Denars",this.moneytxt) + ": " + MovieClip(root).q.comma(String(this.o.Money));
                                          }
                                          this.C = null;
                                          addr258:
                                          this.infotxt.text = this.replace(root.getTxt(this.qname + "Info",this.infotxt).split("_")[2]);
                                          §§push(this.done);
                                          if(!_loc4_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc3_)
                                                {
                                                   this.C = getDefinitionByName("CompleteQ");
                                                   addr322:
                                                   if(this.C !== null)
                                                   {
                                                      this.btn = new this.C() as SimpleButton;
                                                      if(!_loc4_)
                                                      {
                                                         this.btn.x = this.btnpoint.x;
                                                         addr341:
                                                         this.btn.y = this.btnpoint.y;
                                                         this.btn.name = "Quest";
                                                         if(_loc3_)
                                                         {
                                                            addChild(this.btn);
                                                            root.changeButtonText(this.btn);
                                                            if(_loc3_)
                                                            {
                                                               addr371:
                                                               addEventListener(MouseEvent.CLICK,this.mclick);
                                                               addr377:
                                                               MovieClip(root).attachTool(this);
                                                               if(_loc4_)
                                                               {
                                                               }
                                                            }
                                                            §§goto(addr393);
                                                         }
                                                         addr385:
                                                         MovieClip(root).q.createDrag(this.drag,this);
                                                         §§goto(addr393);
                                                      }
                                                      addr393:
                                                      return;
                                                   }
                                                   §§goto(addr371);
                                                   addr288:
                                                }
                                                §§goto(addr377);
                                             }
                                             else
                                             {
                                                addr291:
                                                if(!this.a)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      this.C = getDefinitionByName("AcceptQ");
                                                      if(_loc3_)
                                                      {
                                                         this.infotxt.text = this.replace(root.getTxt(this.qname + "Info",this.infotxt,true,true).split("_")[1]);
                                                         §§goto(addr322);
                                                      }
                                                      §§goto(addr385);
                                                   }
                                                   §§goto(addr341);
                                                }
                                                §§goto(addr322);
                                             }
                                          }
                                          §§goto(addr291);
                                       }
                                       §§goto(addr226);
                                    }
                                    §§goto(addr258);
                                 }
                                 §§goto(addr341);
                              }
                              §§goto(addr371);
                           }
                           §§goto(addr124);
                        }
                        §§goto(addr322);
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr291);
               }
               §§goto(addr288);
            }
            §§goto(addr83);
         }
         §§goto(addr124);
      }
   }
}
