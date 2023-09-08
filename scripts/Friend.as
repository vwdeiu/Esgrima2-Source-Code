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
   import fr.kouma.display.*;
   import playerio.*;
   
   public dynamic class Friend extends MovieClip
   {
       
      
      public var reptxt:TextField;
      
      public var pimc:MovieClip;
      
      public var loctxt:TextField;
      
      public var statemc:MovieClip;
      
      public var nametxt:TextField;
      
      public var o:DatabaseObject;
      
      public function Friend()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(!_loc2_)
            {
               addFrameScript(0,this.frame1);
            }
         }
      }
      
      public function loaded(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1.target.content;
         if(!_loc3_)
         {
            this.pimc.addChild(_loc2_);
            if(_loc4_)
            {
               _loc2_.width = this.pimc.Size.x;
               if(!_loc3_)
               {
                  addr46:
                  _loc2_.height = this.pimc.Size.y;
               }
               return;
            }
         }
         §§goto(addr46);
      }
      
      public function init() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:URLRequest = null;
         var _loc2_:Loader = null;
         this.nametxt.text = this.o.key;
         if(_loc3_)
         {
            root.getTxt("Name",this.nametxt);
            §§push("n");
            if(_loc3_)
            {
               §§push(§§pop() in this.o);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     this.nametxt.text = this.o.n;
                     if(!_loc3_)
                     {
                     }
                     this.loctxt.text = root.getTxt(this.o.Location,this.loctxt);
                     addr80:
                     §§push("Online");
                     if(!_loc4_)
                     {
                        addr84:
                        §§push(§§pop() in this.o);
                        if(!_loc4_)
                        {
                           addr90:
                           if(§§pop())
                           {
                              if(_loc3_)
                              {
                                 this.statemc.gotoAndStop(2);
                                 addr98:
                                 §§push("Reputation");
                                 if(_loc3_)
                                 {
                                    §§goto(addr117);
                                 }
                                 addr117:
                                 §§push(§§pop() in this.o);
                                 if(!_loc4_)
                                 {
                                    addr106:
                                    if(§§pop())
                                    {
                                       this.reptxt.text = this.o.Reputation;
                                    }
                                    §§push("PfI");
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       _loc1_ = new URLRequest(this.o.PfI);
                                       _loc2_ = new Loader();
                                       if(!_loc4_)
                                       {
                                          _loc2_.contentLoaderInfo.addEventListener(Event.COMPLETE,this.loaded);
                                          if(!_loc4_)
                                          {
                                             _loc2_.load(_loc1_,new LoaderContext(true));
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    removeChild(this.pimc);
                                 }
                                 §§goto(addr162);
                                 §§push(§§pop() in this.o);
                              }
                              §§goto(addr162);
                           }
                           §§goto(addr98);
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr117);
                     addr63:
                  }
                  §§push("Location");
                  if(!_loc4_)
                  {
                     §§push(§§pop() in this.o);
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           §§goto(addr63);
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr90);
                  }
               }
               §§goto(addr117);
            }
            §§goto(addr84);
         }
         §§goto(addr80);
      }
      
      function frame1() : *
      {
      }
   }
}
