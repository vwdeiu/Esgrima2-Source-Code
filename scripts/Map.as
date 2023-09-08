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
   
   public dynamic class Map extends MovieClip
   {
       
      
      public var Snowfield_Mines:SimpleButton;
      
      public var Desert:SimpleButton;
      
      public var Old_Mines:SimpleButton;
      
      public var Comenzar_Jungle:SimpleButton;
      
      public var Hasekuria:SimpleButton;
      
      public var Beach_Side:SimpleButton;
      
      public var Snow_Forest:SimpleButton;
      
      public var Sky_Tower:SimpleButton;
      
      public var Buendos_River:SimpleButton;
      
      public var Zhenmurshou_Forest:SimpleButton;
      
      public var Abandoned_Town:SimpleButton;
      
      public var Compos_De_Nieve:SimpleButton;
      
      public var Pirate_Reef:SimpleButton;
      
      public var Top_Tree_Village:SimpleButton;
      
      public var Frostreach:SimpleButton;
      
      public var Tunebro_Forest:SimpleButton;
      
      public var Vuelo_Airship:SimpleButton;
      
      public var Caliente_Desert:SimpleButton;
      
      public var Con_Brillo_Pier:SimpleButton;
      
      public var Empire_Espada_Outpost:SimpleButton;
      
      public var Earthstone:SimpleButton;
      
      public var Moonlight_Forest:SimpleButton;
      
      public var Valeria_City:SimpleButton;
      
      public var Port_Ville:SimpleButton;
      
      public var Narumachi:SimpleButton;
      
      public var Fuego_Mountain:SimpleButton;
      
      public var Lava_Fortress:SimpleButton;
      
      public var Sombra_Forest:SimpleButton;
      
      public var Night_Forest:SimpleButton;
      
      public var Railroad_Junction:SimpleButton;
      
      public var bg:MovieClip;
      
      public var Warrior_Road:SimpleButton;
      
      public var Suelo_Congelado:SimpleButton;
      
      public var Polar_Thundra:SimpleButton;
      
      public var Golden_Forest:SimpleButton;
      
      public var Montero_Hideout:SimpleButton;
      
      public var Del_Bosque:SimpleButton;
      
      public var Khaz$ar_Dungeon:SimpleButton;
      
      public var Arfildex_Gardens:SimpleButton;
      
      public var Bajo_El_Mar:SimpleButton;
      
      public var Jungle_Mines:SimpleButton;
      
      public var Comienzo_Forest:SimpleButton;
      
      public var Shogun$s_Castle:SimpleButton;
      
      public var Escondite:SimpleButton;
      
      public var Freedom_Coast:SimpleButton;
      
      public var Viking_Hideout:SimpleButton;
      
      public var Vuelo_Airship_Deck:SimpleButton;
      
      public var Largo_Bridge:SimpleButton;
      
      public var Dark_Ocean:SimpleButton;
      
      public var The_Cabin:SimpleButton;
      
      public var Selva_Oscura:SimpleButton;
      
      public var Selva_Temple:SimpleButton;
      
      public var Frozen_Ground:SimpleButton;
      
      public var Ruined_Eden:SimpleButton;
      
      public var Underwater_Cave_Mines:SimpleButton;
      
      public var Training_Grounds:SimpleButton;
      
      public var Divertida_Palace:SimpleButton;
      
      public var Escondido_Chateau:SimpleButton;
      
      public var War_Factory:SimpleButton;
      
      public var Sombra_Dungeon:SimpleButton;
      
      public var Army_Camp:SimpleButton;
      
      public var The_Deck:SimpleButton;
      
      public var Bandit_Camp:SimpleButton;
      
      public var Aurora_Jungle:SimpleButton;
      
      public var maplvls:Object;
      
      public var confirm:MovieClip;
      
      public var initx:Number;
      
      public var inity:Number;
      
      public var limit:Rectangle;
      
      public var maps:Vector.<String>;
      
      public var cities:Object;
      
      public var n:int;
      
      public var i:int;
      
      public var map:String;
      
      public var btnname:String;
      
      public var mapbtn:SimpleButton;
      
      public var id:int;
      
      public var newmapbtn:SimpleButton;
      
      public function Map()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(!_loc2_)
            {
               addr22:
               addFrameScript(0,this.frame1);
            }
            return;
         }
         §§goto(addr22);
      }
      
      public function openlist(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            var map:String = null;
            var addtxt:String = null;
            var e:MouseEvent = param1;
            if(root.roomlist)
            {
               if(!_loc5_)
               {
                  return;
               }
               addr249:
               MovieClip(root).addChildAt(lobbymc,root.getChildIndex(MovieClip(root).mouse));
               MovieClip(root).q.fadeIn(lobbymc);
            }
            else
            {
               §§push(e.target is SimpleButton);
               if(_loc4_)
               {
                  if(!§§pop())
                  {
                     return;
                  }
                  map = e.target.name.split("_").join(" ").split("$").join("\'");
                  if(!root.q.vectorContains(this.maps,map))
                  {
                     if(_loc4_)
                     {
                        return;
                     }
                     addr163:
                     this.confirm.txt = root.getTxt("Travel",this.confirm.titletxt) + " " + addtxt + root.getTxt(map) + "?";
                     this.confirm.confirmation = function():void
                     {
                        root.joinCity(map,e.target.name in root.mines);
                     };
                     root.addChildAt(this.confirm,root.getChildIndex(root.mouse));
                     this.confirm.x = 400;
                  }
                  else
                  {
                     §§push(Boolean(MovieClip(root).q.Loading));
                     if(!_loc5_)
                     {
                        if(!§§pop())
                        {
                           if(!_loc5_)
                           {
                              §§pop();
                              if(_loc4_)
                              {
                                 §§push(Boolean(MovieClip(root).battle));
                                 if(!_loc5_)
                                 {
                                    §§goto(addr98);
                                 }
                                 §§goto(addr109);
                              }
                              §§goto(addr204);
                           }
                           §§goto(addr109);
                        }
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr200);
               }
               addr98:
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     return;
                  }
                  §§goto(addr249);
               }
               else
               {
                  addr109:
                  if(e.target.name in this.cities)
                  {
                     if(_loc4_)
                     {
                        this.confirm = new Confirm() as MovieClip;
                        this.confirm.title = root.getTxt(map,this.confirm.bg.titletxt);
                        if(!_loc5_)
                        {
                           addtxt = "";
                           if(_loc4_)
                           {
                              if(map.charAt(map.length - 1) == "s")
                              {
                                 if(_loc4_)
                                 {
                                    addtxt = root.getTxt("The") + " ";
                                 }
                                 §§goto(addr204);
                              }
                              §§goto(addr163);
                           }
                           else
                           {
                              §§goto(addr268);
                           }
                        }
                        addr200:
                        this.confirm.y = 300;
                     }
                     §§goto(addr200);
                  }
                  else
                  {
                     var lobbymc:MovieClip = MovieClip(root).roomlist = new RoomList() as MovieClip;
                     if(!_loc5_)
                     {
                        lobbymc.map = map;
                        lobbymc.x = 400;
                        if(_loc4_)
                        {
                           lobbymc.y = 300;
                           if(!_loc4_)
                           {
                           }
                           §§goto(addr268);
                        }
                        §§goto(addr249);
                     }
                     §§goto(addr268);
                  }
               }
               §§goto(addr268);
            }
            addr268:
            return;
         }
         addr204:
         trace("added confirm");
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.clear();
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            removeEventListener(MouseEvent.CLICK,this.openlist);
         }
      }
      
      public function removed(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            removeEventListener(Event.REMOVED_FROM_STAGE,this.removed);
            if(!_loc2_)
            {
               addr27:
               root.collectGarbage();
            }
            return;
         }
         §§goto(addr27);
      }
      
      function frame1() : *
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         this.maplvls = {
            "Training Grounds":"1-2",
            "Moonlight Forest":"2-3",
            "Del Bosque":"2-4",
            "Night Forest":"4-6",
            "Railroad Junction":"5-8",
            "Comenzar Jungle":"5-7",
            "Aurora Jungle":"7-9",
            "Selva Oscura":"9-10",
            "Selva Temple":"10-12",
            "Jungle Mines":"0-1",
            "Escondite":"10-11",
            "Top Tree Village":"11-13",
            "Bandit Camp":"12-14",
            "Montero Hideout":"13-15",
            "Old Mines":"14-15",
            "Buendos River":"14-16",
            "The Cabin":"14-17",
            "The Deck":"15-17",
            "Beach Side":"16-17",
            "Con Brillo Pier":"18-19",
            "Pirate Reef":"19-21",
            "Bajo El Mar":"20-22",
            "Dark Ocean":"20-23",
            "Underwater Cave Mines":"2-3",
            "Golden Forest":"21-23",
            "Largo Bridge":"23-25",
            "Divertida Palace":"22-25",
            "Army Camp":"25-27",
            "Desert":"27-29",
            "Caliente Desert":"29-31",
            "Vuelo Airship":"30-32",
            "Vuelo Airship Deck":"32-34",
            "Sky Tower":"30-33",
            "Earthstone":"34-37",
            "Comienzo Forest":"35-37",
            "Snow Forest":"37-39",
            "Tunebro Forest":"39-41",
            "Compos De Nieve":"40-42",
            "Frozen Ground":"41-43",
            "Polar Thundra":"42-43",
            "Suelo Congelado":"43-45",
            "Snowfield Mines":"4-5",
            "Viking Hideout":"43-44",
            "Sombra Forest":"43-45",
            "Sombra Dungeon":"44-47",
            "Ruined Eden":"44-46",
            "Abandoned Town":"45-47",
            "Arfildex Gardens":"46-48",
            "Lava Fortress":"47-48",
            "Fuego Mountain":"47-49",
            "Escondido Chateau":"48-50",
            "War Factory":"49-58",
            "Freedom Coast":"51-53",
            "Hasekuria":"53-55",
            "Warrior Road":"55-58",
            "Zhenmurshou Forest":"57-60",
            "Shogun Castle":"57-63"
         };
         this.initx = x;
         if(!_loc3_)
         {
            this.inity = y;
            this.limit = new Rectangle(this.initx + 890,this.inity,this.initx - 1950,this.inity - 500);
            this.maps = Vector.<String>(["Valeria City","Training Grounds","Moonlight Forest","Del Bosque","Night Forest","Railroad Junction","Comenzar Jungle","Aurora Jungle","Selva Oscura","Selva Temple","Jungle Mines","Escondite","Top Tree Village","Bandit Camp","Montero Hideout","Port Ville","Old Mines","Buendos River","Beach Side","Con Brillo Pier","Pirate Reef","The Deck","The Cabin","Bajo El Mar","Dark Ocean","Golden Forest","Largo Bridge","Divertida Palace","Army Camp","Underwater Cave Mines","Desert","Caliente Desert","Vuelo Airship","Vuelo Airship Deck","Sky Tower","Earthstone","Comienzo Forest","Snow Forest","Tunebro Forest","Compos De Nieve","Frostreach","Viking Hideout","Sombra Forest","Sombra Dungeon","Ruined Eden","Abandoned Town","Arfildex Gardens","Fuego Mountain","Lava Fortress","Frozen Ground","Polar Thundra","Suelo Congelado","Snowfield Mines","Escondido Chateau","War Factory","Empire Espada Outpost","Khaz\'ar Dungeon","Narumachi","Freedom Coast","Hasekuria","Warrior Road","Zhenmurshou Forest","Shogun\'s Castle"]);
            if(_loc4_)
            {
               this.cities = {
                  "Valeria_City":true,
                  "Jungle_Mines":true,
                  "Port_Ville":true,
                  "Underwater_Cave_Mines":true,
                  "Snowfield_Mines":true,
                  "Frostreach":true,
                  "Empire_Espada_Outpost":true,
                  "Narumachi":true
               };
               addr253:
               this.n = this.maps.length;
               this.i = 0;
               if(_loc4_)
               {
                  this.i = 0;
                  while(this.i < this.n)
                  {
                     this.map = this.maps[this.i];
                     this.btnname = this.map.split(" ").join("_").split("\'").join("$");
                     if(_loc4_)
                     {
                        this.mapbtn = this[this.btnname];
                        if(!_loc3_)
                        {
                           if(this.mapbtn)
                           {
                              this.id = MovieClip(root).q.arrayContainsID(MovieClip(root).pChar.Unlocks.Maps.New,this.map);
                              if(this.bg[this.btnname])
                              {
                                 if(!_loc3_)
                                 {
                                    this.bg[this.btnname].nametxt.text = root.getTxt(this.map,this.bg[this.btnname].nametxt);
                                    if(!_loc3_)
                                    {
                                       addr354:
                                       §§push(this.map in this.maplvls);
                                       if(!_loc3_)
                                       {
                                          if(!§§pop())
                                          {
                                             this.bg[this.btnname].lvltxt.text = "";
                                             addr395:
                                             §§push(!MovieClip(root).q.arrayContains(MovieClip(root).pChar.Unlocks.Maps.Old,this.map));
                                             if(!_loc3_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc3_)
                                                   {
                                                   }
                                                   addr426:
                                                   if(§§pop())
                                                   {
                                                      removeChild(this.mapbtn);
                                                      addr431:
                                                      this[this.btnname] = null;
                                                      if(!_loc3_)
                                                      {
                                                         this.mapbtn = null;
                                                         this.bg.removeChild(this.bg[this.btnname]);
                                                         if(!_loc4_)
                                                         {
                                                            addr494:
                                                            this.mapbtn = this.newmapbtn;
                                                            if(!_loc3_)
                                                            {
                                                               addr501:
                                                               this.newmapbtn = null;
                                                               if(!_loc3_)
                                                               {
                                                                  addChild(this.mapbtn);
                                                                  if(_loc4_)
                                                                  {
                                                                     addr513:
                                                                     var _loc1_:*;
                                                                     §§push((_loc1_ = this).i);
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(§§pop() + 1);
                                                                     }
                                                                     var _loc2_:* = §§pop();
                                                                     if(!_loc3_)
                                                                     {
                                                                        _loc1_.i = _loc2_;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue;
                                                         }
                                                         §§goto(addr513);
                                                      }
                                                      this.bg[this.btnname] = null;
                                                   }
                                                   else
                                                   {
                                                      addr462:
                                                      if(this.id >= 0)
                                                      {
                                                         this.newmapbtn = new NewMap() as SimpleButton;
                                                         this.newmapbtn.x = this.mapbtn.x;
                                                         this.newmapbtn.y = this.mapbtn.y;
                                                         if(!_loc3_)
                                                         {
                                                            removeChild(this.mapbtn);
                                                         }
                                                         this.newmapbtn.name = this.btnname;
                                                         if(!_loc4_)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr494);
                                                      }
                                                   }
                                                   §§goto(addr513);
                                                }
                                                §§goto(addr426);
                                             }
                                             §§pop();
                                             §§push(this.id);
                                             if(_loc4_)
                                             {
                                                §§push(0);
                                                if(!_loc3_)
                                                {
                                                   §§goto(addr426);
                                                   §§push(§§pop() < §§pop());
                                                }
                                             }
                                             §§goto(addr462);
                                          }
                                          else
                                          {
                                             this.bg[this.btnname].lvltxt.text = root.getTxt("Level",this.bg[this.btnname].lvltxt) + " " + this.maplvls[this.map];
                                             §§goto(addr395);
                                          }
                                       }
                                       §§goto(addr426);
                                    }
                                    §§goto(addr501);
                                 }
                                 §§goto(addr431);
                              }
                              §§goto(addr395);
                           }
                           §§goto(addr513);
                        }
                        §§goto(addr431);
                     }
                     §§goto(addr354);
                  }
                  if(_loc4_)
                  {
                     addEventListener(MouseEvent.CLICK,this.openlist,false,0,true);
                     root.q.raster(this.bg);
                     addEventListener(Event.REMOVED_FROM_STAGE,this.removed,false,0,true);
                     if(!_loc3_)
                     {
                        root.q.createDrag(this,this,false,this.limit,false);
                        if(_loc4_)
                        {
                           addr580:
                           visible = true;
                           addr583:
                           root.mapborder.visible = true;
                        }
                        §§goto(addr583);
                     }
                     if(root.maphelp)
                     {
                        if(_loc4_)
                        {
                           addr592:
                           root.q.remove(root.maphelp);
                           if(_loc3_)
                           {
                           }
                           §§goto(addr603);
                        }
                        delete root.maphelp;
                     }
                     addr603:
                     return;
                  }
                  §§goto(addr580);
               }
               §§goto(addr592);
            }
            §§goto(addr580);
         }
         §§goto(addr253);
      }
   }
}
