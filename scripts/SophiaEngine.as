package
{
   import Esgrima2_fla.*;
   import com.adobe.images.*;
   import com.apieasy2.*;
   import fl.controls.*;
   import fl.events.*;
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
   
   public class SophiaEngine extends MovieClip
   {
       
      
      public var chatRooms:Array;
      
      public var dragMC:MovieClip;
      
      public var kongtoken:String;
      
      public var konguser:String;
      
      public var Publictext:String;
      
      public var Guildtext:String;
      
      public var defaultMusic:String = "";
      
      public var mapAssets:Loader;
      
      public var mapLoading:String;
      
      public var MapLoader:Loader;
      
      public var itemSplitChar:String = ",";
      
      public var propSplitChar:String = "_";
      
      public var loadreason:String = "";
      
      public var FaderMC:MovieClip;
      
      public var swapping:Boolean = false;
      
      public var gameID:String = "esgrima-2-nug9vall6kivqmh6wri77w";
      
      public var friendWindow:MovieClip;
      
      public var tooltipMC:MovieClip;
      
      public var loadMC:MovieClip;
      
      public var Loading = false;
      
      public var itemArray:Array;
      
      public var client:Client;
      
      public var mainConnection:Connection;
      
      private var toolTime:Timer;
      
      public var textFormat:TextFormat;
      
      public var glowFormat:GlowFilter;
      
      public var Red:String = "0xFF700000";
      
      public var Blue:String = "0xFF000070";
      
      public var Green:String = "0xFF00FF00";
      
      public var Grey:String = "0xFF505050";
      
      public var White:String = "0xFFFFFFFF";
      
      public var tooltipProperties:Array;
      
      public var WeaponProperties:Array;
      
      public var ApparelProperties:Array;
      
      public var CostumeProperties:Array;
      
      public var HeadgearProperties:Array;
      
      public var StoneProperties:Array;
      
      public var ShieldProperties:Array;
      
      public var ConsumableProperties:Array;
      
      public var BackDecorationProperties:Array;
      
      public var RingProperties:Array;
      
      public var NecklaceProperties:Array;
      
      public var PVPMedalProperties:Array;
      
      public var MedalProperties:Array;
      
      public var OtherProperties:Array;
      
      public var HealingRingProperties:Array;
      
      public var layersMults:Array;
      
      public function SophiaEngine()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.chatRooms = new Array();
         this.MapLoader = new Loader();
         this.toolTime = new Timer(100,1);
         if(!_loc2_)
         {
            this.textFormat = new TextFormat();
            this.glowFormat = new GlowFilter();
            this.tooltipProperties = new Array("Min Attack_Red","Max Attack_Red","Health_Green","Mana_Blue","Level_Grey");
            this.WeaponProperties = new Array("Level","Skill Level","Attack","Critical","Health","Mana","Price","Quality","PVPPrice","Type","GoldPrice");
            this.ApparelProperties = new Array("Level","Defense","Dodge","Health","Mana","Price","Quality","PVPPrice","Skill");
            if(!_loc2_)
            {
               this.CostumeProperties = new Array("Level","Attack","Defense","Dodge","Health","Mana","Price","GoldPrice");
               §§goto(addr90);
            }
            §§goto(addr226);
         }
         addr90:
         this.HeadgearProperties = new Array("Level","Defense","Health","Mana","Price","Quality","PVPPrice","Skill");
         if(_loc1_)
         {
            this.StoneProperties = new Array("Level","Potency","Description","Price","GoldPrice");
            this.ShieldProperties = new Array("Level","Skill Level","Defense","Block","Health","Mana","Price","Quality","GoldPrice");
            this.ConsumableProperties = new Array("Level","Itemtype","Cooldown","Description","Price","GoldPrice");
            this.BackDecorationProperties = new Array("Level","Defense","Dodge","Health","Mana","Price","Attack","GoldPrice");
            this.RingProperties = new Array("Level","Health","Critical","Mana","Price","Attack","Quality","GoldPrice");
            if(!_loc2_)
            {
               this.NecklaceProperties = new Array("Level","Defense","Dodge","Quality");
               this.PVPMedalProperties = new Array("Level","Attack","Defense","Health","Mana","Price","PVPPrice");
               this.MedalProperties = new Array("Level","Attack","Defense","Health","Mana","Price");
               this.OtherProperties = new Array("Description","Price","GoldPrice");
               §§goto(addr213);
            }
            §§goto(addr226);
         }
         addr213:
         this.HealingRingProperties = new Array("Level","Health","Heal","Mana","Price","Quality","GoldPrice");
         if(_loc1_)
         {
            addr226:
            this.layersMults = [0.2,0.4];
            super();
         }
      }
      
      public function capitalize(param1:String) : String
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         §§push([param1]);
         if(!_loc9_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc10_)
         {
            §§push(param1);
            if(!_loc9_)
            {
               §§push(" ");
               if(!_loc9_)
               {
                  if(§§pop().indexOf(§§pop()) > -1)
                  {
                     if(!_loc9_)
                     {
                        §§goto(addr51);
                     }
                  }
                  §§goto(addr57);
               }
               addr51:
               §§goto(addr50);
            }
            addr50:
            §§goto(addr49);
         }
         addr49:
         §§push(param1.split(" "));
         if(_loc10_)
         {
            _loc2_ = §§pop();
            addr57:
            §§push(_loc2_);
         }
         var _loc3_:int = §§pop().length;
         var _loc4_:int = 0;
         if(_loc10_)
         {
            loop0:
            while(_loc4_ < _loc3_)
            {
               §§push(_loc2_);
               if(!_loc9_)
               {
                  §§push(_loc4_);
                  if(!_loc9_)
                  {
                     §§push(§§pop()[§§pop()]);
                     if(!_loc9_)
                     {
                        _loc5_ = §§pop();
                        _loc6_ = "";
                        §§push(_loc5_);
                        if(_loc10_)
                        {
                           addr91:
                           §§push(int(§§pop().length));
                           if(_loc10_)
                           {
                              _loc7_ = §§pop();
                              if(_loc10_)
                              {
                                 §§push(0);
                                 if(_loc10_)
                                 {
                                    addr102:
                                    _loc8_ = §§pop();
                                    while(true)
                                    {
                                       §§push(_loc8_);
                                    }
                                    addr154:
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    §§push(_loc7_);
                                    while(true)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          if(_loc10_)
                                          {
                                             addr162:
                                             _loc2_[_loc4_] = _loc6_;
                                             if(!_loc9_)
                                             {
                                                break;
                                             }
                                          }
                                          continue loop0;
                                       }
                                       §§push(_loc8_);
                                       if(!_loc10_)
                                       {
                                          continue loop3;
                                       }
                                       §§push(0);
                                       if(!_loc10_)
                                       {
                                          continue;
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          if(!_loc10_)
                                          {
                                             break;
                                          }
                                          §§push(_loc6_);
                                          if(!_loc9_)
                                          {
                                             §§push(_loc5_);
                                             if(!_loc9_)
                                             {
                                                §§push(_loc8_);
                                                if(_loc10_)
                                                {
                                                   §§push(§§pop() + §§pop().charAt(§§pop()).toUpperCase());
                                                   if(!_loc9_)
                                                   {
                                                      addr133:
                                                      _loc6_ = §§pop();
                                                   }
                                                   else
                                                   {
                                                      addr152:
                                                      while(true)
                                                      {
                                                         _loc6_ = §§pop();
                                                      }
                                                      addr152:
                                                   }
                                                   while(true)
                                                   {
                                                      _loc8_++;
                                                      §§goto(addr154);
                                                   }
                                                   addr141:
                                                   §§push(§§pop() + §§pop().charAt(_loc8_).toLowerCase());
                                                }
                                                else
                                                {
                                                   §§goto(addr141);
                                                }
                                                §§goto(addr152);
                                                §§push(§§pop());
                                             }
                                             else
                                             {
                                                §§goto(addr141);
                                             }
                                             §§goto(addr141);
                                          }
                                          §§goto(addr133);
                                       }
                                       else
                                       {
                                          §§push(_loc6_);
                                          if(!_loc9_)
                                          {
                                             §§goto(addr141);
                                             §§push(_loc5_);
                                          }
                                          §§goto(addr152);
                                       }
                                    }
                                 }
                              }
                              _loc4_++;
                              continue;
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr152);
                     }
                     §§goto(addr91);
                  }
               }
               §§goto(addr162);
            }
         }
         return _loc2_.join(" ");
      }
      
      public function applyGlow(param1:*, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.glowFormat.color = uint(param2);
            this.glowFormat.strength = param3;
         }
         this.glowFormat.blurX = param4;
         this.glowFormat.blurY = param4;
         this.glowFormat.quality = 1;
         if(_loc5_)
         {
            param1.filters = [this.glowFormat];
         }
      }
      
      public function invitePopup(param1:String, param2:Function, param3:Function) : void
      {
         var _loc4_:* = this.confirm(param2,param3,"Invitation",param1);
      }
      
      public function vectorToArray(param1:Object) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:int = param1.length - 1;
         §§push(new Array(_loc2_));
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = -1;
         if(_loc6_)
         {
            while(true)
            {
               §§push(_loc4_);
               if(_loc6_)
               {
                  §§push(§§pop());
                  if(_loc6_)
                  {
                     §§push(§§pop() + 1);
                     if(_loc5_)
                     {
                        continue;
                     }
                  }
                  _loc4_ = §§pop();
               }
            }
         }
         return _loc3_;
      }
      
      public function getScale(param1:MovieClip) : Object
      {
         var _loc2_:Matrix = param1.transform.matrix;
         return {
            "scaleX":_loc2_.a,
            "scaleY":_loc2_.d
         };
      }
      
      public function addGlowOver(param1:MovieClip) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            var char:MovieClip = param1;
            if(!_loc3_)
            {
               char.addEventListener(MouseEvent.ROLL_OVER,function(param1:MouseEvent):void
               {
                  var _loc2_:Boolean = true;
                  var _loc3_:Boolean = false;
                  trace("Rolled Over");
                  if(!_loc3_)
                  {
                     applyGlow(MovieClip(param1.target),White,1,5);
                  }
               });
               if(_loc4_)
               {
                  addr45:
                  char.addEventListener(MouseEvent.ROLL_OUT,function(param1:MouseEvent):void
                  {
                     var _loc2_:Boolean = true;
                     var _loc3_:Boolean = false;
                     trace("Rolled Out");
                     if(!_loc3_)
                     {
                        MovieClip(param1.target).filters = [];
                     }
                  });
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function comma(param1:String) : String
      {
         return param1.replace(/\d{1,3}(?=(\d{3})+(?!\d))/g,"$&,");
      }
      
      public function friendPopup(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            var From:String = param1;
            if(_loc4_)
            {
               addr34:
               this.invitePopup(From + " wants to be friends with you.",function(param1:MouseEvent):void
               {
                  var _loc3_:Boolean = true;
                  var _loc4_:Boolean = false;
                  MovieClip(root).mainConnection.send("AcceptFriend",From);
                  var _loc2_:Message = MovieClip(root).mainConnection.createMessage("AcceptedFriend",From,MovieClip(root).playerCharacter.key);
                  if(!_loc4_)
                  {
                     sendMessage(From,_loc2_);
                     if(_loc3_)
                     {
                        addr34:
                        MovieClip(root).playerCharacter.Social.Friends.push(From);
                        if(!_loc4_)
                        {
                           if(friendWindow)
                           {
                              if(_loc3_)
                              {
                                 addr49:
                                 friendWindow.listFriends();
                                 if(!_loc4_)
                                 {
                                    addr53:
                                    remove(MovieClip(param1.target.parent));
                                 }
                              }
                              return;
                           }
                           §§goto(addr53);
                        }
                        §§goto(addr49);
                     }
                     §§goto(addr53);
                  }
                  §§goto(addr34);
               },function(param1:MouseEvent):void
               {
                  var _loc2_:Boolean = true;
                  var _loc3_:Boolean = false;
                  MovieClip(root).mainConnection.send("DeclineFriend",From);
                  if(_loc2_)
                  {
                     remove(MovieClip(param1.target.parent));
                  }
               });
            }
            return;
         }
         §§goto(addr34);
      }
      
      public function checkFriendInvites(param1:Array) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = param1.length;
         var _loc3_:int = 0;
         if(_loc4_)
         {
            while(_loc3_ < param1.length)
            {
               if(!this.arrayContains(MovieClip(root).fInviteCache,param1[_loc3_]))
               {
                  if(_loc5_)
                  {
                     continue;
                  }
                  this.friendPopup(param1[_loc3_]);
                  if(_loc4_)
                  {
                     MovieClip(root).fInviteCache.push(param1[_loc3_]);
                     if(!_loc4_)
                     {
                        continue;
                     }
                  }
               }
               _loc3_++;
            }
         }
      }
      
      public function getStatus(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            trace("Getting Status");
            if(!_loc3_)
            {
               addr30:
               MovieClip(root).client.bigDB.load(MovieClip(root).charTable,param1,param2,this.dbError);
            }
            return;
         }
         §§goto(addr30);
      }
      
      public function getOnlineStatus(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            var id:String = param1;
            if(_loc5_)
            {
               §§goto(addr35);
            }
            §§goto(addr41);
         }
         addr35:
         var callback:Function = param2;
         if(!_loc4_)
         {
            addr41:
            this.getStatus(id,function(param1:DatabaseObject):void
            {
               callback(param1 != null ? (!!param1.onlineStatus ? param1.onlineStatus.state == 1 : false) : false);
            });
         }
      }
      
      public function sendMessage(param1:String, param2:*) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            var id:String = param1;
            if(_loc4_)
            {
               var Message:* = param2;
               if(_loc5_)
               {
               }
               §§goto(addr44);
            }
            this.getStatus(id,function(param1:DatabaseObject):void
            {
               var _loc3_:Boolean = false;
               var _loc4_:Boolean = true;
               var o:DatabaseObject = param1;
               trace("got status");
               §§push(o != null);
               if(!_loc3_)
               {
                  §§push(§§pop());
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           §§pop();
                           §§push(o.onlineStatus == null);
                        }
                        §§push(!§§pop());
                     }
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     §§pop();
                     §§push(o.onlineStatus.state == 1);
                  }
               }
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     MovieClip(root).client.multiplayer.joinRoom(o.onlineStatus.server,{"Messager":true},function(param1:Connection):void
                     {
                        var _loc2_:Boolean = true;
                        var _loc3_:Boolean = false;
                        param1.sendMessage(Message);
                        if(!_loc3_)
                        {
                           param1.disconnect();
                        }
                     },connectionError);
                  }
               }
            });
         }
         addr44:
      }
      
      public function sendGameMessage(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = MovieClip(root).mainConnection.createMessage("SendDirectMsg",param2,param1,MovieClip(root).playerCharacter.key);
         if(_loc5_)
         {
            this.sendMessage(param1,_loc3_);
            if(!_loc4_)
            {
               addr47:
               MovieClip(root).mainConnection.send("SendMsg",param2,param1);
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function addFriend(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:Message = null;
         if(_loc5_)
         {
            if(!this.arrayContains(MovieClip(root).playerCharacter.Social.Friends,param1))
            {
               if(_loc5_)
               {
                  MovieClip(root).mainConnection.send("InviteFriend",param1);
                  addr59:
                  _loc3_ = MovieClip(root).mainConnection.createMessage("FriendInvite",param1,MovieClip(root).playerCharacter.key);
                  if(!_loc4_)
                  {
                     this.sendMessage(param1,_loc3_);
                  }
               }
               §§goto(addr59);
            }
            return;
         }
         §§goto(addr59);
      }
      
      public function hideRightClick(param1:Array) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:ContextMenu = new ContextMenu();
         if(!_loc4_)
         {
            _loc2_.hideBuiltInItems();
            if(!_loc4_)
            {
               _loc2_.customItems.push(param1);
               if(_loc3_)
               {
                  addr39:
                  MovieClip(root).contextMenu = _loc2_;
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function groundZ(param1:MovieClip, param2:Vector.<MovieClip>, param3:Number, param4:Number) : Point
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc10_:* = 0;
         var _loc11_:MovieClip = null;
         var _loc12_:* = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = 0;
         var _loc16_:MovieClip = null;
         var _loc17_:MovieClip = null;
         var _loc18_:Point = null;
         var _loc19_:Point = null;
         var _loc5_:int = param2.length;
         var _loc6_:Point = new Point(param3,param4);
         var _loc7_:* = false;
         var _loc8_:Boolean = false;
         var _loc9_:int = 0;
         if(!_loc21_)
         {
            while(_loc9_ < _loc5_)
            {
               _loc10_ = 0;
               if((_loc11_ = param2[_loc9_]).yBeginArray)
               {
                  §§push(int(_loc11_.yBeginArray.length));
                  if(!_loc21_)
                  {
                     _loc10_ = §§pop();
                     addr78:
                     §§push(Number(_loc11_.x + _loc11_.width * 0.5));
                     if(!_loc21_)
                     {
                        _loc12_ = §§pop();
                        if(_loc20_)
                        {
                           _loc13_ = _loc11_.x + _loc11_.width;
                           §§push(Number(_loc11_.y + _loc11_.height));
                           if(!_loc21_)
                           {
                              _loc14_ = §§pop();
                              §§push(param1.x < _loc11_.x);
                              §§push(param1.x < _loc11_.x);
                              if(_loc20_)
                              {
                                 if(!§§pop())
                                 {
                                    §§pop();
                                    §§push(param1.x > _loc13_);
                                    if(_loc20_)
                                    {
                                       addr126:
                                       §§push(§§pop());
                                       if(_loc20_)
                                       {
                                          if(!§§pop())
                                          {
                                             §§pop();
                                             §§push(param1.y < _loc11_.y);
                                          }
                                          if(!(§§pop() || param1.y > _loc14_))
                                          {
                                             if(_loc11_.yOpen)
                                             {
                                                if(_loc20_)
                                                {
                                                   §§push(true);
                                                   if(_loc20_)
                                                   {
                                                      _loc7_ = §§pop();
                                                      if(!_loc21_)
                                                      {
                                                         addr156:
                                                         §§push(_loc10_);
                                                         if(_loc20_)
                                                         {
                                                            §§push(0);
                                                            if(!_loc21_)
                                                            {
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  addr164:
                                                                  §§push(0);
                                                                  if(_loc20_)
                                                                  {
                                                                     addr167:
                                                                     _loc15_ = §§pop();
                                                                     addr168:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc15_);
                                                                     }
                                                                     addr302:
                                                                     if(!_loc21_)
                                                                     {
                                                                        addr307:
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push(param1.x >= _loc11_.x);
                                                                           §§push(param1.x >= _loc11_.x);
                                                                           if(!_loc21_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    §§pop();
                                                                                    §§push(param3 <= _loc11_.x);
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       addr329:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          _loc6_.x = _loc11_.x + 5;
                                                                                          if(!_loc21_)
                                                                                          {
                                                                                             trace("Ground collide left");
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                addr376:
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   addr378:
                                                                                                   §§push(param4);
                                                                                                   if(!_loc21_)
                                                                                                   {
                                                                                                      addr384:
                                                                                                      §§push(§§pop() < _loc11_.y);
                                                                                                      if(§§pop() < _loc11_.y)
                                                                                                      {
                                                                                                         if(_loc20_)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            if(!_loc21_)
                                                                                                            {
                                                                                                               §§push(param1.y >= _loc11_.y);
                                                                                                               if(!_loc21_)
                                                                                                               {
                                                                                                                  addr400:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!_loc21_)
                                                                                                                     {
                                                                                                                        addr403:
                                                                                                                        _loc6_.y = _loc11_.y;
                                                                                                                        if(_loc21_)
                                                                                                                        {
                                                                                                                           addr431:
                                                                                                                           _loc6_.y = _loc14_;
                                                                                                                           addr434:
                                                                                                                           _loc9_++;
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr434);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr418:
                                                                                                                     §§push(param4 > _loc14_);
                                                                                                                     if(!_loc21_)
                                                                                                                     {
                                                                                                                        addr423:
                                                                                                                        §§push(§§pop() && param1.y <= _loc14_);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr434);
                                                                                                               }
                                                                                                               §§goto(addr423);
                                                                                                            }
                                                                                                            §§goto(addr434);
                                                                                                         }
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                         }
                                                                                                         §§goto(addr431);
                                                                                                      }
                                                                                                      §§goto(addr400);
                                                                                                   }
                                                                                                   §§goto(addr418);
                                                                                                }
                                                                                                §§goto(addr431);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr368:
                                                                                                _loc6_.x = _loc13_;
                                                                                                if(_loc21_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                addr373:
                                                                                                trace("Ground collide right");
                                                                                                §§goto(addr376);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr403);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr345:
                                                                                          §§push(param3);
                                                                                          §§push(_loc13_);
                                                                                          if(_loc20_)
                                                                                          {
                                                                                             §§push(§§pop() >= §§pop());
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                addr351:
                                                                                                §§push(§§pop());
                                                                                                if(_loc20_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(_loc20_)
                                                                                                      {
                                                                                                         addr364:
                                                                                                         if(param1.x <= _loc13_)
                                                                                                         {
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            §§goto(addr368);
                                                                                                         }
                                                                                                         §§goto(addr376);
                                                                                                      }
                                                                                                      §§goto(addr403);
                                                                                                   }
                                                                                                   §§goto(addr364);
                                                                                                }
                                                                                                §§goto(addr423);
                                                                                             }
                                                                                             §§goto(addr384);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr418);
                                                                                    }
                                                                                    §§goto(addr425);
                                                                                 }
                                                                                 §§goto(addr351);
                                                                              }
                                                                              §§goto(addr329);
                                                                           }
                                                                           §§goto(addr423);
                                                                        }
                                                                        §§goto(addr376);
                                                                     }
                                                                     §§goto(addr373);
                                                                     addr302:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc10_);
                                                                     addr304:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           _loc16_ = _loc11_.yBeginArray[_loc15_];
                                                                           _loc17_ = _loc11_.yEndArray[_loc15_];
                                                                           _loc18_ = new Point(_loc11_.x + _loc16_.x * _loc11_.scaleX,_loc11_.y + _loc16_.y * _loc11_.scaleY);
                                                                           _loc19_ = new Point(_loc11_.x + _loc17_.x * _loc11_.scaleX,_loc11_.y + _loc17_.y * _loc11_.scaleY);
                                                                           if(!_loc11_.yOpen)
                                                                           {
                                                                              §§push(param1.y <= _loc19_.y);
                                                                              if(_loc20_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc21_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       §§pop();
                                                                                       addr301:
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          §§push(param1.y >= _loc18_.y);
                                                                                       }
                                                                                       _loc15_++;
                                                                                       §§goto(addr302);
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       §§push(_loc18_.x < _loc12_);
                                                                                       §§push(_loc18_.x < _loc12_);
                                                                                       if(!_loc21_)
                                                                                       {
                                                                                          addr261:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§pop();
                                                                                             §§push(param1.x <= _loc18_.x);
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                addr271:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!_loc21_)
                                                                                                   {
                                                                                                      addr276:
                                                                                                      _loc7_ = true;
                                                                                                      §§goto(addr301);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr285:
                                                                                                      §§push(param1.x >= _loc18_.x);
                                                                                                      if(!_loc21_)
                                                                                                      {
                                                                                                         addr292:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc20_)
                                                                                                            {
                                                                                                               addr297:
                                                                                                               _loc7_ = true;
                                                                                                               if(!_loc21_)
                                                                                                               {
                                                                                                                  §§goto(addr301);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr301);
                                                                                                      }
                                                                                                      §§goto(addr297);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr283:
                                                                                                   §§push(_loc18_.x > _loc12_);
                                                                                                   if(_loc18_.x > _loc12_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      §§goto(addr285);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr292);
                                                                                             }
                                                                                             §§goto(addr276);
                                                                                          }
                                                                                          §§goto(addr271);
                                                                                       }
                                                                                       §§goto(addr283);
                                                                                    }
                                                                                    §§goto(addr301);
                                                                                 }
                                                                                 §§goto(addr261);
                                                                              }
                                                                              §§goto(addr297);
                                                                           }
                                                                           §§goto(addr301);
                                                                        }
                                                                        §§goto(addr302);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr307);
                                                            }
                                                            §§goto(addr304);
                                                         }
                                                         §§goto(addr167);
                                                      }
                                                      §§goto(addr168);
                                                   }
                                                   §§goto(addr423);
                                                }
                                                §§goto(addr378);
                                             }
                                             §§goto(addr156);
                                          }
                                          §§goto(addr431);
                                       }
                                       §§goto(addr423);
                                    }
                                    §§goto(addr384);
                                 }
                                 §§goto(addr126);
                              }
                              §§goto(addr384);
                           }
                           §§goto(addr418);
                        }
                        §§goto(addr164);
                     }
                     §§goto(addr345);
                  }
                  §§goto(addr167);
               }
               §§goto(addr78);
            }
         }
         return _loc6_;
      }
      
      public function collisionZ(param1:MovieClip, param2:Vector.<MovieClip>, param3:Number, param4:Number) : Point
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc9_:MovieClip = null;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:* = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         §§push(new Array());
         if(_loc16_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         var _loc6_:int = param2.length;
         var _loc7_:Point = new Point(param3,param4);
         var _loc8_:int = 0;
         if(!_loc15_)
         {
            while(_loc8_ < _loc6_)
            {
               §§push(Number((_loc9_ = param2[_loc8_]).x + _loc9_.width / 2));
               if(_loc16_)
               {
                  _loc10_ = §§pop();
                  _loc13_ = _loc9_.x;
                  if(_loc15_)
                  {
                     continue;
                  }
                  _loc14_ = _loc9_.x;
                  if(!_loc15_)
                  {
                     if(_loc9_.xend)
                     {
                        if(_loc9_.xend > _loc9_.x)
                        {
                           _loc14_ = _loc9_.x + _loc9_.xend.x * _loc9_.scaleX;
                           addr123:
                           if(_loc9_.yend)
                           {
                              §§push(Number(_loc9_.y + _loc9_.yend.y * _loc9_.scaleY));
                              if(!_loc15_)
                              {
                                 _loc12_ = §§pop();
                              }
                              addr178:
                              §§push(§§pop() >= _loc9_.y);
                              §§push(§§pop() >= _loc9_.y);
                              if(!_loc15_)
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                    if(!_loc15_)
                                    {
                                       addr188:
                                       §§push(param4);
                                       if(_loc16_)
                                       {
                                          addr193:
                                          if(§§pop() <= _loc12_)
                                          {
                                             §§push(param1.x <= _loc13_);
                                             §§push(param1.x <= _loc13_);
                                             if(!_loc15_)
                                             {
                                                addr202:
                                                if(§§pop())
                                                {
                                                   §§pop();
                                                   §§push(param3);
                                                   §§push(_loc13_);
                                                   if(_loc16_)
                                                   {
                                                      addr209:
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         if(!_loc15_)
                                                         {
                                                            _loc7_.x = _loc13_;
                                                            if(!_loc15_)
                                                            {
                                                               addr250:
                                                               §§push(param1.y <= _loc9_.y);
                                                               if(!_loc15_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc16_)
                                                                  {
                                                                     addr262:
                                                                     if(§§pop())
                                                                     {
                                                                        §§pop();
                                                                        if(!_loc15_)
                                                                        {
                                                                           §§push(param4 > _loc9_.y);
                                                                           if(!_loc16_)
                                                                           {
                                                                           }
                                                                           addr293:
                                                                           addr294:
                                                                           if(§§pop())
                                                                           {
                                                                              §§pop();
                                                                              if(!_loc16_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              addr298:
                                                                              §§push(param4 < _loc12_);
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              addr302:
                                                                              _loc7_.y = _loc12_ + 1;
                                                                              if(_loc16_)
                                                                              {
                                                                                 addr310:
                                                                                 _loc8_++;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           §§goto(addr310);
                                                                        }
                                                                        addr274:
                                                                        _loc7_.y = _loc9_.y;
                                                                        §§goto(addr310);
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        §§goto(addr274);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(param1.y >= _loc12_);
                                                                        if(!_loc16_)
                                                                        {
                                                                        }
                                                                        §§goto(addr293);
                                                                     }
                                                                  }
                                                                  §§goto(addr294);
                                                               }
                                                               §§goto(addr293);
                                                            }
                                                            §§goto(addr274);
                                                         }
                                                         §§goto(addr302);
                                                      }
                                                      else
                                                      {
                                                         §§push(param1.x >= _loc14_);
                                                         §§push(param1.x >= _loc14_);
                                                         if(_loc16_)
                                                         {
                                                            addr226:
                                                            if(§§pop())
                                                            {
                                                               if(!_loc15_)
                                                               {
                                                                  §§pop();
                                                                  if(!_loc15_)
                                                                  {
                                                                     addr233:
                                                                     §§push(param3 <= _loc14_);
                                                                     if(_loc16_)
                                                                     {
                                                                        addr238:
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc16_)
                                                                           {
                                                                              _loc7_.x = _loc14_ + 2;
                                                                              if(_loc16_)
                                                                              {
                                                                                 §§goto(addr250);
                                                                              }
                                                                              §§goto(addr274);
                                                                           }
                                                                           §§goto(addr310);
                                                                        }
                                                                        §§goto(addr250);
                                                                     }
                                                                     §§goto(addr293);
                                                                  }
                                                                  §§goto(addr298);
                                                               }
                                                            }
                                                            §§goto(addr238);
                                                         }
                                                         §§goto(addr262);
                                                      }
                                                   }
                                                   §§goto(addr298);
                                                }
                                                §§goto(addr209);
                                             }
                                             §§goto(addr262);
                                          }
                                          §§goto(addr250);
                                       }
                                       §§goto(addr233);
                                    }
                                    §§goto(addr302);
                                 }
                                 §§goto(addr193);
                              }
                              §§goto(addr202);
                           }
                           else
                           {
                              _loc12_ = Number(_loc9_.y + 1);
                           }
                           §§push(param3 >= _loc13_ - param1.Speed);
                           §§push(param3 >= _loc13_ - param1.Speed);
                           if(_loc16_)
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 §§push(param3);
                                 §§push(_loc14_);
                                 if(_loc16_)
                                 {
                                    addr174:
                                    if(§§pop() <= §§pop() + param1.Speed)
                                    {
                                       §§push(param4);
                                       if(_loc16_)
                                       {
                                          §§goto(addr178);
                                       }
                                       §§goto(addr233);
                                    }
                                    §§goto(addr310);
                                 }
                                 §§goto(addr298);
                              }
                              §§goto(addr174);
                           }
                           §§goto(addr226);
                           addr115:
                        }
                        else
                        {
                           _loc13_ = _loc9_.x + _loc9_.xend.x * _loc9_.scaleX;
                           if(!_loc15_)
                           {
                              §§goto(addr115);
                           }
                        }
                        §§goto(addr188);
                     }
                     else
                     {
                        _loc14_ = _loc9_.x + _loc9_.width;
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr310);
               }
               §§goto(addr178);
            }
         }
         return _loc7_;
      }
      
      public function gravityAndCollision(param1:MovieClip, param2:Array, param3:String) : Array
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc10_:MovieClip = null;
         var _loc11_:Number = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:* = NaN;
         §§push(new Array());
         if(!_loc17_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:Boolean = false;
         var _loc6_:int = param2.length;
         var _loc7_:* = 0.6;
         §§push(param1.y - param1.height);
         if(!_loc17_)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         var _loc9_:int = 0;
         if(_loc16_)
         {
            while(_loc9_ < _loc6_)
            {
               _loc11_ = (_loc10_ = param2[_loc9_]).x + _loc10_.width / 2;
               §§push(Number(_loc10_.x + _loc10_.width));
               if(_loc16_)
               {
                  _loc12_ = §§pop();
                  §§push(Number(_loc10_.y + _loc10_.height));
                  if(_loc16_)
                  {
                     _loc13_ = §§pop();
                     §§push(param1.y == _loc10_.y);
                     §§push(param1.y == _loc10_.y);
                     if(!_loc17_)
                     {
                        if(§§pop())
                        {
                           if(_loc16_)
                           {
                              §§pop();
                              addr109:
                              §§push(param1.x >= _loc10_.x);
                              §§push(param1.x >= _loc10_.x);
                              if(!_loc17_)
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                    if(!_loc17_)
                                    {
                                       addr121:
                                       if(param1.x <= _loc12_)
                                       {
                                          §§push(_loc4_);
                                          if(!_loc17_)
                                          {
                                             §§push("OnGround");
                                             if(_loc16_)
                                             {
                                                §§pop().push(§§pop());
                                                addr129:
                                                if(param1.y > _loc10_.y)
                                                {
                                                   §§push(_loc8_);
                                                   if(!_loc17_)
                                                   {
                                                      §§push(_loc13_);
                                                      if(_loc16_)
                                                      {
                                                         if(§§pop() <= §§pop())
                                                         {
                                                            _loc14_ = param1.x + param1.Speed;
                                                            §§push(Number(param1.x - param1.Speed));
                                                            if(_loc16_)
                                                            {
                                                               _loc15_ = §§pop();
                                                               §§push(_loc14_);
                                                               if(!_loc17_)
                                                               {
                                                                  §§push(§§pop() > _loc10_.x);
                                                                  if(_loc16_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!_loc17_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           §§pop();
                                                                           if(!_loc17_)
                                                                           {
                                                                              addr181:
                                                                              §§push(param1.x <= _loc10_.x);
                                                                              if(param1.x <= _loc10_.x)
                                                                              {
                                                                                 §§pop();
                                                                                 §§push(param3);
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    §§push("Right");
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       addr192:
                                                                                       if(§§pop() == §§pop())
                                                                                       {
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             param1.x = _loc10_.x;
                                                                                             §§push(_loc4_);
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                §§push("Right");
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   §§pop().push(§§pop());
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      addr424:
                                                                                                      _loc9_++;
                                                                                                      continue;
                                                                                                      addr259:
                                                                                                      addr309:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr328:
                                                                                                      if(param1.x <= _loc12_)
                                                                                                      {
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            addr343:
                                                                                                            if(param1.y - (param1.ySpeed - _loc7_) >= _loc10_.y)
                                                                                                            {
                                                                                                               param1.ySpeed = 0;
                                                                                                               addr349:
                                                                                                               param1.y = _loc10_.y;
                                                                                                               §§push(_loc4_);
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  addr356:
                                                                                                                  §§push("Landed");
                                                                                                                  if(!_loc17_)
                                                                                                                  {
                                                                                                                     addr359:
                                                                                                                     §§pop().push(§§pop());
                                                                                                                     addr362:
                                                                                                                     _loc4_.push("OnGround");
                                                                                                                     addr361:
                                                                                                                     addr360:
                                                                                                                     if(!_loc17_)
                                                                                                                     {
                                                                                                                        param1.inAir = false;
                                                                                                                        if(_loc17_)
                                                                                                                        {
                                                                                                                           addr385:
                                                                                                                           §§push(this.arrayContains(_loc4_,"OnGround"));
                                                                                                                           if(!_loc17_)
                                                                                                                           {
                                                                                                                              addr392:
                                                                                                                              §§push(!§§pop());
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 addr395:
                                                                                                                                 §§push(_loc5_);
                                                                                                                                 if(!_loc17_)
                                                                                                                                 {
                                                                                                                                    addr407:
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc16_)
                                                                                                                                       {
                                                                                                                                          addr410:
                                                                                                                                          param1.ySpeed -= _loc7_;
                                                                                                                                          _loc5_ = true;
                                                                                                                                          addr418:
                                                                                                                                          param1.inAir = true;
                                                                                                                                          if(!_loc16_)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr424);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr407);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr424);
                                                                                                                  }
                                                                                                                  §§goto(addr362);
                                                                                                               }
                                                                                                               §§goto(addr361);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr376:
                                                                                                               §§push(!this.arrayContains(_loc4_,"Landed"));
                                                                                                               §§push(!this.arrayContains(_loc4_,"Landed"));
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  addr380:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     if(_loc16_)
                                                                                                                     {
                                                                                                                        §§goto(addr385);
                                                                                                                     }
                                                                                                                     §§goto(addr418);
                                                                                                                  }
                                                                                                                  §§goto(addr392);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr392);
                                                                                                         }
                                                                                                         §§goto(addr360);
                                                                                                      }
                                                                                                      §§goto(addr424);
                                                                                                   }
                                                                                                   §§goto(addr424);
                                                                                                }
                                                                                                §§goto(addr359);
                                                                                             }
                                                                                             §§goto(addr356);
                                                                                          }
                                                                                          §§goto(addr349);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr220:
                                                                                          §§push(_loc15_);
                                                                                          §§push(_loc12_);
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             addr226:
                                                                                             §§push(§§pop() < §§pop() && param1.x >= _loc12_);
                                                                                             §§push(§§pop() < §§pop() && param1.x >= _loc12_);
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                addr236:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   §§pop();
                                                                                                   addr240:
                                                                                                   §§push(param3 == "Left");
                                                                                                }
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   param1.x = _loc12_;
                                                                                                   if(_loc16_)
                                                                                                   {
                                                                                                      §§push(_loc4_);
                                                                                                      if(!_loc17_)
                                                                                                      {
                                                                                                         §§push("Left");
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            §§pop().push(§§pop());
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               §§goto(addr259);
                                                                                                            }
                                                                                                            §§goto(addr309);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr359);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr359);
                                                                                                      }
                                                                                                      §§goto(addr359);
                                                                                                   }
                                                                                                   addr303:
                                                                                                   param1.ySpeed = 0;
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      §§goto(addr424);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr395);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr424);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr380);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr265:
                                                                                             if(§§pop() > §§pop())
                                                                                             {
                                                                                                addr266:
                                                                                                addr272:
                                                                                                §§push(param1.x >= _loc10_.x);
                                                                                                if(param1.x >= _loc10_.x)
                                                                                                {
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      §§push(param1.x <= _loc12_);
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                      }
                                                                                                      §§goto(addr407);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr376);
                                                                                                   }
                                                                                                }
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      addr291:
                                                                                                      if(_loc8_ - param1.ySpeed <= _loc13_)
                                                                                                      {
                                                                                                         trace("Will collide with head");
                                                                                                         param1.y = _loc13_ + param1.height + 0.5;
                                                                                                         §§goto(addr303);
                                                                                                      }
                                                                                                      §§goto(addr424);
                                                                                                   }
                                                                                                   §§goto(addr410);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr424);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr240);
                                                                              }
                                                                              §§goto(addr192);
                                                                           }
                                                                           §§goto(addr266);
                                                                        }
                                                                        §§goto(addr181);
                                                                     }
                                                                     §§goto(addr226);
                                                                  }
                                                                  §§goto(addr407);
                                                               }
                                                               else
                                                               {
                                                                  addr261:
                                                                  §§push(_loc13_);
                                                                  if(!_loc17_)
                                                                  {
                                                                     §§goto(addr265);
                                                                  }
                                                               }
                                                               §§goto(addr291);
                                                            }
                                                            §§goto(addr220);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr261);
                                                            §§push(_loc8_);
                                                         }
                                                         §§goto(addr261);
                                                      }
                                                      §§goto(addr265);
                                                   }
                                                   §§goto(addr261);
                                                }
                                                else if(param1.y < _loc10_.y)
                                                {
                                                   if(_loc16_)
                                                   {
                                                      §§push(param1.x >= _loc10_.x);
                                                      if(param1.x >= _loc10_.x)
                                                      {
                                                         §§pop();
                                                         if(!_loc17_)
                                                         {
                                                            §§goto(addr328);
                                                         }
                                                         §§goto(addr359);
                                                      }
                                                      §§goto(addr328);
                                                   }
                                                   §§goto(addr359);
                                                }
                                                §§goto(addr424);
                                             }
                                          }
                                          §§goto(addr359);
                                       }
                                       §§goto(addr129);
                                    }
                                    §§goto(addr240);
                                 }
                                 §§goto(addr121);
                              }
                              §§goto(addr236);
                           }
                           §§goto(addr376);
                        }
                        §§goto(addr109);
                     }
                     §§goto(addr272);
                  }
                  §§goto(addr291);
               }
               §§goto(addr343);
            }
         }
         return _loc4_;
      }
      
      public function round(param1:Number, param2:int = 2) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = 1;
         var _loc4_:int = 0;
         if(_loc6_)
         {
            while(_loc4_ < param2)
            {
               §§push(_loc3_);
               if(_loc6_)
               {
                  §§push(int(§§pop() * 10));
               }
               _loc3_ = §§pop();
               if(!_loc5_)
               {
                  _loc4_++;
               }
            }
         }
         return Math.round(param1 * _loc3_) / _loc3_;
      }
      
      public function rasterizeToVectorIns(param1:MovieClip, param2:String, param3:Object, param4:int = 0, param5:int = 1, param6:Function = null, param7:Function = null, param8:Object = null) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var after:* = undefined;
         if(!_loc11_)
         {
            var mcconvert:MovieClip = null;
            var before:String = null;
            if(_loc12_)
            {
               var labeln:String = null;
               var d:MovieClip = null;
               if(_loc12_)
               {
                  var dm:Matrix = null;
                  if(_loc12_)
                  {
                     addr54:
                     var mc:MovieClip = param1;
                     var extension:String = param2;
                     if(_loc12_)
                     {
                        addr63:
                        var save:Object = param3;
                        var limit:int = param4;
                        var offset:int = param5;
                        if(!_loc11_)
                        {
                           addr74:
                           var callback:Function = param6;
                           var eachFrame:Function = param7;
                           if(_loc12_)
                           {
                              var callbackdata:Object = param8;
                              if(_loc12_)
                              {
                                 after = function():void
                                 {
                                    var _loc1_:Boolean = true;
                                    var _loc2_:Boolean = false;
                                    if(mcconvert)
                                    {
                                       trace("mcconvert: " + mcconvert);
                                       toggleMC(mcconvert,"stop");
                                       if(_loc1_)
                                       {
                                          mcconvert.stop();
                                          if(!_loc2_)
                                          {
                                             remove(mcconvert);
                                          }
                                          mcconvert = null;
                                          if(!_loc2_)
                                          {
                                             addr29:
                                             processed = false;
                                             if(_loc1_)
                                             {
                                                if(mc.currentFrame >= limit)
                                                {
                                                   addr38:
                                                   toggleMC(mc,"stop");
                                                   stage.quality = before;
                                                   mc = null;
                                                   if(!_loc2_)
                                                   {
                                                      aosave = null;
                                                      if(callback != null)
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            addr60:
                                                            callback(callbackdata);
                                                         }
                                                      }
                                                   }
                                                }
                                                return;
                                             }
                                             §§goto(addr38);
                                          }
                                          §§goto(addr60);
                                       }
                                       §§goto(addr38);
                                    }
                                    §§goto(addr29);
                                 };
                                 if(!_loc11_)
                                 {
                                    var aosave:Object = new Object();
                                    if(_loc12_)
                                    {
                                       addr101:
                                       before = stage.quality;
                                       §§push(limit);
                                       if(_loc12_)
                                       {
                                          if(§§pop() !== 0)
                                          {
                                             addr112:
                                             frames = limit;
                                             addr116:
                                             var processed:Boolean = false;
                                             addr119:
                                             §§push(§§newactivation());
                                             §§push(offset);
                                             if(!_loc11_)
                                             {
                                                §§push(int(§§pop()));
                                             }
                                             §§pop().§§slot[14] = §§pop();
                                             while(true)
                                             {
                                                §§push(i);
                                             }
                                             return;
                                             addr451:
                                          }
                                          §§goto(addr116);
                                       }
                                       while(true)
                                       {
                                          if(§§pop() > frames)
                                          {
                                             §§goto(addr116);
                                          }
                                          else
                                          {
                                             mc.gotoAndStop(i);
                                             labeln = mc.currentFrameLabel;
                                             §§push(processed);
                                             if(_loc12_)
                                             {
                                                if(!§§pop())
                                                {
                                                   §§push(labeln);
                                                   if(_loc12_)
                                                   {
                                                      addr151:
                                                      §§push(§§pop() in save);
                                                      §§push(§§pop() in save);
                                                      if(!_loc11_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§pop();
                                                            §§push(!"overwrite" in save);
                                                            if(!_loc11_)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc12_)
                                                               {
                                                                  addr166:
                                                                  if(!§§pop())
                                                                  {
                                                                     §§pop();
                                                                     if(_loc12_)
                                                                     {
                                                                        §§push(!save.overwrite);
                                                                        if(_loc12_)
                                                                        {
                                                                           addr178:
                                                                           if(§§pop())
                                                                           {
                                                                              trace("No overwrite to " + labeln);
                                                                              if(!_loc11_)
                                                                              {
                                                                                 after();
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    addr442:
                                                                                    §§push(i);
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       §§push(§§pop() + 1);
                                                                                    }
                                                                                    var i:int = §§pop();
                                                                                    continue;
                                                                                 }
                                                                                 addr386:
                                                                                 §§goto(addr442);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr317:
                                                                                 trace(stage.quality);
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    trace(mcconvert.parent);
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       addr331:
                                                                                       §§push(!mcconvert.aosave);
                                                                                       if(!!mcconvert.aosave)
                                                                                       {
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             §§pop();
                                                                                             addr346:
                                                                                             if(!(mcconvert.aosave in aosave))
                                                                                             {
                                                                                                addr348:
                                                                                                if(mcconvert.aosave)
                                                                                                {
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      aosave[mcconvert.aosave] = save[labeln] = new AnimatedBitmapData(mcconvert,true,false,0,0.5,after,null,"",1,eachFrame,true);
                                                                                                      §§goto(addr386);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   save[labeln] = new AnimatedBitmapData(mcconvert,true,false,0,0.5,after,null,"",1,eachFrame,true);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                save[labeln] = aosave[mcconvert.aosave];
                                                                                                after();
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§goto(addr442);
                                                                                             }
                                                                                             §§goto(addr442);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr346);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr408:
                                                                              trace(mcconvert);
                                                                              if(_loc12_)
                                                                              {
                                                                                 addr415:
                                                                              }
                                                                              §§goto(addr442);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(eachFrame);
                                                                              if(!_loc11_)
                                                                              {
                                                                                 if(§§pop() !== null)
                                                                                 {
                                                                                    addr204:
                                                                                    eachFrame(mc);
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr317);
                                                                                 }
                                                                                 trace("converting " + labeln);
                                                                                 addr227:
                                                                                 if(extension == "")
                                                                                 {
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       d = mc.getChildAt(0);
                                                                                       addr250:
                                                                                       dm = d.transform.matrix;
                                                                                       d._matrix = new Matrix(dm.a,dm.b,dm.c,dm.d,dm.tx,dm.ty);
                                                                                       d.x = 0;
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          d.y = 0;
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             mcconvert = MovieClip(d);
                                                                                             addr301:
                                                                                             mcconvert._parent = mc;
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                addr308:
                                                                                                processed = true;
                                                                                                stage.quality = "high";
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   §§goto(addr317);
                                                                                                }
                                                                                                §§goto(addr408);
                                                                                             }
                                                                                             §§goto(addr346);
                                                                                          }
                                                                                          §§goto(addr415);
                                                                                       }
                                                                                       §§goto(addr348);
                                                                                    }
                                                                                    §§goto(addr308);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    d = mc[extension];
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       §§goto(addr250);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr331);
                                                                              }
                                                                              §§goto(addr204);
                                                                           }
                                                                        }
                                                                        §§goto(addr346);
                                                                     }
                                                                     §§goto(addr301);
                                                                  }
                                                                  §§goto(addr178);
                                                               }
                                                               §§goto(addr331);
                                                            }
                                                            §§goto(addr346);
                                                         }
                                                         §§goto(addr178);
                                                      }
                                                      §§goto(addr166);
                                                   }
                                                   §§goto(addr227);
                                                }
                                                §§goto(addr442);
                                             }
                                             §§goto(addr151);
                                          }
                                       }
                                    }
                                    §§goto(addr119);
                                 }
                                 §§goto(addr101);
                              }
                           }
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr112);
               }
               §§goto(addr63);
            }
            §§goto(addr54);
         }
         §§goto(addr74);
      }
      
      public function rasterizeToVector(param1:MovieClip, param2:String, param3:Object, param4:int = 0, param5:int = 1, param6:Function = null, param7:Function = null, param8:Object = null) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!_loc10_)
         {
            var mcconvert:MovieClip = null;
            var after:* = undefined;
            if(!_loc10_)
            {
               var frames:int = 0;
               if(!_loc10_)
               {
                  var i:int = 0;
                  if(_loc11_)
                  {
                     var processed:Boolean = false;
                     if(_loc11_)
                     {
                        var engine:* = undefined;
                        if(_loc11_)
                        {
                           var mc:MovieClip = param1;
                           §§goto(addr60);
                        }
                        §§goto(addr145);
                     }
                  }
               }
               addr60:
               var extension:String = param2;
               if(!_loc10_)
               {
                  var save:Object = param3;
                  var limit:int = param4;
                  if(_loc11_)
                  {
                     addr82:
                     var offset:int = param5;
                     var callback:Function = param6;
                     addr88:
                     var eachFrame:Function = param7;
                     var callbackdata:Object = param8;
                     §§goto(addr94);
                  }
                  §§goto(addr100);
               }
               addr94:
               after = function():void
               {
                  var _loc3_:Boolean = true;
                  var _loc4_:Boolean = false;
                  trace("done with animation " + i);
                  if(_loc3_)
                  {
                     if(mcconvert)
                     {
                        if(_loc3_)
                        {
                           mcconvert.visible = true;
                           if(!_loc4_)
                           {
                              mcconvert.stop();
                              if(!_loc4_)
                              {
                                 if(mcconvert.stage !== null)
                                 {
                                    MovieClip(mcconvert.parent).removeChild(mcconvert);
                                 }
                                 mcconvert = null;
                                 if(!_loc4_)
                                 {
                                    addr41:
                                    processed = false;
                                 }
                                 var _loc1_:*;
                                 var _loc2_:* = (_loc1_ = §§findproperty(i)).i + 1;
                                 if(_loc3_)
                                 {
                                    _loc1_.i = _loc2_;
                                 }
                                 if(i > frames)
                                 {
                                    if(!_loc4_)
                                    {
                                       removeEventListener(Event.ENTER_FRAME,engine);
                                       mc.gotoAndStop(offset);
                                       addr72:
                                       stage.quality = "low";
                                       if(callback !== null)
                                       {
                                          addr78:
                                          callback(callbackdata);
                                       }
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr78);
                           }
                           §§goto(addr41);
                        }
                        §§goto(addr72);
                     }
                  }
                  §§goto(addr41);
               };
               if(_loc11_)
               {
                  addr100:
                  engine = function(param1:Event):void
                  {
                     var _loc4_:Boolean = false;
                     var _loc5_:Boolean = true;
                     var _loc3_:MovieClip = null;
                     if(!_loc4_)
                     {
                        mc.gotoAndStop(i);
                     }
                     var _loc2_:String = mc.currentFrameLabel;
                     if(!_loc4_)
                     {
                        trace(_loc2_);
                        if(!processed)
                        {
                           if(!_loc4_)
                           {
                              trace(save[_loc2_]);
                           }
                           §§push(_loc2_ in save);
                           if(_loc5_)
                           {
                              §§push(§§pop());
                              if(!_loc4_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       addr46:
                                       §§pop();
                                       §§push(!"overwrite");
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() in save);
                                          if(_loc4_)
                                          {
                                          }
                                          addr65:
                                          if(§§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                trace("no overwrite" + i);
                                                after();
                                                return;
                                             }
                                          }
                                          else
                                          {
                                             if(eachFrame !== null)
                                             {
                                                addr80:
                                                eachFrame(mc);
                                             }
                                             if(extension == "")
                                             {
                                                addr87:
                                                _loc3_ = mc.getChildAt(0);
                                             }
                                             else
                                             {
                                                mc[extension];
                                             }
                                             _loc3_.x = 0;
                                             if(!_loc4_)
                                             {
                                                _loc3_.y = 0;
                                                if(!_loc4_)
                                                {
                                                   addr108:
                                                   mcconvert = MovieClip(_loc3_);
                                                }
                                                mcconvert.visible = false;
                                                processed = true;
                                                save[_loc2_] = new AnimatedBitmapData(mcconvert,false,true,0,0.5,after);
                                                §§goto(addr130);
                                             }
                                             §§goto(addr108);
                                          }
                                          §§goto(addr87);
                                       }
                                       addr57:
                                       if(!§§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             §§pop();
                                             §§push(!save.overwrite);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr65);
                              }
                              §§goto(addr57);
                           }
                           §§goto(addr46);
                        }
                        addr130:
                        return;
                     }
                     §§goto(addr80);
                  };
                  var before:String = stage.quality;
                  frames = mc.totalFrames;
                  if(limit !== 0)
                  {
                     §§push(§§newactivation());
                     §§push(limit);
                     if(!_loc10_)
                     {
                        §§push(int(§§pop()));
                     }
                     §§pop().§§slot[12] = §§pop();
                  }
                  §§push(§§newactivation());
                  §§push(offset);
                  if(_loc11_)
                  {
                     §§push(int(§§pop()));
                  }
                  §§pop().§§slot[13] = §§pop();
                  if(_loc11_)
                  {
                     addr145:
                     addEventListener(Event.ENTER_FRAME,engine);
                  }
               }
               processed = false;
               return;
            }
            §§goto(addr82);
         }
         §§goto(addr88);
      }
      
      public function rasterize(param1:MovieClip, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false) : AnimatedBitmap
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            var bm:AnimatedBitmap = null;
            if(_loc7_)
            {
               var removed:* = undefined;
               if(!_loc8_)
               {
                  var mc:MovieClip = param1;
                  var instant:Boolean = param2;
                  var dispose:Boolean = param3;
                  if(_loc7_)
                  {
                     var noreplace:Boolean = param4;
                     var splice:Boolean = param5;
                     if(_loc7_)
                     {
                        var before:String = stage.quality;
                        stage.quality = "high";
                        var Data:AnimatedBitmapData = new AnimatedBitmapData(mc,true,true,0,1,null,null,"",1,null,splice,false,false);
                        §§goto(addr63);
                     }
                     §§goto(addr138);
                  }
                  §§goto(addr111);
               }
               addr63:
               if(_loc7_)
               {
                  bm = new AnimatedBitmap(Data,Event.ENTER_FRAME,stage.frameRate,false,"auto",false);
                  bm._destroyData = dispose;
                  addr111:
                  §§push(dispose);
                  if(_loc7_)
                  {
                     if(§§pop())
                     {
                        if(_loc7_)
                        {
                           removed = function(param1:Event):void
                           {
                              var _loc2_:Boolean = false;
                              var _loc3_:Boolean = true;
                              §§push(bm.animatedBitmapData === null);
                              if(!_loc2_)
                              {
                                 §§push(!§§pop());
                                 if(_loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc2_)
                                       {
                                       }
                                       addr28:
                                       if(§§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             if(!bm.destroyed)
                                             {
                                                if(_loc3_)
                                                {
                                                   addr37:
                                                   bm.destroy();
                                                   if(_loc3_)
                                                   {
                                                      addr47:
                                                      bm.removeEventListener(Event.REMOVED_FROM_STAGE,removed);
                                                   }
                                                }
                                                §§goto(addr47);
                                             }
                                             else
                                             {
                                                bm.animatedBitmapData.destroy();
                                                if(!_loc2_)
                                                {
                                                   §§goto(addr47);
                                                }
                                             }
                                             return;
                                          }
                                          §§goto(addr37);
                                       }
                                       §§goto(addr47);
                                    }
                                    §§goto(addr28);
                                 }
                                 §§pop();
                                 if(_loc3_)
                                 {
                                    §§goto(addr28);
                                    §§push(!bm.animatedBitmapData.destroyed);
                                 }
                                 §§goto(addr37);
                              }
                              §§goto(addr28);
                           };
                           addr124:
                           bm.addEventListener(Event.REMOVED_FROM_STAGE,removed);
                        }
                        §§goto(addr138);
                     }
                     addr138:
                     stage.quality = before;
                     §§goto(addr142);
                  }
                  §§goto(addr147);
               }
               addr142:
               §§push(instant);
               if(!_loc8_)
               {
                  addr147:
                  if(§§pop())
                  {
                     mc.stop();
                  }
                  §§push(noreplace);
               }
               if(!§§pop())
               {
                  bm.replace(mc);
               }
               return bm;
            }
            §§goto(addr138);
         }
         §§goto(addr124);
      }
      
      public function raster(param1:DisplayObject, param2:Boolean = true, param3:String = null, param4:Boolean = true, param5:Boolean = true, param6:Boolean = true) : Bitmap
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            var b:Bitmap = null;
            if(!_loc8_)
            {
               var removed:* = undefined;
               if(!_loc8_)
               {
                  var MC:DisplayObject = param1;
                  var replace:Boolean = param2;
                  var blend:String = param3;
                  var dispose:Boolean = param4;
                  var border:Boolean = param5;
                  if(_loc9_)
                  {
                     var keepcolor:Boolean = param6;
                     if(_loc9_)
                     {
                        var before:String = stage.quality;
                        var om:Matrix = MC.transform.matrix;
                        var bounds:Rectangle = MC.getBounds(MC);
                        if(!_loc8_)
                        {
                           trace(bounds);
                           if(!_loc8_)
                           {
                              §§push(border);
                              if(_loc9_)
                              {
                                 if(!§§pop())
                                 {
                                    addr94:
                                    bounds.x = 0;
                                    bounds.y = 0;
                                    if(_loc9_)
                                    {
                                       addr105:
                                       §§push(§§newactivation());
                                       §§push(MC.x - bounds.x);
                                       if(_loc9_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       §§pop().§§slot[10] = §§pop();
                                       trace(MC.x);
                                       trace(bounds.x);
                                       §§push(§§newactivation());
                                       §§push(MC.y - bounds.y);
                                       if(_loc9_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       §§pop().§§slot[11] = §§pop();
                                       §§push(§§newactivation());
                                       §§push(MC.width * (1 / MC.transform.matrix.a));
                                       if(_loc9_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       §§pop().§§slot[12] = §§pop();
                                       §§push(realx);
                                       if(_loc9_)
                                       {
                                          §§push(0);
                                          if(!_loc8_)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                §§push(§§newactivation());
                                                §§push(realx);
                                                if(_loc9_)
                                                {
                                                   §§push(§§pop() * -1);
                                                   if(!_loc8_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                §§pop().§§slot[12] = §§pop();
                                                if(_loc9_)
                                                {
                                                   addr180:
                                                   §§push(§§newactivation());
                                                   §§push(MC.height * (1 / MC.transform.matrix.d));
                                                   if(_loc9_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   §§pop().§§slot[13] = §§pop();
                                                   if(!_loc8_)
                                                   {
                                                      addr203:
                                                      if(realy < 0)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            §§push(§§newactivation());
                                                            §§push(realy);
                                                            if(!_loc8_)
                                                            {
                                                               §§push(§§pop() * -1);
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            §§pop().§§slot[13] = §§pop();
                                                            addr226:
                                                            trace(realx);
                                                            if(!_loc8_)
                                                            {
                                                               trace(realy);
                                                               if(_loc9_)
                                                               {
                                                                  var Data:BitmapData = new BitmapData(realx,realy,true,16777215);
                                                                  addr251:
                                                                  b = new Bitmap();
                                                                  if(!_loc8_)
                                                                  {
                                                                     b.smoothing = true;
                                                                     §§push(blend);
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(null);
                                                                        if(_loc9_)
                                                                        {
                                                                           if(§§pop() !== §§pop())
                                                                           {
                                                                              addr271:
                                                                              trace("Converting with blendmode: " + blend);
                                                                           }
                                                                           stage.quality = "high";
                                                                           if(!_loc8_)
                                                                           {
                                                                              Data.draw(MC,new Matrix(1,0,0,1,-bounds.x,-bounds.y),null,blend,null,true);
                                                                              stage.quality = before;
                                                                              b.bitmapData = Data;
                                                                              addr315:
                                                                              §§push(keepcolor);
                                                                              if(_loc9_)
                                                                              {
                                                                                 addr319:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    b.transform.colorTransform = MC.transform.colorTransform;
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       addr331:
                                                                                       addr334:
                                                                                       addr333:
                                                                                       if(blend !== null)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr340);
                                                                                    }
                                                                                    b.blendMode = blend;
                                                                                    addr340:
                                                                                    §§push(dispose);
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             removed = function(param1:Event):void
                                                                                             {
                                                                                                var _loc2_:Boolean = true;
                                                                                                var _loc3_:Boolean = false;
                                                                                                b.bitmapData.dispose();
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   trace("Disposed rastered bitmap!");
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      addr14:
                                                                                                      b.removeEventListener(Event.REMOVED_FROM_STAGE,removed);
                                                                                                   }
                                                                                                   return;
                                                                                                }
                                                                                                §§goto(addr14);
                                                                                             };
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                b.addEventListener(Event.REMOVED_FROM_STAGE,removed,false,0,true);
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   §§goto(addr368);
                                                                                                }
                                                                                                §§goto(addr405);
                                                                                             }
                                                                                             §§goto(addr379);
                                                                                          }
                                                                                       }
                                                                                       addr368:
                                                                                       §§goto(addr370);
                                                                                    }
                                                                                    addr370:
                                                                                    if(replace)
                                                                                    {
                                                                                       MovieClip(MC.parent).addChild(b);
                                                                                       addr379:
                                                                                       b.x = MC.x + bounds.x;
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          addr392:
                                                                                          b.y = MC.y + bounds.y;
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             addr405:
                                                                                             b.scaleX = MC.scaleX;
                                                                                             b.scaleY = MC.scaleY;
                                                                                             MovieClip(MC.parent).setChildIndex(b,MovieClip(MC.parent).getChildIndex(MC));
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                addr443:
                                                                                                MovieClip(MC.parent).removeChild(MC);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr443);
                                                                                       }
                                                                                    }
                                                                                    return b;
                                                                                 }
                                                                                 §§goto(addr331);
                                                                              }
                                                                              §§goto(addr368);
                                                                           }
                                                                           §§goto(addr405);
                                                                        }
                                                                        §§goto(addr334);
                                                                     }
                                                                     §§goto(addr333);
                                                                  }
                                                                  §§goto(addr315);
                                                               }
                                                            }
                                                            §§goto(addr392);
                                                         }
                                                         §§goto(addr331);
                                                      }
                                                      §§goto(addr226);
                                                   }
                                                   §§goto(addr251);
                                                }
                                                §§goto(addr226);
                                             }
                                             §§goto(addr180);
                                          }
                                       }
                                       §§goto(addr203);
                                    }
                                    §§goto(addr271);
                                 }
                                 §§goto(addr105);
                              }
                              §§goto(addr319);
                           }
                           §§goto(addr105);
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr405);
                  }
                  §§goto(addr203);
               }
               §§goto(addr405);
            }
            §§goto(addr331);
         }
         §§goto(addr443);
      }
      
      public function stringCheckReplace(param1:RegExp, param2:String, param3:String) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            while(param1.test(param2) !== false)
            {
               §§push(param2);
               if(_loc5_)
               {
                  §§push(§§pop().replace(param1,param3));
               }
               param2 = §§pop();
               if(_loc5_)
               {
                  trace(param2);
               }
            }
         }
         return param2;
      }
      
      public function stringReplace(param1:RegExp, param2:String, param3:String) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param2);
            if(!_loc4_)
            {
               §§push(§§pop().replace(param1,param3));
               if(_loc5_)
               {
                  addr36:
                  param2 = §§pop();
                  if(!_loc4_)
                  {
                     addr39:
                     trace(param2);
                  }
                  §§push(param2);
               }
               return §§pop();
            }
            §§goto(addr36);
         }
         §§goto(addr39);
      }
      
      public function login(param1:String, param2:String, param3:Function, param4:Function, param5:String = "") : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param5);
         if(_loc7_)
         {
            §§push("guest");
            if(!_loc6_)
            {
               if(§§pop() == §§pop())
               {
                  if(!_loc6_)
                  {
                     §§push("Guest");
                     if(!_loc6_)
                     {
                        param1 = §§pop();
                        §§push("Guest");
                     }
                     param2 = §§pop();
                     addr32:
                     §§push(param5);
                     if(!_loc6_)
                     {
                        §§push("");
                        if(!_loc6_)
                        {
                           addr39:
                           §§push(§§pop() == §§pop());
                           if(_loc7_)
                           {
                              if(!§§pop())
                              {
                                 if(_loc7_)
                                 {
                                    addr54:
                                    §§pop();
                                    if(_loc7_)
                                    {
                                       §§goto(addr58);
                                    }
                                    §§goto(addr67);
                                 }
                              }
                              §§goto(addr66);
                           }
                           §§goto(addr54);
                        }
                     }
                     §§goto(addr66);
                  }
                  addr58:
                  §§push(param5);
                  if(!_loc6_)
                  {
                     addr61:
                     §§push("guest");
                     if(!_loc6_)
                     {
                        addr66:
                        if(§§pop() == §§pop())
                        {
                           PlayerIO.quickConnect.simpleConnect(stage,this.gameID,param1,param2,param3,param4);
                           addr67:
                        }
                        §§goto(addr86);
                     }
                     addr86:
                     §§goto(addr85);
                  }
                  addr85:
                  if(param5 == "kong")
                  {
                     PlayerIO.quickConnect.kongregateConnect(stage,this.gameID,this.konguser,this.kongtoken,param3,param4);
                  }
                  return;
               }
               §§goto(addr32);
            }
            §§goto(addr39);
         }
         §§goto(addr61);
      }
      
      public function register(param1:String, param2:String, param3:String, param4:Function, param5:Function = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            PlayerIO.quickConnect.simpleRegister(stage,this.gameID,param1,param2,param3,null,null,null,null,param4,param5);
         }
      }
      
      public function regCheck(param1:TextField, param2:MovieClip, param3:int, param4:String = "") : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            trace("Checking fields " + param1.name);
         }
         var _loc5_:* = 1;
         §§push(param1.length >= param3);
         §§push(param1.length >= param3);
         if(_loc6_)
         {
            if(§§pop())
            {
               if(_loc6_)
               {
                  §§pop();
                  §§push(this.containsChar(param1.text," "));
                  if(!_loc7_)
                  {
                     addr52:
                     §§push(!§§pop());
                     §§push(!§§pop());
                     if(_loc6_)
                     {
                        if(§§pop())
                        {
                           if(!_loc7_)
                           {
                              addr58:
                              §§pop();
                              if(!_loc7_)
                              {
                                 addr64:
                                 §§push(param4 == "");
                                 if(!(param4 == ""))
                                 {
                                    §§pop();
                                    if(!_loc7_)
                                    {
                                       §§push(this.containsChar(param1.text,param4));
                                       if(_loc6_)
                                       {
                                          addr77:
                                          if(§§pop())
                                          {
                                             if(!_loc7_)
                                             {
                                                §§push(2);
                                                if(_loc6_)
                                                {
                                                   _loc5_ = §§pop();
                                                }
                                                else
                                                {
                                                   addr104:
                                                   _loc5_ = §§pop();
                                                   §§goto(addr105);
                                                }
                                             }
                                             §§goto(addr105);
                                          }
                                          else
                                          {
                                             if(param1.length >= 1)
                                             {
                                                §§push(3);
                                                if(!_loc7_)
                                                {
                                                   _loc5_ = §§pop();
                                                   addr102:
                                                   §§goto(addr105);
                                                }
                                                addr105:
                                                param2.gotoAndStop(_loc5_);
                                                return;
                                             }
                                             §§push(1);
                                          }
                                          §§goto(addr104);
                                       }
                                       §§goto(addr77);
                                    }
                                    §§goto(addr102);
                                 }
                                 §§goto(addr77);
                              }
                              §§goto(addr104);
                           }
                           §§goto(addr64);
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr64);
                  }
                  §§goto(addr58);
               }
               §§goto(addr77);
            }
            §§goto(addr52);
         }
         §§goto(addr64);
      }
      
      public function loading(param1:String = "") : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!root.mouseLoad)
         {
            return;
         }
         MovieClip(root).loading = true;
         this.loadreason = param1;
         if(_loc2_)
         {
            this.Loading = true;
            trace("Loading");
            if(!_loc3_)
            {
               MovieClip(root).addChild(MovieClip(root).mouseLoad);
               MovieClip(root).mouseLoad.play();
               if(_loc2_)
               {
                  if(MovieClip(root).mouse)
                  {
                     if(!_loc3_)
                     {
                        addr75:
                        MovieClip(root).addChild(MovieClip(root).mouse);
                     }
                  }
               }
               §§goto(addr75);
            }
            return;
         }
         §§goto(addr75);
      }
      
      public function stoploading() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!root.mouseLoad)
            {
               return;
            }
            MovieClip(root).loading = false;
            this.Loading = false;
            if(!_loc2_)
            {
               this.loadreason = "";
               MovieClip(root).mouseLoad.destroy();
               if(!_loc2_)
               {
                  if(this.loadMC)
                  {
                     addr59:
                     stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.loadFollowMouse);
                  }
                  §§goto(addr74);
               }
               this.remove(this.loadMC);
               if(_loc1_)
               {
                  this.loadMC = null;
               }
            }
            addr74:
            return;
         }
         §§goto(addr59);
      }
      
      public function containsChar(param1:String, param2:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(param1.indexOf(param2) >= 0)
            {
               addr24:
               §§push(true);
               if(!_loc3_)
               {
                  return §§pop();
               }
            }
            else
            {
               §§push(false);
            }
            return §§pop();
         }
         §§goto(addr24);
      }
      
      public function removeValueFromArray(param1:Array, param2:*) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = undefined;
         var _loc3_:* = int(param1.length);
         var _loc4_:* = 0;
         if(!_loc6_)
         {
            while(_loc4_ < _loc3_)
            {
               if((_loc5_ = param1[_loc4_]) == param2)
               {
                  if(!_loc6_)
                  {
                     param1.splice(_loc4_,1);
                     if(!_loc7_)
                     {
                     }
                     addr78:
                     _loc4_++;
                     continue;
                  }
                  §§push(_loc3_);
                  if(!_loc6_)
                  {
                     §§push(§§pop() - 1);
                     if(_loc7_)
                     {
                        addr67:
                        _loc3_ = §§pop();
                        if(!_loc6_)
                        {
                           §§push(_loc4_);
                           if(_loc7_)
                           {
                              §§push(§§pop() - 1);
                           }
                        }
                        §§goto(addr78);
                     }
                     _loc4_ = §§pop();
                     if(_loc6_)
                     {
                        continue;
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr67);
               }
               §§goto(addr78);
            }
         }
      }
      
      public function removeChildFade(param1:DisplayObject, param2:Number = 0.03) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            var mult:int = 0;
            var childfade:* = undefined;
            var o:DisplayObject = param1;
            var speed:Number = param2;
         }
         childfade = function(param1:Event):void
         {
            var _loc2_:Boolean = false;
            var _loc3_:Boolean = true;
            §§push(!o);
            if(_loc3_)
            {
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     §§pop();
                     §§push(o == null);
                     if(!_loc3_)
                     {
                     }
                     §§goto(addr59);
                  }
               }
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     removeEventListener(Event.ENTER_FRAME,childfade);
                     if(_loc3_)
                     {
                        return;
                     }
                  }
                  §§goto(addr60);
               }
               else
               {
                  o.alpha -= speed * mult;
                  if(o.alpha <= 0)
                  {
                     if(_loc3_)
                     {
                        removeEventListener(Event.ENTER_FRAME,childfade);
                        remove(o);
                        addr59:
                        if(§§pop())
                        {
                           addr60:
                           o.destroy;
                        }
                        o = null;
                        return;
                        §§push(o is AnimatedBitmap);
                     }
                  }
               }
            }
            §§goto(addr59);
         };
         trace("Fade removing " + o);
         §§push(!o);
         if(_loc5_)
         {
            if(!§§pop())
            {
               if(_loc5_)
               {
                  addr61:
                  §§pop();
                  §§push(o == null);
               }
            }
            if(§§pop())
            {
               if(_loc5_)
               {
                  return;
               }
               addr102:
               mult = MovieClip(root).mult;
            }
            else
            {
               addEventListener(Event.ENTER_FRAME,childfade);
               if(!_loc4_)
               {
                  o.alpha = 1;
                  mult = 1;
                  if(MovieClip(root).mult)
                  {
                     if(_loc5_)
                     {
                        §§goto(addr102);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr61);
      }
      
      public function fadeIn(param1:DisplayObject, param2:Number = 0.04) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            var mult:int = 0;
            if(!_loc4_)
            {
               var childfadein:* = undefined;
               var o:DisplayObject = param1;
               if(!_loc4_)
               {
                  var speed:Number = param2;
                  if(_loc5_)
                  {
                     childfadein = function(param1:Event):void
                     {
                        var _loc2_:Boolean = true;
                        var _loc3_:Boolean = false;
                        §§push(!o);
                        if(_loc2_)
                        {
                           if(!§§pop())
                           {
                              if(_loc2_)
                              {
                                 §§pop();
                                 §§push(o == null);
                              }
                           }
                        }
                        if(§§pop())
                        {
                           removeEventListener(Event.ENTER_FRAME,childfadein);
                           return;
                        }
                        o.alpha += speed * mult;
                        if(o.alpha >= 1)
                        {
                           removeEventListener(Event.ENTER_FRAME,childfadein);
                           o.alpha = 1;
                        }
                     };
                     if(!_loc4_)
                     {
                        §§push(!o);
                        if(!_loc4_)
                        {
                           if(!§§pop())
                           {
                              if(_loc5_)
                              {
                                 §§pop();
                                 addr68:
                                 §§push(o == null);
                              }
                           }
                        }
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              §§goto(addr76);
                           }
                           else
                           {
                              addr104:
                              if(MovieClip(root).mult)
                              {
                                 addr109:
                                 mult = MovieClip(root).mult;
                              }
                           }
                        }
                        else
                        {
                           addEventListener(Event.ENTER_FRAME,childfadein);
                           if(_loc5_)
                           {
                              o.alpha = 0;
                              addr85:
                              if(!_loc4_)
                              {
                                 mult = 1;
                                 if(_loc5_)
                                 {
                                    §§goto(addr104);
                                 }
                              }
                           }
                        }
                        return;
                     }
                  }
                  addr76:
                  return;
               }
               §§goto(addr109);
            }
            §§goto(addr68);
         }
         §§goto(addr85);
      }
      
      public function fadeOut(param1:DisplayObject, param2:Number = 0.03, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var mult:int = 0;
         var childfadeout:* = undefined;
         var o:DisplayObject = param1;
         var speed:Number = param2;
         var v:Boolean = param3;
         childfadeout = function(param1:Event):void
         {
            var _loc2_:Boolean = false;
            var _loc3_:Boolean = true;
            §§push(!o);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     §§pop();
                     §§push(o == null);
                  }
               }
            }
            if(§§pop())
            {
               removeEventListener(Event.ENTER_FRAME,childfadeout);
               return;
            }
            o.alpha -= speed * mult;
            if(!_loc2_)
            {
               if(o.alpha <= 0)
               {
                  removeEventListener(Event.ENTER_FRAME,childfadeout);
                  o.alpha = 0;
                  if(!_loc2_)
                  {
                     o.visible = v;
                  }
               }
            }
         };
         if(!_loc6_)
         {
            §§push(!o);
            if(!_loc6_)
            {
               if(!§§pop())
               {
                  if(_loc5_)
                  {
                     §§pop();
                     addr59:
                     §§push(o == null);
                  }
               }
            }
            if(§§pop())
            {
               if(_loc5_)
               {
                  return;
               }
               addr82:
               o.alpha = 1;
            }
            else
            {
               addEventListener(Event.ENTER_FRAME,childfadeout);
               if(!_loc6_)
               {
                  §§goto(addr82);
               }
            }
            mult = 1;
            if(MovieClip(root).mult)
            {
               mult = MovieClip(root).mult;
            }
            return;
         }
         §§goto(addr59);
      }
      
      public function fadeOutDummy(param1:Object, param2:Number = 0.03, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            var mult:int = 0;
            var childfadeout:* = undefined;
            if(!_loc5_)
            {
               var o:Object = param1;
               if(_loc6_)
               {
                  var speed:Number = param2;
                  if(_loc6_)
                  {
                     var v:Boolean = param3;
                     if(_loc6_)
                     {
                        childfadeout = function(param1:Event):void
                        {
                           var _loc2_:Boolean = false;
                           var _loc3_:Boolean = true;
                           §§push(!o);
                           if(_loc3_)
                           {
                              if(!§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    addr13:
                                    §§pop();
                                    if(_loc3_)
                                    {
                                       §§goto(addr19);
                                    }
                                    §§goto(addr55);
                                 }
                              }
                              addr19:
                              if(o == null)
                              {
                                 if(!_loc2_)
                                 {
                                    removeEventListener(Event.ENTER_FRAME,childfadeout);
                                    return;
                                 }
                                 addr49:
                                 o.alpha = 0;
                                 if(!_loc2_)
                                 {
                                    addr55:
                                    o.visible = v;
                                 }
                              }
                              else
                              {
                                 o.alpha -= speed * mult;
                                 if(o.alpha <= 0)
                                 {
                                    if(!_loc2_)
                                    {
                                       removeEventListener(Event.ENTER_FRAME,childfadeout);
                                    }
                                    §§goto(addr49);
                                 }
                              }
                              return;
                           }
                           §§goto(addr13);
                        };
                        if(_loc6_)
                        {
                           addr60:
                           §§push(!o);
                           if(_loc6_)
                           {
                              if(!§§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    addr69:
                                    §§pop();
                                    §§push(o == null);
                                 }
                              }
                              if(§§pop())
                              {
                                 §§goto(addr75);
                              }
                              else
                              {
                                 addEventListener(Event.ENTER_FRAME,childfadeout);
                                 if(!_loc5_)
                                 {
                                    §§goto(addr92);
                                 }
                                 §§goto(addr98);
                              }
                           }
                           §§goto(addr69);
                        }
                        §§goto(addr75);
                     }
                     addr92:
                     o.alpha = 1;
                     if(_loc6_)
                     {
                        addr98:
                        mult = 1;
                        if(_loc6_)
                        {
                           if(!MovieClip(root).mult)
                           {
                           }
                        }
                        §§goto(addr115);
                     }
                     mult = MovieClip(root).mult;
                     §§goto(addr115);
                  }
                  addr115:
                  return;
               }
               §§goto(addr92);
            }
            addr75:
            return;
         }
         §§goto(addr60);
      }
      
      public function fadeInDummy(param1:Object, param2:Number = 0.02) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            var mult:int = 0;
            var childfade:* = undefined;
            var o:Object = param1;
            var speed:Number = param2;
            if(!_loc5_)
            {
               childfade = function(param1:Event):void
               {
                  var _loc2_:Boolean = true;
                  var _loc3_:Boolean = false;
                  §§push(!o);
                  if(_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(_loc2_)
                        {
                           addr13:
                           §§pop();
                           §§push(o == null);
                        }
                     }
                     if(§§pop())
                     {
                        removeEventListener(Event.ENTER_FRAME,childfade);
                        if(_loc2_)
                        {
                           return;
                        }
                     }
                     else
                     {
                        o.alpha += speed * mult;
                        if(o.alpha >= 1)
                        {
                           o.alpha = 1;
                           if(!_loc3_)
                           {
                              removeEventListener(Event.ENTER_FRAME,childfade);
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr13);
               };
               if(!_loc5_)
               {
                  §§push(!o);
                  if(!_loc5_)
                  {
                     if(!§§pop())
                     {
                        if(_loc4_)
                        {
                           §§goto(addr60);
                        }
                     }
                     §§goto(addr68);
                  }
                  addr60:
                  §§pop();
                  if(_loc4_)
                  {
                     addr68:
                     if(o != null)
                     {
                        addEventListener(Event.ENTER_FRAME,childfade);
                        if(!_loc5_)
                        {
                           o.alpha = 0;
                           if(!_loc5_)
                           {
                              addr92:
                              mult = 1;
                              if(MovieClip(root).mult)
                              {
                                 mult = MovieClip(root).mult;
                              }
                           }
                        }
                        return;
                     }
                  }
                  return;
               }
               §§goto(addr92);
            }
         }
         §§goto(addr68);
      }
      
      public function removeValueFromVector(param1:Object, param2:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = undefined;
         var _loc3_:* = int(param1.length);
         var _loc4_:* = 0;
         if(!_loc7_)
         {
            while(_loc4_ < _loc3_)
            {
               if((_loc5_ = param1[_loc4_]) == param2)
               {
                  if(_loc6_)
                  {
                     param1.splice(_loc4_,1);
                     if(!_loc7_)
                     {
                        §§push(_loc3_);
                        if(!_loc7_)
                        {
                           §§push(§§pop() - 1);
                           if(_loc6_)
                           {
                              _loc3_ = §§pop();
                              if(_loc6_)
                              {
                                 §§push(_loc4_);
                                 if(!_loc7_)
                                 {
                                    addr72:
                                    §§push(§§pop() - 1);
                                 }
                                 _loc4_ = §§pop();
                                 if(!_loc7_)
                                 {
                                    addr76:
                                    _loc4_++;
                                 }
                              }
                              continue;
                           }
                        }
                        §§goto(addr72);
                     }
                  }
               }
               §§goto(addr76);
            }
         }
      }
      
      public function addMc(param1:String, param2:Point, param3:MovieClip) : MovieClip
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Class;
         var _loc5_:* = new (_loc4_ = getDefinitionByName(param1) as Class)();
         if(_loc6_)
         {
            param3.addChild(_loc5_);
            if(!_loc7_)
            {
               _loc5_.x = param2.x;
               if(!_loc6_)
               {
               }
               §§goto(addr51);
            }
            _loc5_.y = param2.y;
         }
         addr51:
         return _loc5_;
      }
      
      public function addBtn(param1:String, param2:Point, param3:MovieClip) : SimpleButton
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Class;
         var _loc5_:* = new (_loc4_ = getDefinitionByName(param1) as Class)();
         if(_loc7_)
         {
            param3.addChild(_loc5_);
            if(!_loc6_)
            {
               §§goto(addr42);
            }
            §§goto(addr49);
         }
         addr42:
         _loc5_.x = param2.x;
         if(!_loc6_)
         {
            addr49:
            _loc5_.y = param2.y;
         }
         return _loc5_;
      }
      
      public function fadeAdd(param1:String, param2:Point, param3:MovieClip) : MovieClip
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var object:* = undefined;
         if(!_loc6_)
         {
            var fade:Function = null;
            var linkage:String = param1;
            var position:Point = param2;
            var where:MovieClip = param3;
            var ClassDefine:Class = getDefinitionByName(linkage) as Class;
         }
         object = new ClassDefine();
         where.addChild(object);
         §§push(§§newactivation());
         §§push(function(param1:Event):void
         {
            var _loc2_:Boolean = false;
            var _loc3_:Boolean = true;
            if(object.alpha < 1)
            {
               if(_loc3_)
               {
                  object.alpha += 0.05;
                  if(!_loc3_)
                  {
                  }
               }
            }
            else
            {
               object.alpha = 1;
               if(!_loc2_)
               {
                  removeEventListener(Event.ENTER_FRAME,fade);
               }
            }
         });
         if(_loc5_)
         {
            §§push(§§pop());
         }
         §§pop().§§slot[6] = §§pop();
         if(_loc5_)
         {
            addEventListener(Event.ENTER_FRAME,fade);
            if(_loc5_)
            {
               object.alpha = 0;
               if(!_loc6_)
               {
                  object.x = position.x;
                  if(_loc6_)
                  {
                  }
                  §§goto(addr112);
               }
               object.y = position.y;
            }
         }
         addr112:
         return object;
      }
      
      public function fade(param1:MovieClip, param2:int, param3:Function = null, param4:Function = null) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:MovieClip = MovieClip(root);
         var _loc6_:Class = getDefinitionByName("Fader") as Class;
         _loc5_.fader = new _loc6_();
         _loc5_.fader.noraster = false;
         if(!_loc7_)
         {
            _loc5_.fader.f = param3;
            _loc5_.fader.cf = param4;
            _loc5_.addChild(_loc5_.fader);
            _loc5_.fader.x = 398.7;
            _loc5_.fader.y = 298.35;
            if(!_loc7_)
            {
               _loc5_.fader.before = stage.quality;
               if(_loc8_)
               {
                  if(stage.quality !== "low")
                  {
                     if(_loc8_)
                     {
                        addr82:
                        stage.quality = "medium";
                        addr85:
                        _loc5_.fader.bitmapping = false;
                        _loc5_.fader.play();
                        if(root.anims)
                        {
                           root.anims.push(_loc5_.fader);
                        }
                        _loc5_.fader.where = param1;
                        _loc5_.fader.go = param2;
                     }
                     _loc5_.fader.addEventListener(Event.ENTER_FRAME,_loc5_.faderloop,false,0,true);
                     if(_loc5_.mousedepth !== null)
                     {
                        addr129:
                        _loc5_.mousedepth();
                        §§goto(addr131);
                     }
                     addr131:
                     return;
                  }
                  §§goto(addr85);
               }
            }
            §§goto(addr129);
         }
         §§goto(addr82);
      }
      
      public function fadeRemove(param1:MovieClip, param2:String = "") : *
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var fade:Function = null;
         if(!_loc5_)
         {
            var object:MovieClip = param1;
            var instance:String = param2;
            if(object !== null)
            {
               if(object.parent != null)
               {
                  addEventListener(Event.ENTER_FRAME,fade);
                  §§push(§§newactivation());
                  §§push(function(param1:Event):void
                  {
                     var _loc3_:Boolean = true;
                     var _loc4_:Boolean = false;
                     var _loc2_:DisplayObjectContainer = null;
                     if(!_loc4_)
                     {
                        object.alpha -= 0.05;
                        if(!_loc4_)
                        {
                           §§goto(addr17);
                        }
                        §§goto(addr21);
                     }
                     addr17:
                     if(object.alpha <= 0)
                     {
                        addr21:
                        _loc2_ = object.parent;
                        if(!_loc4_)
                        {
                           if(instance !== "")
                           {
                              if(!_loc4_)
                              {
                                 _loc2_[instance] = null;
                                 if(!_loc4_)
                                 {
                                    addr39:
                                    _loc2_.removeChild(object);
                                    object = null;
                                 }
                                 trace(object);
                                 removeEventListener(Event.ENTER_FRAME,fade);
                              }
                              §§goto(addr53);
                           }
                        }
                        §§goto(addr39);
                     }
                     addr53:
                  });
                  if(!_loc5_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().§§slot[3] = §§pop();
               }
            }
         }
      }
      
      public function RemoveChildren(param1:DisplayObject, param2:Vector.<DisplayObject> = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:DisplayObject = null;
         if(!_loc5_)
         {
            §§push(!param1);
            if(!_loc5_)
            {
               if(!§§pop())
               {
                  if(!_loc5_)
                  {
                     addr31:
                     §§pop();
                     §§goto(addr39);
                  }
               }
               if(§§pop())
               {
                  addr39:
                  if(_loc6_)
                  {
                     §§push(param1 == null);
                  }
                  return;
               }
               var _loc3_:int = 0;
               if(!_loc5_)
               {
                  if(!(param1 is MovieClip))
                  {
                     if(!_loc5_)
                     {
                        §§goto(addr52);
                     }
                     else
                     {
                        loop0:
                        while(true)
                        {
                           §§push(param1.getChildAt(_loc3_) !== null);
                           loop1:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 _loc4_ = param1.getChildAt(_loc3_);
                                 if(_loc6_)
                                 {
                                    trace("Remove " + _loc4_);
                                    §§push(!_loc4_);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop());
                                       if(_loc6_)
                                       {
                                          if(!§§pop())
                                          {
                                             if(_loc6_)
                                             {
                                                addr78:
                                                §§pop();
                                                if(!_loc5_)
                                                {
                                                   §§push(_loc4_ == null);
                                                   if(!_loc5_)
                                                   {
                                                      addr94:
                                                      if(§§pop())
                                                      {
                                                         _loc3_++;
                                                      }
                                                      §§push(Boolean(param2));
                                                      if(Boolean(param2))
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            §§pop();
                                                            if(!_loc5_)
                                                            {
                                                               §§push(this.vectorContains(param2,_loc4_));
                                                               if(_loc6_)
                                                               {
                                                                  addr115:
                                                                  addr114:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        _loc3_++;
                                                                        addr150:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(param1));
                                                                           §§push(Boolean(param1));
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 §§pop();
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 §§push(Boolean(param1.numChildren > _loc3_));
                                                                              }
                                                                              §§push(§§pop());
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              §§pop();
                                                                              if(_loc5_)
                                                                              {
                                                                                 return;
                                                                              }
                                                                              addr186:
                                                                              continue loop0;
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        addr150:
                                                                     }
                                                                     else
                                                                     {
                                                                        addr132:
                                                                     }
                                                                     §§goto(addr150);
                                                                  }
                                                                  else if(_loc4_ is MovieClip)
                                                                  {
                                                                     this.toggleMC(_loc4_,"stop");
                                                                     addr129:
                                                                     this.remove(_loc4_);
                                                                     §§goto(addr132);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr136:
                                                                     if(_loc4_ is AnimatedBitmap)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  §§push(_loc4_ is MovieClip);
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  addr144:
                                                                  param1.removeChildAt(_loc3_);
                                                               }
                                                               _loc4_ = null;
                                                               §§goto(addr150);
                                                            }
                                                            §§goto(addr144);
                                                         }
                                                         §§goto(addr136);
                                                      }
                                                      §§goto(addr115);
                                                   }
                                                   §§goto(addr136);
                                                }
                                                §§goto(addr129);
                                             }
                                             §§goto(addr114);
                                          }
                                       }
                                       §§goto(addr94);
                                    }
                                    §§goto(addr78);
                                 }
                                 §§goto(addr129);
                              }
                              §§goto(addr186);
                           }
                           _loc4_.destroy();
                           return;
                        }
                     }
                  }
                  §§goto(addr150);
               }
               addr52:
               return;
            }
         }
         §§goto(addr31);
      }
      
      public function RemoveButtons(param1:DisplayObject) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:DisplayObject = null;
         var _loc2_:* = 0;
         if(!_loc5_)
         {
            while(_loc2_ < param1.numChildren)
            {
               _loc3_ = param1.getChildAt(_loc2_);
               if(!_loc5_)
               {
                  if(_loc3_ is SimpleButton)
                  {
                     if(_loc4_)
                     {
                        param1.removeChildAt(_loc2_);
                        if(_loc4_)
                        {
                           §§push(_loc2_);
                           if(!_loc5_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc2_ = §§pop();
                        }
                     }
                  }
               }
               _loc3_ = null;
               if(_loc4_)
               {
                  _loc2_++;
               }
            }
         }
      }
      
      public function toggleMC(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(param2 == "play")
            {
               if(!_loc5_)
               {
                  param1.play();
                  if(!_loc5_)
                  {
                     addr33:
                     if(param1 is MovieClip)
                     {
                        var _loc3_:int = 0;
                        if(!_loc5_)
                        {
                           while(_loc3_ < param1.numChildren)
                           {
                              §§push(param1.getChildAt(_loc3_) is MovieClip);
                              if(_loc4_)
                              {
                                 if(!§§pop())
                                 {
                                    if(!_loc5_)
                                    {
                                       addr63:
                                       §§pop();
                                       if(!_loc5_)
                                       {
                                          addr79:
                                          if(param1.getChildAt(_loc3_) is AnimatedBitmap)
                                          {
                                             if(_loc5_)
                                             {
                                                continue;
                                             }
                                             this.toggleMC(param1.getChildAt(_loc3_),param2);
                                             if(!_loc4_)
                                             {
                                                continue;
                                             }
                                          }
                                       }
                                       _loc3_++;
                                       continue;
                                    }
                                 }
                                 §§goto(addr79);
                              }
                              §§goto(addr63);
                           }
                        }
                        return;
                     }
                  }
               }
            }
            else
            {
               param1.stop();
               if(!_loc5_)
               {
                  §§goto(addr33);
               }
            }
         }
      }
      
      public function arrayKeyID(param1:Array, param2:String) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:DatabaseObject = null;
         var _loc3_:int = param1.length;
         var _loc4_:int = 0;
         if(_loc7_)
         {
            while(true)
            {
               §§push(_loc4_);
               if(!_loc7_)
               {
                  break;
               }
               if(§§pop() >= _loc3_)
               {
                  addr63:
                  break;
               }
               if((_loc5_ = param1[_loc4_]).key == param2)
               {
                  if(_loc7_)
                  {
                     return _loc4_;
                  }
               }
               else
               {
                  _loc4_++;
               }
            }
            return §§pop();
         }
         §§goto(addr63);
      }
      
      public function vectorKeyID(param1:Vector.<DatabaseObject>, param2:String) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:DatabaseObject = null;
         var _loc3_:int = param1.length;
         var _loc4_:int = 0;
         if(_loc7_)
         {
            while(true)
            {
               §§push(_loc4_);
               if(!_loc7_)
               {
                  break;
               }
               if(§§pop() >= _loc3_)
               {
                  addr64:
                  break;
               }
               if((_loc5_ = param1[_loc4_]).key == param2)
               {
                  if(_loc7_)
                  {
                     return _loc4_;
                  }
               }
               else
               {
                  _loc4_++;
               }
            }
            return §§pop();
         }
         §§goto(addr64);
      }
      
      public function arrayContainsBase(param1:Array, param2:*) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = undefined;
         var _loc3_:int = param1.length;
         var _loc4_:int = 0;
         if(_loc6_)
         {
            while(_loc4_ < _loc3_)
            {
               if((_loc5_ = param1[_loc4_].split("_")[0]) == param2)
               {
                  if(_loc6_)
                  {
                     return true;
                  }
               }
               else
               {
                  _loc4_++;
               }
            }
         }
         return false;
      }
      
      public function attachTooltip(param1:MovieClip, param2:Function, param3:Object = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            var addtool:* = undefined;
            if(!_loc5_)
            {
               addr30:
               var removetool:* = undefined;
               var mc:MovieClip = param1;
               if(!_loc5_)
               {
                  var f:Function = param2;
                  if(_loc6_)
                  {
                     var o:Object = param3;
                     if(!_loc5_)
                     {
                        addtool = function(param1:MouseEvent):void
                        {
                           var _loc2_:Boolean = false;
                           var _loc3_:Boolean = true;
                           remove(tooltipMC);
                           tooltipMC = addMc("Tooltip",new Point(MovieClip(root).mouseX,MovieClip(root).mouseY),MovieClip(root));
                           tooltipMC.mouseEnabled = false;
                           if(!_loc2_)
                           {
                              tooltipMC.cacheAsBitmap = true;
                              f(tooltipMC,o);
                              if(_loc3_)
                              {
                                 stageBoundary(tooltipMC);
                                 stage.addEventListener(MouseEvent.MOUSE_MOVE,tooltipFollowMouse);
                              }
                           }
                        };
                        removetool = function(param1:MouseEvent):void
                        {
                           var _loc2_:Boolean = true;
                           var _loc3_:Boolean = false;
                           stage.removeEventListener(MouseEvent.MOUSE_MOVE,tooltipFollowMouse);
                           if(!_loc3_)
                           {
                              remove(tooltipMC);
                           }
                        };
                        addr65:
                        if(mc.toolAdded)
                        {
                           addr69:
                           this.remove(this.tooltipMC);
                           §§goto(addr73);
                        }
                        §§goto(addr99);
                     }
                     addr73:
                     this.tooltipMC = null;
                     mc.removeEventListener(MouseEvent.ROLL_OVER,addtool);
                     if(_loc6_)
                     {
                        mc.removeEventListener(MouseEvent.ROLL_OUT,removetool);
                        addr99:
                        mc.addEventListener(MouseEvent.ROLL_OVER,addtool);
                        mc.addEventListener(MouseEvent.ROLL_OUT,removetool);
                        mc.toolAdded = true;
                     }
                     return;
                  }
                  §§goto(addr65);
               }
               §§goto(addr69);
            }
            §§goto(addr99);
         }
         §§goto(addr30);
      }
      
      public function arrayContainsSplit(param1:Array, param2:String, param3:String = "_") : String
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:* = undefined;
         var _loc7_:* = null;
         var _loc4_:int = param1.length;
         var _loc5_:int = 0;
         if(_loc8_)
         {
            while(_loc5_ < _loc4_)
            {
               §§push((_loc6_ = param1[_loc5_]).split(param3)[0]);
               if(!_loc9_)
               {
                  _loc7_ = §§pop();
                  if(_loc8_)
                  {
                     trace(_loc6_);
                     if(_loc9_)
                     {
                        continue;
                     }
                     trace(_loc7_);
                     if(!_loc8_)
                     {
                        continue;
                     }
                  }
                  §§push(_loc7_);
               }
               if(§§pop() == param2)
               {
                  if(_loc8_)
                  {
                     return _loc6_;
                  }
               }
               else
               {
                  _loc5_++;
               }
            }
         }
         return "false";
      }
      
      public function vectorContainsSplit(param1:Vector.<String>, param2:String) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = undefined;
         var _loc3_:int = param1.length;
         var _loc4_:int = 0;
         if(!_loc6_)
         {
            while(_loc4_ < _loc3_)
            {
               if((_loc5_ = param1[_loc4_]).split("_")[0] == param2)
               {
                  if(!_loc6_)
                  {
                     return _loc5_;
                  }
               }
               else
               {
                  _loc4_++;
               }
            }
         }
         return "false";
      }
      
      public function arrayContainsBaseID(param1:Array, param2:String) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = undefined;
         var _loc3_:int = param1.length;
         var _loc4_:int = 0;
         if(!_loc6_)
         {
            while(true)
            {
               §§push(_loc4_);
               if(_loc6_)
               {
                  break;
               }
               if(§§pop() >= _loc3_)
               {
                  addr68:
                  break;
               }
               if((_loc5_ = param1[_loc4_].split("_")[0]) == param2)
               {
                  if(!_loc6_)
                  {
                     return _loc4_;
                  }
               }
               else
               {
                  _loc4_++;
               }
            }
            return §§pop();
         }
         §§goto(addr68);
      }
      
      public function arrayContains(param1:Array, param2:*) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = undefined;
         var _loc3_:int = param1.length;
         var _loc4_:int = 0;
         if(_loc7_)
         {
            while(_loc4_ < _loc3_)
            {
               if((_loc5_ = param1[_loc4_]) == param2)
               {
                  if(!_loc6_)
                  {
                     return true;
                  }
               }
               else
               {
                  _loc4_++;
               }
            }
         }
         return false;
      }
      
      public function vectorContains(param1:Object, param2:*) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = undefined;
         var _loc3_:int = param1.length;
         var _loc4_:int = 0;
         if(!_loc7_)
         {
            while(_loc4_ < _loc3_)
            {
               if((_loc5_ = param1[_loc4_]) == param2)
               {
                  if(_loc6_)
                  {
                     return true;
                  }
               }
               else
               {
                  _loc4_++;
               }
            }
         }
         return false;
      }
      
      public function arrayContainsID(param1:Array, param2:*) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = undefined;
         var _loc3_:int = param1.length;
         var _loc4_:int = 0;
         if(!_loc7_)
         {
            while(true)
            {
               §§push(_loc4_);
               if(!_loc6_)
               {
                  break;
               }
               if(§§pop() >= _loc3_)
               {
                  addr63:
                  break;
               }
               if((_loc5_ = param1[_loc4_]) == param2)
               {
                  if(!_loc7_)
                  {
                     return _loc4_;
                  }
               }
               else
               {
                  _loc4_++;
               }
            }
            return §§pop();
         }
         §§goto(addr63);
      }
      
      public function vectorContainsID(param1:Object, param2:*) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = undefined;
         var _loc3_:int = param1.length;
         var _loc4_:int = 0;
         if(_loc6_)
         {
            while(true)
            {
               §§push(_loc4_);
               if(!_loc6_)
               {
                  break;
               }
               if(§§pop() >= _loc3_)
               {
                  addr54:
                  break;
               }
               if((_loc5_ = param1[_loc4_]) == param2)
               {
                  if(_loc6_)
                  {
                     return _loc4_;
                  }
               }
               else
               {
                  _loc4_++;
               }
            }
            return §§pop();
         }
         §§goto(addr54);
      }
      
      public function findItem(param1:String, param2:Array) : Object
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:Object = null;
         var _loc7_:* = 0;
         var _loc3_:int = param2.length;
         var _loc4_:Object = new Object();
         var _loc5_:int = 0;
         if(!_loc9_)
         {
            while(true)
            {
               if(_loc5_ < _loc3_)
               {
                  _loc6_ = param2[_loc5_];
                  if(!_loc9_)
                  {
                     §§push(this.arrayContainsID(_loc6_.Array,param1));
                     if(_loc8_)
                     {
                        §§push(int(§§pop()));
                        if(_loc8_)
                        {
                           addr60:
                           §§push(§§pop());
                           if(_loc8_)
                           {
                              _loc7_ = §§pop();
                              addr64:
                              §§push(0);
                           }
                           if(§§pop() >= §§pop())
                           {
                              if(_loc8_)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              _loc5_++;
                           }
                           continue;
                        }
                        §§goto(addr64);
                     }
                     §§goto(addr60);
                  }
                  break;
               }
            }
            return {
               "ID":_loc7_,
               "arrayObject":_loc6_
            };
         }
         return {
            "ID":-1,
            "arrayObject":null
         };
      }
      
      public function pushItem(param1:Object, param2:String) : int
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc9_:* = 0;
         var _loc10_:* = undefined;
         var _loc11_:int = 0;
         var _loc12_:* = undefined;
         var _loc13_:* = 0;
         var _loc14_:* = undefined;
         §§push(param1.Array);
         if(_loc16_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:int = param1.Max;
         var _loc5_:int = _loc3_.length;
         if(_loc16_)
         {
            trace(_loc5_);
         }
         var _loc6_:Boolean = false;
         var _loc7_:int = int(param2.split(this.itemSplitChar)[1]);
         §§push(param2);
         if(!_loc15_)
         {
            §§push(§§pop().split(this.itemSplitChar)[0].split("_")[0]);
         }
         var _loc8_:* = §§pop();
         if(_loc16_)
         {
            §§push(Boolean(MovieClip(root)["i_" + _loc8_].hasOwnProperty("Itemtype")));
            if(_loc16_)
            {
               if(§§pop())
               {
                  if(!_loc15_)
                  {
                     addr95:
                     §§pop();
                     if(_loc16_)
                     {
                        addr98:
                        §§push(Boolean(MovieClip(root)[MovieClip(root)["i_" + _loc8_].Itemtype + "Stack"]));
                        if(_loc16_)
                        {
                           addr116:
                           if(§§pop())
                           {
                              §§push(0);
                              if(!_loc15_)
                              {
                                 _loc9_ = §§pop();
                                 if(!_loc15_)
                                 {
                                    addr124:
                                    loop1:
                                    while(true)
                                    {
                                       §§push(_loc9_);
                                       if(!_loc15_)
                                       {
                                          §§push(_loc5_);
                                          if(!_loc15_)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                _loc10_ = _loc3_[_loc9_];
                                                if(!_loc15_)
                                                {
                                                   _loc11_ = int(_loc10_.split("_")[1]);
                                                }
                                                _loc12_ = _loc10_.split("_")[0];
                                                if(!_loc15_)
                                                {
                                                   §§push(_loc11_);
                                                   if(_loc16_)
                                                   {
                                                      §§push(_loc7_);
                                                      if(!_loc15_)
                                                      {
                                                         §§push(int(§§pop() + §§pop()));
                                                         if(_loc16_)
                                                         {
                                                            _loc13_ = §§pop();
                                                            if(_loc16_)
                                                            {
                                                               if(_loc12_ != _loc8_)
                                                               {
                                                                  continue;
                                                               }
                                                               if(!_loc15_)
                                                               {
                                                                  _loc6_ = true;
                                                                  addr182:
                                                                  trace("Stacking");
                                                                  if(!_loc15_)
                                                                  {
                                                                     §§goto(addr188);
                                                                  }
                                                               }
                                                               §§goto(addr197);
                                                            }
                                                            §§goto(addr182);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr192);
                                                }
                                                addr188:
                                                §§push(_loc9_);
                                                if(_loc16_)
                                                {
                                                   addr192:
                                                   if(§§pop() < _loc4_)
                                                   {
                                                      if(!_loc15_)
                                                      {
                                                         addr197:
                                                         §§push(_loc3_);
                                                         §§push(_loc9_);
                                                         §§push(_loc8_ + "_");
                                                         if(_loc16_)
                                                         {
                                                            §§push(§§pop() + _loc13_);
                                                         }
                                                         §§pop()[§§pop()] = §§pop();
                                                         addr208:
                                                         §§push(_loc13_);
                                                      }
                                                   }
                                                   §§goto(addr208);
                                                }
                                                return §§pop();
                                             }
                                             if(_loc16_)
                                             {
                                                addr223:
                                                addr224:
                                                if(!_loc6_)
                                                {
                                                   if(!_loc15_)
                                                   {
                                                      addr227:
                                                      trace("Looking for empty slot");
                                                      if(_loc16_)
                                                      {
                                                         §§push(0);
                                                         if(_loc16_)
                                                         {
                                                            addr237:
                                                            _loc9_ = §§pop();
                                                            addr238:
                                                            while(true)
                                                            {
                                                               §§push(_loc9_);
                                                               if(_loc16_)
                                                               {
                                                                  break loop1;
                                                               }
                                                               break;
                                                            }
                                                            addr274:
                                                         }
                                                         §§goto(addr281);
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                }
                                                addr280:
                                                addr281:
                                                return §§pop();
                                                §§push(0);
                                             }
                                             §§goto(addr227);
                                          }
                                          while(true)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                §§goto(addr280);
                                             }
                                             else
                                             {
                                                if((_loc14_ = _loc3_[_loc9_]) == "None")
                                                {
                                                   if(!_loc15_)
                                                   {
                                                      §§push(_loc9_);
                                                      if(!_loc15_)
                                                      {
                                                         if(§§pop() < _loc4_)
                                                         {
                                                            if(_loc16_)
                                                            {
                                                               _loc3_[_loc9_] = param2;
                                                               if(!_loc16_)
                                                               {
                                                                  §§goto(addr274);
                                                               }
                                                            }
                                                         }
                                                         return 1;
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   _loc9_++;
                                                }
                                                §§goto(addr238);
                                             }
                                          }
                                          addr279:
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§goto(addr279);
                                    }
                                 }
                                 §§goto(addr238);
                              }
                              §§goto(addr237);
                           }
                           §§goto(addr223);
                        }
                        §§goto(addr224);
                     }
                     §§goto(addr124);
                  }
                  §§goto(addr223);
               }
               §§goto(addr116);
            }
            §§goto(addr95);
         }
         §§goto(addr98);
      }
      
      public function dragFollowMouse(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.dragMC.x = this.dragMC.parent.mouseX;
            if(!_loc3_)
            {
               this.dragMC.y = this.dragMC.parent.mouseY;
            }
         }
      }
      
      public function loadFollowMouse(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.loadMC.x = this.loadMC.parent.mouseX;
            if(_loc3_)
            {
               this.loadMC.y = this.loadMC.parent.mouseY;
            }
         }
      }
      
      public function riseRemove(param1:MovieClip, param2:String = "") : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            param1.y -= 0.5;
            if(!_loc4_)
            {
               param1.alpha -= 0.025;
               if(_loc3_)
               {
                  if(param1.alpha <= 0)
                  {
                     if(!_loc4_)
                     {
                        this.remove(param1,param2);
                        addr58:
                        §§push(true);
                        if(_loc3_)
                        {
                           return §§pop();
                        }
                     }
                     §§goto(addr58);
                  }
                  else
                  {
                     §§push(false);
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr58);
      }
      
      public function removeDragFollowMouse(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.remove(this.dragMC);
            if(!_loc3_)
            {
               addr30:
               this.dragMC = null;
               if(!_loc3_)
               {
                  stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.dragFollowMouse);
                  if(!_loc3_)
                  {
                     stage.removeEventListener(MouseEvent.MOUSE_UP,this.removeDragFollowMouse);
                  }
               }
            }
            return;
         }
         §§goto(addr30);
      }
      
      public function stageBoundary(param1:DisplayObject) : *
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(!_loc5_)
         {
            if(param1.parent !== null)
            {
               addr29:
               _loc2_ = param1.getBounds(MovieClip(root));
               §§push(Number(_loc2_.y + param1.height));
               if(!_loc5_)
               {
                  _loc3_ = §§pop();
                  if(_loc6_)
                  {
                     §§push(Number(_loc2_.x + param1.width));
                     if(!_loc5_)
                     {
                        _loc4_ = §§pop();
                        if(!_loc5_)
                        {
                           §§push(_loc3_);
                           if(_loc6_)
                           {
                              if(§§pop() > stage.stageHeight)
                              {
                                 addr73:
                                 param1.y -= _loc3_ - stage.stageHeight;
                              }
                              addr83:
                              if(_loc4_ > stage.stageWidth)
                              {
                                 if(_loc6_)
                                 {
                                    param1.x -= _loc4_ - stage.stageWidth;
                                 }
                                 §§goto(addr128);
                              }
                              if(_loc2_.x < 0)
                              {
                                 if(_loc6_)
                                 {
                                    param1.x -= _loc2_.x;
                                 }
                              }
                           }
                           §§goto(addr83);
                        }
                        if(_loc2_.y < 0)
                        {
                           param1.y -= _loc2_.y;
                        }
                        §§goto(addr128);
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr73);
               }
               §§goto(addr83);
            }
            addr128:
            return;
         }
         §§goto(addr29);
      }
      
      public function tooltipFollowMouse(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.tooltipMC.x = this.tooltipMC.parent.mouseX;
            if(!_loc2_)
            {
               this.tooltipMC.y = this.tooltipMC.parent.mouseY;
               if(_loc3_)
               {
                  addr45:
                  this.stageBoundary(this.tooltipMC);
               }
               return;
            }
         }
         §§goto(addr45);
      }
      
      public function remove(param1:DisplayObject, param2:String = "", param3:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:DisplayObjectContainer = null;
         if(_loc5_)
         {
            if(param1 !== null)
            {
               if(_loc5_)
               {
                  addr26:
                  if(param1.parent != null)
                  {
                  }
                  §§goto(addr149);
               }
               _loc4_ = param1.parent;
               if(param2 !== "")
               {
                  _loc4_[param2] = null;
                  if(!_loc6_)
                  {
                     addr44:
                     §§push(Boolean(param1 is MovieClip));
                     if(!_loc6_)
                     {
                        §§push(§§pop());
                        if(!_loc6_)
                        {
                           if(§§pop())
                           {
                              §§pop();
                              addr61:
                              §§push(Boolean(param1.clear));
                              §§push(Boolean(param1.clear));
                              if(_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                    §§push(param1.clear is Function);
                                    if(_loc5_)
                                    {
                                       addr80:
                                       if(§§pop())
                                       {
                                          if(!_loc6_)
                                          {
                                             param1.clear();
                                             if(_loc5_)
                                             {
                                                addr88:
                                                this.RemoveChildren(param1);
                                                §§push(Boolean(param1 is Bitmap));
                                                §§push(Boolean(param1 is Bitmap));
                                                if(!_loc6_)
                                                {
                                                   addr100:
                                                   if(§§pop())
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§pop();
                                                         addr108:
                                                         §§push(Boolean(param1.bitmapData));
                                                         if(Boolean(param1.bitmapData))
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§pop();
                                                               addr114:
                                                               §§push(param3);
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                            }
                                                         }
                                                      }
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr126);
                                                      }
                                                      §§goto(addr131);
                                                   }
                                                }
                                                §§goto(addr108);
                                             }
                                             addr126:
                                             param1.bitmapData.dispose();
                                             if(_loc5_)
                                             {
                                                addr131:
                                                _loc4_.removeChild(param1);
                                             }
                                             param1 = null;
                                             if(_loc5_)
                                             {
                                                trace(param1);
                                                if(!_loc5_)
                                                {
                                                }
                                                §§goto(addr149);
                                             }
                                             System.pauseForGCIfCollectionImminent(0);
                                             §§goto(addr149);
                                          }
                                          §§goto(addr114);
                                       }
                                    }
                                    §§goto(addr88);
                                 }
                                 §§goto(addr80);
                              }
                              §§goto(addr108);
                           }
                           §§goto(addr61);
                        }
                        §§goto(addr100);
                     }
                  }
                  §§goto(addr61);
               }
               §§goto(addr44);
            }
            addr149:
            return;
         }
         §§goto(addr26);
      }
      
      public function confirm(param1:Function, param2:Function, param3:String, param4:String) : MovieClip
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:*;
         var _loc5_:Class;
         (_loc6_ = new (_loc5_ = getDefinitionByName("Confirm") as Class)()).x = stage.stageWidth / 2;
         if(!_loc7_)
         {
            _loc6_.y = stage.stageHeight / 2;
            _loc6_.acceptf = param1;
            if(!_loc7_)
            {
               _loc6_.declinef = param2;
               _loc6_.acceptBtn.addEventListener(MouseEvent.CLICK,_loc6_.acceptf);
            }
            _loc6_.declineBtn.addEventListener(MouseEvent.CLICK,_loc6_.declinef);
            if(_loc6_.closebtn)
            {
               _loc6_.closebtn.addEventListener(MouseEvent.CLICK,_loc6_.declinef);
            }
         }
         _loc6_.titletxt.text = param3;
         if(!_loc7_)
         {
            _loc6_.txt.text = param4;
         }
         MovieClip(root).addChild(_loc6_);
         return _loc6_;
      }
      
      public function customConfirm(param1:String, param2:Function, param3:Function, param4:String, param5:String) : MovieClip
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:*;
         var _loc6_:Class;
         (_loc7_ = new (_loc6_ = getDefinitionByName(param1) as Class)()).x = stage.stageWidth / 2;
         _loc7_.y = stage.stageHeight / 2;
         if(_loc9_)
         {
            _loc7_.acceptf = param2;
            _loc7_.declinef = param3;
            if(_loc9_)
            {
               _loc7_.acceptBtn.addEventListener(MouseEvent.CLICK,_loc7_.acceptf);
               if(_loc9_)
               {
                  addr68:
                  _loc7_.declineBtn.addEventListener(MouseEvent.CLICK,_loc7_.declinef);
                  if(_loc7_.closebtn)
                  {
                     _loc7_.closebtn.addEventListener(MouseEvent.CLICK,_loc7_.declinef);
                  }
                  _loc7_.titletxt.text = param4;
                  if(_loc9_)
                  {
                     _loc7_.txt.text = param5;
                     if(!_loc8_)
                     {
                        addr106:
                        MovieClip(root).addChild(_loc7_);
                     }
                     return _loc7_;
                  }
               }
               §§goto(addr106);
            }
         }
         §§goto(addr68);
      }
      
      public function decline(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = MovieClip(param1.target.parent);
         if(_loc4_)
         {
            this.remove(_loc2_);
         }
      }
      
      public function addCenteredChild(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Class = getDefinitionByName(param1) as Class;
         var _loc3_:* = new _loc2_();
         if(_loc4_)
         {
            _loc3_.x = stage.stageWidth / 2;
            if(_loc4_)
            {
               _loc3_.y = stage.stageHeight / 2;
               if(!_loc5_)
               {
                  addr60:
                  addChild(_loc3_);
               }
               return;
            }
         }
         §§goto(addr60);
      }
      
      public function containsLabel(param1:MovieClip, param2:String, param3:Boolean = false) : Boolean
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:FrameLabel = null;
         var _loc4_:* = -1;
         var _loc5_:int = param1.currentLabels.length - 1;
         if(!_loc7_)
         {
            while(true)
            {
               §§push(_loc4_);
               if(!_loc7_)
               {
                  §§push(§§pop());
                  if(_loc8_)
                  {
                     §§push(§§pop() + 1);
                     if(!_loc7_)
                     {
                        _loc4_ = §§pop();
                        addr82:
                        §§push(_loc5_);
                     }
                  }
                  if(§§pop() >= §§pop())
                  {
                     break;
                  }
                  continue;
               }
               §§goto(addr82);
            }
         }
         return false;
      }
      
      public function goLabel(param1:MovieClip, param2:MovieClip, param3:String, param4:Function = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            var loop:Function = null;
            var mc:MovieClip = param1;
            var mcparent:MovieClip = param2;
            var frameLabel:String = param3;
            if(!_loc7_)
            {
               var callback:Function = param4;
               if(!_loc7_)
               {
                  §§goto(addr56);
               }
            }
            §§goto(addr71);
         }
         addr56:
         trace("Label: " + frameLabel);
         §§push(§§newactivation());
         §§push(function(param1:Event):void
         {
            var _loc2_:Boolean = true;
            var _loc3_:Boolean = false;
            if(containsLabel(mc,frameLabel))
            {
               if(_loc2_)
               {
                  mc.gotoAndStop(frameLabel);
                  if(!_loc3_)
                  {
                     removeEventListener(Event.ENTER_FRAME,loop);
                     if(_loc3_)
                     {
                     }
                     §§goto(addr27);
                  }
               }
            }
            else
            {
               mcparent.nextFrame();
            }
            addr27:
         });
         if(!_loc7_)
         {
            §§push(§§pop());
         }
         §§pop().§§slot[5] = §§pop();
         if(_loc6_)
         {
            addr71:
            addEventListener(Event.ENTER_FRAME,loop);
         }
      }
      
      public function updateScrollbar(param1:*, param2:TextField) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            param1.update();
            if(!_loc4_)
            {
               addr22:
               param2.scrollV = param2.maxScrollV;
            }
            return;
         }
         §§goto(addr22);
      }
      
      public function updateTextScroll(param1:TextField) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            param1.scrollV = param1.maxScrollV;
         }
      }
      
      public function scrollIsDown(param1:TextField) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1.scrollV == param1.maxScrollV)
            {
               addr24:
               §§push(true);
               if(_loc3_)
               {
                  return §§pop();
               }
            }
            else
            {
               §§push(false);
            }
            return §§pop();
         }
         §§goto(addr24);
      }
      
      public function scrollbar(param1:MovieClip, param2:MovieClip, param3:String = "right", param4:Boolean = false) : ScrollBar
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var sb:ScrollBar = null;
         if(!_loc6_)
         {
            var where:MovieClip = null;
            var atFrame:int = 0;
            var rootFrame:int = 0;
            if(_loc7_)
            {
               var scrollCheck:Function = null;
               if(_loc7_)
               {
                  var $mc:MovieClip = param1;
                  var $mask:MovieClip = param2;
                  var position:String = param3;
                  var inverted:Boolean = param4;
                  var d:int = $mc.height - $mask.height;
               }
               atFrame = where.currentFrame;
               where["sb"] = sb;
               addr278:
               where.addChild(sb);
               if(!_loc6_)
               {
                  addr285:
                  addEventListener(Event.ENTER_FRAME,scrollCheck);
               }
               return sb;
               addr259:
            }
            where = MovieClip($mc.parent);
            if(!_loc6_)
            {
               §§push(§§newactivation());
               §§push(function(param1:Event):void
               {
                  var _loc2_:Boolean = false;
                  var _loc3_:Boolean = true;
                  if(where.currentFrame !== atFrame)
                  {
                     if(_loc3_)
                     {
                        where.removeChild(where.getChildByName($mc.name + "Scroll"));
                        if(!_loc3_)
                        {
                        }
                        §§goto(addr26);
                     }
                     removeEventListener(Event.ENTER_FRAME,scrollCheck);
                  }
                  addr26:
               });
               if(!_loc6_)
               {
                  §§push(§§pop());
               }
               §§pop().§§slot[10] = §§pop();
               if(_loc7_)
               {
                  §§push(§§newactivation());
                  §§push(function(param1:ScrollEvent):void
                  {
                     var _loc2_:Boolean = true;
                     var _loc3_:Boolean = false;
                     trace(param1.position);
                     if(!_loc3_)
                     {
                        if(!inverted)
                        {
                           if(_loc2_)
                           {
                              $mc.y = -param1.position + $mask.y;
                              if(_loc2_)
                              {
                                 addr25:
                                 if(inverted)
                                 {
                                    if(_loc2_)
                                    {
                                       addr30:
                                       $mc.y = $mask.y + $mask.height + sb.maxScrollPosition - param1.position;
                                    }
                                 }
                              }
                              §§goto(addr30);
                           }
                           return;
                        }
                        §§goto(addr25);
                     }
                     §§goto(addr30);
                  });
                  if(_loc7_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().§§slot[11] = §§pop();
                  if(!_loc6_)
                  {
                     if(where.getChildByName($mc.name + "Scroll") !== null)
                     {
                        where.removeChild(where.getChildByName($mc.name + "Scroll"));
                     }
                     $mc.mask = $mask;
                     if(!_loc6_)
                     {
                        sb = new ScrollBar();
                        addr128:
                        §§push(position);
                        if(!_loc6_)
                        {
                           §§push("right");
                           if(_loc7_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(_loc7_)
                                 {
                                    sb.x = $mask.x + $mask.width;
                                    addr156:
                                    if(position == "left")
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push(sb);
                                          §§push($mask.x - sb.width);
                                          if(_loc7_)
                                          {
                                             §§push(§§pop() - 10);
                                          }
                                          §§pop().x = §§pop();
                                          addr178:
                                          sb.y = $mask.y;
                                          sb.name = $mc.name + "Scroll";
                                          addr192:
                                          sb.height = $mask.height;
                                          sb.enabled = true;
                                          if(!_loc6_)
                                          {
                                             sb.setScrollProperties($mask.height,0,$mc.height - $mask.height);
                                             if(_loc7_)
                                             {
                                                if(inverted)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      $mc.y = $mask.y + $mask.height + sb.maxScrollPosition;
                                                      addr240:
                                                      if($mc.height <= 0)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            sb.visible = false;
                                                         }
                                                         §§goto(addr278);
                                                      }
                                                   }
                                                   sb.addEventListener(ScrollEvent.SCROLL,scrollMC);
                                                   §§goto(addr259);
                                                }
                                                §§goto(addr240);
                                             }
                                             §§goto(addr278);
                                          }
                                       }
                                       §§goto(addr285);
                                    }
                                    §§goto(addr178);
                                 }
                                 §§goto(addr192);
                              }
                           }
                        }
                        §§goto(addr156);
                     }
                     §§goto(addr278);
                  }
                  §§goto(addr178);
               }
               §§goto(addr128);
            }
            §§goto(addr178);
         }
         §§goto(addr278);
      }
      
      public function notification(param1:String, param2:String = "") : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Class = getDefinitionByName("Notification") as Class;
         var _loc4_:*;
         (_loc4_ = new _loc3_()).x = stage.stageWidth / 2;
         if(!_loc6_)
         {
            _loc4_.y = stage.stageHeight / 2;
            if(_loc5_)
            {
               _loc4_.note = param1;
               if(_loc6_)
               {
               }
               §§goto(addr69);
            }
            _loc4_.Item = param2;
            if(_loc6_)
            {
            }
            §§goto(addr69);
         }
         addr69:
         MovieClip(root).addChild(_loc4_);
      }
      
      private function toolTipRefresh() : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc1_:* = 0;
         var _loc6_:* = null;
         var _loc7_:* = null;
         if(this.tooltipMC.Item is DatabaseObject)
         {
            this.tooltipMC.ItemName = this.tooltipMC.Item.Item.split(this.propSplitChar)[0];
            if(_loc8_)
            {
               this.tooltipMC.itemS = this.tooltipMC.Item.Item;
               addr70:
               trace(this.tooltipMC.Item);
               if(!_loc9_)
               {
                  addr77:
                  trace(this.tooltipMC.ItemName);
               }
            }
            var _loc2_:DatabaseObject = MovieClip(root)["i_" + this.tooltipMC.ItemName];
            if(_loc8_)
            {
               this.tooltipMC.gotoAndStop(_loc2_.Itemtype);
               if(!_loc9_)
               {
                  §§push(Boolean(this.tooltipMC.PVPPricemc));
                  if(_loc8_)
                  {
                     §§push(§§pop());
                     if(!_loc9_)
                     {
                        if(§§pop())
                        {
                           if(_loc8_)
                           {
                              §§pop();
                              §§push(!_loc2_.hasOwnProperty("PVPPrice"));
                              if(_loc8_)
                              {
                                 addr124:
                                 if(§§pop())
                                 {
                                    this.tooltipMC.PVPPricemc.visible = false;
                                 }
                                 §§push(Boolean(this.tooltipMC.goldmc));
                                 if(!_loc9_)
                                 {
                                    addr137:
                                    if(§§pop())
                                    {
                                       if(_loc8_)
                                       {
                                          addr142:
                                          §§pop();
                                          if(!_loc9_)
                                          {
                                             addr150:
                                             if(!_loc2_.hasOwnProperty("GoldPrice"))
                                             {
                                                if(_loc8_)
                                                {
                                                   this.tooltipMC.goldmc.visible = false;
                                                }
                                             }
                                             this.tooltipMC.titletxt.text = this.tooltipMC.ItemName;
                                             if(this.tooltipMC.itemS.indexOf("UP+") >= 0)
                                             {
                                                §§goto(addr172);
                                             }
                                             §§goto(addr190);
                                          }
                                          §§goto(addr193);
                                       }
                                    }
                                    §§goto(addr150);
                                 }
                                 §§goto(addr142);
                              }
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr124);
               }
               addr172:
               §§push(int(int(this.tooltipMC.itemS.split("UP+")[1].split("_")[0])));
               if(!_loc9_)
               {
                  _loc1_ = §§pop();
                  addr190:
                  §§push(_loc1_);
               }
               if(§§pop() > 0)
               {
                  addr193:
                  this.tooltipMC.titletxt.appendText("+" + _loc1_);
               }
               var _loc3_:String = MovieClip(root)["i_" + _loc2_.key].Itemtype;
               var _loc4_:Array = this[_loc3_.split(" ").join("") + "Properties"];
               var _loc5_:int = 0;
               if(_loc8_)
               {
                  while(_loc5_ < _loc4_.length)
                  {
                     §§push(0);
                     if(_loc8_)
                     {
                        _loc1_ = §§pop();
                        §§push(_loc4_);
                        if(_loc8_)
                        {
                           §§push(_loc5_);
                           if(!_loc9_)
                           {
                              §§push(§§pop()[§§pop()].split(" ").join(""));
                              if(_loc8_)
                              {
                                 _loc6_ = §§pop();
                                 addr258:
                                 §§push(_loc4_[_loc5_]);
                                 if(_loc8_)
                                 {
                                    addr262:
                                    _loc7_ = §§pop();
                                    §§push(_loc6_);
                                    if(_loc8_)
                                    {
                                       §§push("Attack");
                                       if(_loc8_)
                                       {
                                          §§push(§§pop() === §§pop());
                                          if(_loc8_)
                                          {
                                             §§push(!§§pop());
                                             if(!_loc9_)
                                             {
                                                §§push(§§pop());
                                                if(_loc8_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      §§pop();
                                                      §§push(!_loc2_.hasOwnProperty("MinAttack"));
                                                      if(_loc8_)
                                                      {
                                                         addr288:
                                                         if(§§pop())
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               if(_loc2_.hasOwnProperty(_loc7_))
                                                               {
                                                                  this.tooltipMC[_loc6_ + "txt"].text = this.comma(String(_loc2_[_loc7_]));
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     if(_loc8_)
                                                                     {
                                                                        §§push("SkillLevel");
                                                                        if(_loc8_)
                                                                        {
                                                                           addr320:
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              addr321:
                                                                              this.tooltipMC[_loc6_ + "info"].text = _loc2_.Skill + " Level";
                                                                              if(_loc8_)
                                                                              {
                                                                                 addr334:
                                                                                 §§push(_loc6_);
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    addr338:
                                                                                    §§push("Health");
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       addr343:
                                                                                       §§push(§§pop() == §§pop());
                                                                                       §§push(§§pop() == §§pop());
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          addr347:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                §§pop();
                                                                                                addr358:
                                                                                                addr351:
                                                                                                if(this.tooltipMC.itemS.indexOf("HP+") >= 0)
                                                                                                {
                                                                                                   §§push(int(int(this.tooltipMC.itemS.split("HP+")[1].split("_")[0])));
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      _loc1_ = §§pop();
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr453:
                                                                                                      _loc1_ = §§pop();
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         addr463:
                                                                                                         if(_loc1_ > 0)
                                                                                                         {
                                                                                                            addr466:
                                                                                                            this.tooltipMC[_loc6_ + "txt"].appendText("(+" + _loc1_ + ")");
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               addr481:
                                                                                                               _loc5_++;
                                                                                                            }
                                                                                                            continue;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr481);
                                                                                                   }
                                                                                                   §§goto(addr481);
                                                                                                }
                                                                                                §§push(_loc6_ == "Mana");
                                                                                                §§push(_loc6_ == "Mana");
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr358);
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             §§pop();
                                                                                             addr392:
                                                                                             if(this.tooltipMC.itemS.indexOf("MP+") >= 0)
                                                                                             {
                                                                                                addr393:
                                                                                                §§push(int(int(this.tooltipMC.itemS.split("MP+")[1].split("_")[0])));
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   addr410:
                                                                                                   _loc1_ = §§pop();
                                                                                                   addr411:
                                                                                                }
                                                                                                §§goto(addr463);
                                                                                             }
                                                                                             §§goto(addr411);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr392);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr358);
                                                                              }
                                                                              §§goto(addr351);
                                                                           }
                                                                           §§goto(addr334);
                                                                        }
                                                                        §§goto(addr358);
                                                                     }
                                                                     §§goto(addr338);
                                                                  }
                                                                  §§goto(addr321);
                                                               }
                                                               §§goto(addr481);
                                                            }
                                                            §§goto(addr393);
                                                         }
                                                         else
                                                         {
                                                            trace("Attack");
                                                            this.tooltipMC.Attacktxt.text = _loc2_.MinAttack + "-" + _loc2_.MaxAttack;
                                                            if(this.tooltipMC.itemS.indexOf("ATK+") >= 0)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  §§push(int(int(this.tooltipMC.itemS.split("ATK+")[1].split("_")[0])));
                                                                  if(_loc8_)
                                                                  {
                                                                     §§goto(addr453);
                                                                  }
                                                                  §§goto(addr463);
                                                               }
                                                               §§goto(addr466);
                                                            }
                                                         }
                                                         §§goto(addr463);
                                                      }
                                                      §§goto(addr392);
                                                   }
                                                   §§goto(addr288);
                                                }
                                                §§goto(addr347);
                                             }
                                             §§goto(addr358);
                                          }
                                          §§goto(addr343);
                                       }
                                       §§goto(addr320);
                                    }
                                    §§goto(addr338);
                                 }
                                 §§goto(addr358);
                              }
                              §§goto(addr262);
                           }
                        }
                        §§goto(addr258);
                     }
                     §§goto(addr410);
                  }
               }
               return;
            }
            §§goto(addr190);
         }
         else
         {
            this.tooltipMC.ItemName = this.tooltipMC.Item.split(this.propSplitChar)[0];
            this.tooltipMC.itemS = this.tooltipMC.Item;
            if(_loc8_)
            {
               §§goto(addr70);
            }
         }
         §§goto(addr77);
      }
      
      public function appendIfEmpty(param1:String, param2:TextField) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(param2.text == "")
            {
               if(_loc3_)
               {
                  param2.appendText(param1);
               }
            }
         }
      }
      
      public function appendInColor(param1:String, param2:TextField, param3:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:int = param2.length;
         if(!_loc6_)
         {
            param2.appendText(param1);
         }
         var _loc5_:int = param2.length;
         if(!_loc6_)
         {
            this.textFormat.color = this[param3];
            if(_loc7_)
            {
               addr47:
               param2.setTextFormat(this.textFormat,_loc4_,_loc5_);
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function splitArray(param1:Array, param2:String, param3:int) : Array
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:String = null;
         var _loc4_:int = param1.length;
         §§push(new Array());
         if(!_loc9_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         var _loc6_:int = 0;
         if(!_loc9_)
         {
            while(_loc6_ < _loc4_)
            {
               §§push(param1);
               if(!_loc9_)
               {
                  _loc7_ = §§pop()[_loc6_];
                  if(_loc9_)
                  {
                     continue;
                  }
                  §§push(_loc5_);
               }
               §§pop().push(_loc7_.split(param2)[param3]);
               if(_loc8_)
               {
                  _loc6_++;
               }
            }
         }
         return _loc5_;
      }
      
      public function listFriends(param1:MovieClip, param2:Array) : *
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            var where:MovieClip = param1;
            if(_loc5_)
            {
               var array:Array = param2;
               if(!_loc4_)
               {
                  var arrayObj:Object = {
                     "Name":"Friends",
                     "Array":array
                  };
                  addr40:
                  if(!_loc5_)
                  {
                  }
                  §§goto(addr73);
               }
               this.list(where,"FriendMC",arrayObj,"Down",1,1000,false,false,false,function(param1:*):void
               {
                  var _loc3_:Boolean = false;
                  var _loc4_:Boolean = true;
                  if(!_loc3_)
                  {
                     var object:* = param1;
                     if(_loc4_)
                     {
                        trace("Added FriendMC");
                        if(!_loc3_)
                        {
                           object.listFriends = MovieClip(object.parent.parent).listFriends;
                           if(!_loc3_)
                           {
                              addr36:
                              MovieClip(root).client.bigDB.load("KCharacters",object.Item,function(param1:DatabaseObject):void
                              {
                                 var _loc2_:Boolean = true;
                                 var _loc3_:Boolean = false;
                                 if(param1 !== null)
                                 {
                                    if(!_loc3_)
                                    {
                                       object.friend = param1;
                                       if(!_loc3_)
                                       {
                                          addr15:
                                          object.nametxt.text = param1.key;
                                          if(param1.onlineStatus)
                                          {
                                             if(_loc2_)
                                             {
                                                object.statustxt.text = "Online";
                                                addr37:
                                                object.lvltxt.text = param1.Level;
                                                object.classtxt.text = param1.Class;
                                                addr29:
                                             }
                                             object.winstxt.text = param1.PVPWins;
                                             if(!_loc3_)
                                             {
                                                object.losestxt.text = param1.PVPLoses;
                                             }
                                             §§goto(addr59);
                                          }
                                          else
                                          {
                                             object.statustxt.text = "Offline";
                                             if(_loc2_)
                                             {
                                                §§goto(addr37);
                                             }
                                          }
                                          §§goto(addr37);
                                       }
                                       §§goto(addr29);
                                    }
                                    §§goto(addr15);
                                 }
                                 addr59:
                              });
                           }
                        }
                        return;
                     }
                  }
                  §§goto(addr36);
               });
            }
            addr73:
            return;
         }
         §§goto(addr40);
      }
      
      public function eSlot(param1:MovieClip, param2:Object, param3:Boolean) : *
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            MovieClip(root).s.list(param1,"Items",param2,"Right",1,1,param3,true,true);
         }
      }
      
      public function list(param1:MovieClip, param2:String, param3:Object, param4:String, param5:int, param6:int, param7:Boolean, param8:Boolean, param9:Boolean, param10:Function = null, param11:Function = null, param12:Function = null, param13:Function = null) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var num1:int = 0;
         if(_loc15_)
         {
            var num2:int = 0;
            if(!_loc16_)
            {
               var d2:int = 0;
               if(_loc15_)
               {
                  var object:* = undefined;
                  var itemname:String = null;
                  var itemtype:String = null;
                  var itemq:int = 0;
                  var where:MovieClip = param1;
                  var linkage:String = param2;
                  var arrayObject:Object = param3;
                  if(_loc15_)
                  {
                     var $direction:String = param4;
                     if(_loc15_)
                     {
                        var hNum:int = param5;
                        var vNum:int = param6;
                        var draggable:Boolean = param7;
                        var fill:Boolean = param8;
                        if(!_loc16_)
                        {
                           var tooltip:Boolean = param9;
                           var startFunc:Function = param10;
                           var dropFunc:Function = param11;
                           addr92:
                           var dropReq:Function = param12;
                           if(_loc15_)
                           {
                              var Click:Function = param13;
                              var reset:* = function(param1:Object):void
                              {
                                 var _loc2_:Boolean = true;
                                 var _loc3_:Boolean = false;
                                 param1.Item = "None";
                                 if(!_loc3_)
                                 {
                                    param1.ItemID = -1;
                                    if(!_loc3_)
                                    {
                                       if(param1.arrayObject.hasOwnProperty("Copy"))
                                       {
                                          if(_loc2_)
                                          {
                                             addr23:
                                             MovieClip(param1.parent).Item = "None";
                                             if(_loc2_)
                                             {
                                                MovieClip(param1.parent).ItemID = -1;
                                                if(!_loc2_)
                                                {
                                                }
                                                §§goto(addr43);
                                             }
                                          }
                                       }
                                       param1.gotoAndStop("None");
                                       §§goto(addr43);
                                    }
                                    §§goto(addr23);
                                 }
                                 addr43:
                              };
                              addr105:
                              if(!where)
                              {
                                 if(_loc15_)
                                 {
                                    §§goto(addr110);
                                 }
                                 else
                                 {
                                    addr165:
                                    var itemNum:int = 0;
                                    addr168:
                                    where.itemArray = this.itemArray;
                                    §§push($direction);
                                    if(_loc15_)
                                    {
                                       §§push("Down");
                                       if(_loc15_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             addr183:
                                             §§push(§§newactivation());
                                             §§push(vNum);
                                             if(_loc15_)
                                             {
                                                §§push(int(§§pop()));
                                             }
                                             §§pop().§§slot[20] = §§pop();
                                             if(_loc15_)
                                             {
                                                §§push(§§newactivation());
                                                §§push(hNum);
                                                if(_loc15_)
                                                {
                                                   §§push(int(§§pop()));
                                                }
                                                §§pop().§§slot[21] = §§pop();
                                                addr223:
                                                var d1:int = 0;
                                                addr200:
                                             }
                                             loop0:
                                             while(d1 < num2)
                                             {
                                                d2 = 0;
                                                if(_loc15_)
                                                {
                                                   loop1:
                                                   while(true)
                                                   {
                                                      §§push(d2);
                                                      loop2:
                                                      while(true)
                                                      {
                                                         §§push(num1);
                                                         loop3:
                                                         while(true)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               break loop1;
                                                            }
                                                            §§push(itemNum);
                                                            if(_loc16_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            §§push(arrayObject.Array);
                                                            if(!_loc16_)
                                                            {
                                                               §§push(§§pop() >= §§pop().length);
                                                               if(!_loc16_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!_loc16_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc16_)
                                                                        {
                                                                           §§pop();
                                                                           §§push(fill);
                                                                           if(!_loc16_)
                                                                           {
                                                                              addr261:
                                                                              §§push(!§§pop());
                                                                              if(_loc15_)
                                                                              {
                                                                                 addr264:
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    object = new ClassReference();
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          object.arrayObject = arrayObject;
                                                                                          object.linkage = linkage;
                                                                                          trace(itemNum);
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             object.ItemID = itemNum;
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                object.tool = tooltip;
                                                                                                object.drag = draggable;
                                                                                                if(_loc15_)
                                                                                                {
                                                                                                   object.cacheAsBitmap = true;
                                                                                                   object.addEventListener(MouseEvent.MOUSE_UP,dragStop);
                                                                                                   §§push(itemNum);
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      §§push(arrayObject.Array);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop() < §§pop().length)
                                                                                                         {
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               §§push(arrayObject.Array);
                                                                                                               if(_loc15_)
                                                                                                               {
                                                                                                                  §§push(itemNum);
                                                                                                                  if(_loc15_)
                                                                                                                  {
                                                                                                                     if(§§pop()[§§pop()] is RoomInfo)
                                                                                                                     {
                                                                                                                        object.Item = arrayObject.Array[itemNum].id;
                                                                                                                        object.room = arrayObject.Array[itemNum];
                                                                                                                        if(!_loc16_)
                                                                                                                        {
                                                                                                                           addr403:
                                                                                                                           §§push(draggable);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(!_loc16_)
                                                                                                                                 {
                                                                                                                                    object.addEventListener(MouseEvent.MOUSE_DOWN,dragStart);
                                                                                                                                    if(_loc15_)
                                                                                                                                    {
                                                                                                                                       addr425:
                                                                                                                                       §§push(tooltip);
                                                                                                                                       if(!_loc16_)
                                                                                                                                       {
                                                                                                                                          addr448:
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             addr816:
                                                                                                                                             if(_loc16_)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(d2);
                                                                                                                                                if(!_loc15_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + 1);
                                                                                                                                                   break loop3;
                                                                                                                                                }
                                                                                                                                                addr842:
                                                                                                                                                d2 = §§pop() + 1;
                                                                                                                                                continue loop1;
                                                                                                                                             }
                                                                                                                                             addr816:
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Click);
                                                                                                                                             if(!_loc16_)
                                                                                                                                             {
                                                                                                                                                §§push(null);
                                                                                                                                                if(!_loc16_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() !== §§pop())
                                                                                                                                                   {
                                                                                                                                                      if(_loc15_)
                                                                                                                                                      {
                                                                                                                                                         object.addEventListener(MouseEvent.CLICK,Click);
                                                                                                                                                         addr467:
                                                                                                                                                         if(object.arrayObject.hasOwnProperty("Copy"))
                                                                                                                                                         {
                                                                                                                                                            object.addEventListener(MouseEvent.CLICK,toolStop);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               object.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
                                                                                                                                                               {
                                                                                                                                                                  reset(object);
                                                                                                                                                               });
                                                                                                                                                               if(_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push($direction);
                                                                                                                                                                     if(!_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push("Down");
                                                                                                                                                                        if(!_loc16_)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() == §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc16_)
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    object.y = object.height * d2;
                                                                                                                                                                                    if(!_loc16_)
                                                                                                                                                                                    {
                                                                                                                                                                                       object.x = object.width * d1;
                                                                                                                                                                                       if(!_loc15_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop0;
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(arrayObject.Array);
                                                                                                                                                                                          if(!_loc16_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr580:
                                                                                                                                                                                             §§push(itemNum);
                                                                                                                                                                                             if(!_loc16_)
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop()[§§pop()] is RoomInfo);
                                                                                                                                                                                                   if(_loc15_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(!§§pop());
                                                                                                                                                                                                      if(!_loc16_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr572:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                            addr573:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                  §§push(arrayObject.Array);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr584:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     object.mouseChildren = false;
                                                                                                                                                                                                                     if(_loc15_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        itemname = object.Item.split(this.itemSplitChar)[0].split(this.propSplitChar)[0];
                                                                                                                                                                                                                        if(!_loc16_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              trace(itemname);
                                                                                                                                                                                                                              addr614:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 itemq = 1;
                                                                                                                                                                                                                                 if(_loc15_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(object.Item.indexOf("_") >= 0)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc15_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          itemq = int(object.Item.split("_")[1]);
                                                                                                                                                                                                                                          addr641:
                                                                                                                                                                                                                                          §§push(itemq);
                                                                                                                                                                                                                                          §§push(1);
                                                                                                                                                                                                                                          if(!_loc15_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop3;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc15_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr650:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   object.quantxt.text = String(itemq);
                                                                                                                                                                                                                                                   addr664:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(itemname);
                                                                                                                                                                                                                                                      addr666:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push("None");
                                                                                                                                                                                                                                                         addr667:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(§§pop() !== §§pop())
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(MovieClip(root)["i_" + itemname].hasOwnProperty("Type"))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr797:
                                                                                                                                                                                                                                                                  if(!_loc16_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        itemtype = MovieClip(root)["i_" + itemname].Type;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr681:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(startFunc);
                                                                                                                                                                                                                                                                     addr799:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§pop()(object);
                                                                                                                                                                                                                                                                        addr804:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           object.startFunc = startFunc;
                                                                                                                                                                                                                                                                           addr809:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr816);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr797:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else if(MovieClip(root)["i_" + itemname].hasOwnProperty("Itemtype"))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  itemtype = MovieClip(root)["i_" + itemname].Itemtype;
                                                                                                                                                                                                                                                                  if(!_loc16_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr726:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           trace(itemtype);
                                                                                                                                                                                                                                                                           addr730:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(object.slotmc)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    object.slotmc.gotoAndStop(itemtype);
                                                                                                                                                                                                                                                                                    object.slotmc.itemmc.gotoAndStop(itemname);
                                                                                                                                                                                                                                                                                    addr747:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr761:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(itemNum);
                                                                                                                                                                                                                                                                                          if(!_loc16_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() + 1);
                                                                                                                                                                                                                                                                                                if(_loc16_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop2;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                itemNum = §§pop();
                                                                                                                                                                                                                                                                                                where.addChild(object);
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   where.Item = object.Item;
                                                                                                                                                                                                                                                                                                   if(_loc15_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(startFunc);
                                                                                                                                                                                                                                                                                                      if(!_loc16_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(null);
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(§§pop() !== §§pop())
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr794:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  trace("StartFunc is not Null");
                                                                                                                                                                                                                                                                                                                  §§goto(addr797);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr794:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               trace("StartFunc is null");
                                                                                                                                                                                                                                                                                                               if(!_loc15_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop1;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr816);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr816);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr793:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr799);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr809);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr766:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          break loop3;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr734:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 object.gotoAndStop(itemtype);
                                                                                                                                                                                                                                                                                 object.itemmc.gotoAndStop(itemname);
                                                                                                                                                                                                                                                                                 if(!_loc16_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr761);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr794);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr794);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr719:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr804);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr719);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               itemtype = "None";
                                                                                                                                                                                                                                                               if(!_loc16_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr726);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr794);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr650:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr778);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             object.quantxt.text = "";
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr664);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr730);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr641);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr747);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr610:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr816);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr797);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr761);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr572:
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr584);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr563:
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr584);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr580:
                                                                                                                                                                                          }
                                                                                                                                                                                          addr578:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr580);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr650);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr501:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr794);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§push($direction);
                                                                                                                                                                              if(!_loc16_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr531:
                                                                                                                                                                                 §§push("Right");
                                                                                                                                                                                 if(_loc15_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr534:
                                                                                                                                                                                    if(§§pop() == §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       object.y = object.height * d1;
                                                                                                                                                                                       object.x = object.width * d2;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr553);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr667);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr666);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr534);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr531);
                                                                                                                                                                  }
                                                                                                                                                                  addr488:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr681);
                                                                                                                                                            }
                                                                                                                                                            addr480:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr488);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr501);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr467);
                                                                                                                                                }
                                                                                                                                                §§goto(addr793);
                                                                                                                                             }
                                                                                                                                             §§goto(addr799);
                                                                                                                                          }
                                                                                                                                          addr448:
                                                                                                                                       }
                                                                                                                                       §§goto(addr572);
                                                                                                                                    }
                                                                                                                                    object.addEventListener(MouseEvent.ROLL_OUT,toolStop);
                                                                                                                                    object.addEventListener(MouseEvent.ROLL_OVER,toolStart);
                                                                                                                                    §§goto(addr448);
                                                                                                                                 }
                                                                                                                                 §§goto(addr794);
                                                                                                                              }
                                                                                                                              §§goto(addr425);
                                                                                                                           }
                                                                                                                           addr380:
                                                                                                                           addr405:
                                                                                                                        }
                                                                                                                        §§goto(addr448);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        object.Item = arrayObject.Array[itemNum];
                                                                                                                     }
                                                                                                                     §§goto(addr380);
                                                                                                                  }
                                                                                                                  §§goto(addr580);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr394:
                                                                                                                  §§push(itemNum);
                                                                                                                  if(_loc15_)
                                                                                                                  {
                                                                                                                     §§pop()[§§pop()] = object.Item;
                                                                                                                     §§goto(addr403);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr563);
                                                                                                            }
                                                                                                            §§goto(addr816);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            object.Item = "None";
                                                                                                            if(_loc15_)
                                                                                                            {
                                                                                                               §§push(arrayObject.Array);
                                                                                                               if(_loc15_)
                                                                                                               {
                                                                                                                  §§goto(addr394);
                                                                                                               }
                                                                                                               §§goto(addr578);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr614);
                                                                                                      }
                                                                                                      addr329:
                                                                                                   }
                                                                                                   §§goto(addr766);
                                                                                                }
                                                                                                §§goto(addr734);
                                                                                             }
                                                                                             §§goto(addr480);
                                                                                          }
                                                                                          §§goto(addr650);
                                                                                       }
                                                                                       addr275:
                                                                                    }
                                                                                    §§goto(addr610);
                                                                                 }
                                                                                 §§goto(addr816);
                                                                              }
                                                                              §§goto(addr584);
                                                                           }
                                                                           §§goto(addr572);
                                                                        }
                                                                        §§goto(addr405);
                                                                     }
                                                                     §§goto(addr264);
                                                                  }
                                                                  §§goto(addr573);
                                                               }
                                                               §§goto(addr261);
                                                            }
                                                            §§goto(addr329);
                                                         }
                                                         d1 = §§pop();
                                                         continue loop0;
                                                      }
                                                   }
                                                   if(_loc16_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr842);
                                                   §§push(d1);
                                                }
                                                §§goto(addr275);
                                             }
                                             §§goto(addr851);
                                          }
                                          else
                                          {
                                             addr204:
                                             if($direction == "Right")
                                             {
                                                §§push(§§newactivation());
                                                §§push(hNum);
                                                if(!_loc16_)
                                                {
                                                   §§push(int(§§pop()));
                                                }
                                                §§pop().§§slot[20] = §§pop();
                                                §§goto(addr213);
                                             }
                                          }
                                          §§goto(addr223);
                                       }
                                    }
                                    §§goto(addr204);
                                 }
                              }
                              else
                              {
                                 this.RemoveChildren(where);
                                 if(_loc15_)
                                 {
                                    §§push(§§newactivation());
                                    §§push(function(param1:MouseEvent):void
                                    {
                                       var _loc18_:Boolean = true;
                                       var _loc19_:Boolean = false;
                                       var _loc3_:* = null;
                                       var _loc4_:String = null;
                                       var _loc11_:* = null;
                                       var _loc12_:String = null;
                                       var _loc13_:Object = null;
                                       var _loc14_:Object = null;
                                       var _loc15_:Array = null;
                                       var _loc16_:Object = null;
                                       var _loc17_:* = 0;
                                       if(!_loc19_)
                                       {
                                          if(dragMC)
                                          {
                                             var _loc2_:MovieClip = MovieClip(param1.target);
                                             if(dragMC.slot.Item !== "None")
                                             {
                                                if(!_loc19_)
                                                {
                                                   §§push(MovieClip(root)["i_" + dragMC.slot.Item.split("_")[0]].Type);
                                                   if(_loc18_)
                                                   {
                                                      _loc3_ = §§pop();
                                                      if(!_loc19_)
                                                      {
                                                         addr78:
                                                         if(_loc2_.Item !== "None")
                                                         {
                                                            if(!_loc19_)
                                                            {
                                                               addr99:
                                                               _loc4_ = MovieClip(root)["i_" + _loc2_.Item.split("_")[0]].Type;
                                                               addr106:
                                                               trace(_loc2_);
                                                               if(_loc18_)
                                                               {
                                                                  addr112:
                                                                  trace("Drag STop");
                                                                  if(!_loc19_)
                                                                  {
                                                                     trace(_loc2_.Item);
                                                                     if(!_loc19_)
                                                                     {
                                                                        addr124:
                                                                        trace(_loc2_.ItemID);
                                                                        trace(_loc2_.arrayObject.Max);
                                                                        §§push(_loc2_.arrayObject.Name == dragMC.arrayObject.Name);
                                                                        if(!_loc19_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc18_)
                                                                              {
                                                                                 §§pop();
                                                                                 addr147:
                                                                                 §§push(_loc2_.ItemID == dragMC.ItemID);
                                                                              }
                                                                           }
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           return;
                                                                        }
                                                                        var _loc5_:* = _loc2_.Item.split("_")[0];
                                                                        var _loc6_:* = _loc2_.Item;
                                                                        var _loc7_:* = dragMC.Item.split("_")[0];
                                                                        var _loc8_:* = dragMC.Item;
                                                                        var _loc9_:int = 1;
                                                                        var _loc10_:int = 1;
                                                                        if(_loc18_)
                                                                        {
                                                                           if(_loc8_.indexOf("_") >= 0)
                                                                           {
                                                                              _loc9_ = int(_loc8_.split("_")[1]);
                                                                           }
                                                                           if(_loc6_.indexOf("_") >= 0)
                                                                           {
                                                                              _loc10_ = int(_loc6_.split("_")[1]);
                                                                              if(_loc18_)
                                                                              {
                                                                                 addr216:
                                                                                 if(_loc2_.arrayObject.hasOwnProperty("TypeCompat"))
                                                                                 {
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       if(!arrayContains(_loc2_.arrayObject.TypeCompat,MovieClip(root)["i_" + _loc7_].Itemtype) && !arrayContains(_loc2_.arrayObject.TypeCompat,MovieClip(root)["i_" + _loc7_].Type))
                                                                                       {
                                                                                          trace("Not right type or itemtype");
                                                                                          return;
                                                                                       }
                                                                                       addr260:
                                                                                       §§push(dragMC.arrayObject.Array);
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          §§push(Boolean(§§pop() !== _loc2_.arrayObject.Array));
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      §§push(Boolean(_loc2_.arrayObject.hasOwnProperty("Compat")));
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         addr292:
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  §§push(!arrayContains(_loc2_.arrayObject.Compat,dragMC.arrayObject.Name));
                                                                                                               }
                                                                                                            }
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  trace("These 2 inventories are not compatible");
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     return;
                                                                                                                  }
                                                                                                                  addr1091:
                                                                                                                  _loc2_.startFunc();
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     addr1095:
                                                                                                                     dragMC.slot.gotoAndStop(_loc4_);
                                                                                                                     §§push(_loc10_);
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        addr1103:
                                                                                                                        §§push(1);
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           if(§§pop() > §§pop())
                                                                                                                           {
                                                                                                                              if(!_loc19_)
                                                                                                                              {
                                                                                                                                 dragMC.slot.quantxt.text = String(_loc10_);
                                                                                                                                 addr1124:
                                                                                                                                 dragMC.slot.itemmc.gotoAndStop(dragMC.slot.Item.split("_")[0]);
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    addr1138:
                                                                                                                                    _loc2_.gotoAndStop(_loc3_);
                                                                                                                                    addr1143:
                                                                                                                                    addr1142:
                                                                                                                                    if(_loc9_ > 1)
                                                                                                                                    {
                                                                                                                                       _loc2_.quantxt.text = String(_loc9_);
                                                                                                                                       if(!_loc18_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       §§goto(addr1247);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       _loc2_.quantxt.text = "";
                                                                                                                                    }
                                                                                                                                    _loc2_.itemmc.gotoAndStop(_loc2_.Item.split("_")[0]);
                                                                                                                                    if(dropFunc !== null)
                                                                                                                                    {
                                                                                                                                       dropFunc(dragMC.slot,_loc2_);
                                                                                                                                    }
                                                                                                                                    if(_loc2_.arrayObject.Name == "H1")
                                                                                                                                    {
                                                                                                                                       if(MovieClip(root)["i_" + _loc7_].hasOwnProperty("Skill"))
                                                                                                                                       {
                                                                                                                                          addr1190:
                                                                                                                                          if(MovieClip(root)["i_" + _loc7_].Skill == "Two Handed")
                                                                                                                                          {
                                                                                                                                             if(_loc18_)
                                                                                                                                             {
                                                                                                                                                eSlot(MovieClip(_loc2_.parent.parent).H2,MovieClip(root).H1,false);
                                                                                                                                                if(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   addr1231:
                                                                                                                                                   trace("Target is now :" + _loc2_.Item);
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   addr1247:
                                                                                                                                                   return;
                                                                                                                                                   addr1217:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             eSlot(MovieClip(_loc2_.parent.parent).H2,MovieClip(root).H2,false);
                                                                                                                                             §§goto(addr1231);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1231);
                                                                                                                                 }
                                                                                                                                 trace("Origin is now :" + dragMC.slot.Item);
                                                                                                                                 addr1118:
                                                                                                                              }
                                                                                                                              §§goto(addr1247);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              dragMC.slot.quantxt.text = "";
                                                                                                                           }
                                                                                                                           §§goto(addr1124);
                                                                                                                        }
                                                                                                                        §§goto(addr1143);
                                                                                                                     }
                                                                                                                     §§goto(addr1142);
                                                                                                                  }
                                                                                                                  §§goto(addr1217);
                                                                                                               }
                                                                                                               §§goto(addr1091);
                                                                                                            }
                                                                                                            else if(_loc2_.arrayObject.hasOwnProperty("Copy"))
                                                                                                            {
                                                                                                               trace("is Copy");
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  §§push(_loc2_.arrayObject.Array);
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     §§pop()[0] = _loc8_;
                                                                                                                     _loc2_.Item = _loc8_;
                                                                                                                     MovieClip(_loc2_.parent).Item = _loc8_;
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        MovieClip(_loc2_.parent).ItemID = dragMC.slot.ItemID;
                                                                                                                        MovieClip(_loc2_.parent).arrayObject = dragMC.slot.arrayObject;
                                                                                                                        _loc2_.gotoAndStop(_loc3_);
                                                                                                                        _loc2_.itemmc.gotoAndStop(_loc7_);
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           return;
                                                                                                                        }
                                                                                                                        §§goto(addr410);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr1056:
                                                                                                                     §§pop()[dragMC.slot.ItemID] = _loc2_.Item;
                                                                                                                     addr1062:
                                                                                                                     dragMC.slot.Item = dragMC.slot.arrayObject.Array[dragMC.slot.ItemID];
                                                                                                                     addr1073:
                                                                                                                     _loc2_.Item = _loc2_.arrayObject.Array[_loc2_.ItemID];
                                                                                                                     if(dragMC.slot.startFunc)
                                                                                                                     {
                                                                                                                        dragMC.slot.startFunc();
                                                                                                                     }
                                                                                                                     if(_loc2_.startFunc)
                                                                                                                     {
                                                                                                                        §§goto(addr1091);
                                                                                                                     }
                                                                                                                     §§goto(addr1095);
                                                                                                                  }
                                                                                                                  §§goto(addr1143);
                                                                                                               }
                                                                                                               §§goto(addr1231);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(Boolean(MovieClip(root).inBattle));
                                                                                                               §§push(Boolean(MovieClip(root).inBattle));
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        addr386:
                                                                                                                        §§pop();
                                                                                                                        §§push(MovieClip(root).gameMC[MovieClip(root).pChar.key + "mc"].action === "");
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           §§push(!§§pop());
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              addr409:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 addr410:
                                                                                                                                 return;
                                                                                                                              }
                                                                                                                              §§push(Boolean(dragMC.arrayObject.hasOwnProperty("eSlot")));
                                                                                                                              if(Boolean(dragMC.arrayObject.hasOwnProperty("eSlot")))
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 if(!_loc19_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc5_ !== "None");
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       addr427:
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc18_)
                                                                                                                                          {
                                                                                                                                             return;
                                                                                                                                          }
                                                                                                                                          addr1031:
                                                                                                                                          §§push(_loc17_);
                                                                                                                                          if(!_loc19_)
                                                                                                                                          {
                                                                                                                                             addr1035:
                                                                                                                                             _loc9_ = §§pop();
                                                                                                                                             if(_loc18_)
                                                                                                                                             {
                                                                                                                                                addr1039:
                                                                                                                                                §§goto(addr1062);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1247);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1103);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          if(_loc2_.arrayObject.hasOwnProperty("eSlot"))
                                                                                                                                          {
                                                                                                                                             if(!_loc19_)
                                                                                                                                             {
                                                                                                                                                if(MovieClip(root)["i_" + _loc7_].hasOwnProperty("Level"))
                                                                                                                                                {
                                                                                                                                                   if(_loc18_)
                                                                                                                                                   {
                                                                                                                                                      if(MovieClip(root).pChar.Level < MovieClip(root)["i_" + _loc7_]["Level"])
                                                                                                                                                      {
                                                                                                                                                         trace("Not high enough level");
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            notification("Main level is not high enough");
                                                                                                                                                            return;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr475:
                                                                                                                                                         §§push(MovieClip(root).pChar.Equip.H1[0].split("_")[0]);
                                                                                                                                                         if(!_loc19_)
                                                                                                                                                         {
                                                                                                                                                            _loc11_ = §§pop();
                                                                                                                                                            if(!_loc19_)
                                                                                                                                                            {
                                                                                                                                                               addr507:
                                                                                                                                                               _loc12_ = MovieClip(root).pChar.Equip.H2[0].split("_")[0];
                                                                                                                                                               if(!_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  trace("Hand 1:" + _loc11_);
                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc13_ = MovieClip(root)["i_" + _loc11_];
                                                                                                                                                                     _loc14_ = MovieClip(root)["i_" + _loc12_];
                                                                                                                                                                     _loc15_ = MovieClip(root).pChar.Unlocks.Skills;
                                                                                                                                                                     trace(_loc13_);
                                                                                                                                                                     trace(_loc14_);
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc2_.arrayObject.Name == "H2");
                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc2_.arrayObject.Name == "H1");
                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc14_.Type === "None");
                                                                                                                                                                                                   if(!_loc19_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr592:
                                                                                                                                                                                                      if(!§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc16_ = MovieClip(root)["i_" + _loc7_];
                                                                                                                                                                                                            if(!_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc2_.arrayObject.Name == "H2")
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc13_.Skill == "Two Handed");
                                                                                                                                                                                                                     if(!(_loc13_.Skill == "Two Handed"))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr629:
                                                                                                                                                                                                                              if(_loc13_.Type == "Rifle")
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 return;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr631:
                                                                                                                                                                                                                              if(_loc16_.Type == "Shield")
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc13_.Skill !== "One Handed")
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc19_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       return;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr646:
                                                                                                                                                                                                                                    §§push(_loc13_.Skill == "One Handed");
                                                                                                                                                                                                                                    §§push(_loc13_.Skill == "One Handed");
                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(!arrayContainsBase(_loc15_,"Guard"));
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr784);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr699:
                                                                                                                                                                                                                                             if(§§pop() || _loc14_.Skill == "One Handed")
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr710:
                                                                                                                                                                                                                                                   if(!arrayContainsBase(_loc15_,"Dual Wield"))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr715);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr716:
                                                                                                                                                                                                                                                      addr721:
                                                                                                                                                                                                                                                      §§push(_loc13_.Skill == "Force Mastery");
                                                                                                                                                                                                                                                      if(!(_loc13_.Skill == "Force Mastery"))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                         if(!_loc19_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr725:
                                                                                                                                                                                                                                                            §§push(_loc14_.Skill == "Force Mastery");
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr768:
                                                                                                                                                                                                                                                            if(_loc14_.Skill != "Ranged Mastery")
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               return;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(!_loc19_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr776:
                                                                                                                                                                                                                                                               if(!arrayContainsBase(_loc15_,"Double Fire"))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr792);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr793);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr784);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr793);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr732);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr792);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr793);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr725);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr716);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr793);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          trace("Don\'t have skill Guard");
                                                                                                                                                                                                                                          return;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr793);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr721);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr732:
                                                                                                                                                                                                                                 return;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(_loc16_.Skill == "One Handed")
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc19_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc13_.Skill == "Ranged Mastery");
                                                                                                                                                                                                                                    if(!_loc19_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr691:
                                                                                                                                                                                                                                                if(_loc14_.Skill == "Ranged Mastery")
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr692);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc13_.Skill == "One Handed");
                                                                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr699);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr715:
                                                                                                                                                                                                                                             return;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr691);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr699);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr750);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr710);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc16_.Skill == "Two Handed");
                                                                                                                                                                                                                                 §§push(_loc16_.Skill == "Two Handed");
                                                                                                                                                                                                                                 if(!_loc19_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!§§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§pop();
                                                                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr750:
                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc19_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                return;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc16_.Skill == "Ranged Mastery")
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc13_.Skill == "Ranged Mastery");
                                                                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr766:
                                                                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr768);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc16_.Skill == "Force Mastery")
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr792:
                                                                                                                                                                                                                                                   return;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr793);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr793);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr784:
                                                                                                                                                                                                                                          return;
                                                                                                                                                                                                                                          §§push(_loc16_.Type == "Rifle");
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr776);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr750);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr766);
                                                                                                                                                                                                                              §§goto(addr768);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr691);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr646);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr629);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr702);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr631);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr692:
                                                                                                                                                                                                            return;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr823);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr793:
                                                                                                                                                                                                      §§push(_loc13_ == null);
                                                                                                                                                                                                      if(!_loc19_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                         if(!_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc19_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr816);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr823);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr815:
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr816);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr823);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      §§push(_loc2_.arrayObject.Name == "H2");
                                                                                                                                                                                                      if(!_loc19_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr814:
                                                                                                                                                                                                         §§goto(addr815);
                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr816:
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      if(!_loc19_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr823:
                                                                                                                                                                                                         if(_loc13_.Skill == "Two Handed")
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr824);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(MovieClip(root)["i_" + _loc7_].hasOwnProperty("Skill Level"))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc19_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(MovieClip(root).pChar.Skills[MovieClip(root)["i_" + _loc7_]["Skill"]] >= MovieClip(root)["i_" + _loc7_]["Skill Level"])
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr871:
                                                                                                                                                                                                                     §§push(dragMC === null);
                                                                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(!§§pop());
                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr880:
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr881:
                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr891:
                                                                                                                                                                                                                                 if(_loc2_.ItemID < _loc2_.arrayObject.Max)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    trace("Dragged item " + dragMC.Item + " on to " + _loc2_.Item);
                                                                                                                                                                                                                                    if(MovieClip(root).mainConnection !== null)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          trace("Updating Slots on server");
                                                                                                                                                                                                                                          swapping = true;
                                                                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             MovieClip(root).mainConnection.send("SwapSlots",_loc2_.ItemID,dragMC.ItemID,_loc2_.arrayObject.Name,dragMC.slot.arrayObject.Name);
                                                                                                                                                                                                                                             addr937:
                                                                                                                                                                                                                                             trace(_loc5_);
                                                                                                                                                                                                                                             trace(_loc7_);
                                                                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr950:
                                                                                                                                                                                                                                                §§push(Boolean(_loc5_ == _loc7_));
                                                                                                                                                                                                                                                if(Boolean(_loc5_ == _loc7_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr952:
                                                                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                                                                   addr964:
                                                                                                                                                                                                                                                   §§push(Boolean(MovieClip(root)["i_" + _loc7_].hasOwnProperty("Itemtype")));
                                                                                                                                                                                                                                                   if(Boolean(MovieClip(root)["i_" + _loc7_].hasOwnProperty("Itemtype")))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc19_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                         §§push(Boolean(MovieClip(root)[MovieClip(root)["i_" + _loc7_].Itemtype + "Stack"]));
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      trace("Stacking " + dragMC.Item);
                                                                                                                                                                                                                                                      §§push(dragMC.arrayObject.Array);
                                                                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop()[dragMC.ItemID] = "None";
                                                                                                                                                                                                                                                         §§push(_loc9_);
                                                                                                                                                                                                                                                         §§push(_loc10_);
                                                                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(int(§§pop() + §§pop()));
                                                                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc17_ = §§pop();
                                                                                                                                                                                                                                                               addr1011:
                                                                                                                                                                                                                                                               §§push(_loc2_.arrayObject.Array);
                                                                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1016:
                                                                                                                                                                                                                                                                  §§pop()[_loc2_.ItemID] = _loc7_ + "_" + _loc17_;
                                                                                                                                                                                                                                                                  _loc4_ = "None";
                                                                                                                                                                                                                                                                  _loc10_ = 1;
                                                                                                                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr1031);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1073);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr1056);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1035);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1143);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1016);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc2_.arrayObject.Array);
                                                                                                                                                                                                                                                      if(!_loc19_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1046:
                                                                                                                                                                                                                                                         §§pop()[_loc2_.ItemID] = dragMC.slot.Item;
                                                                                                                                                                                                                                                         addr1052:
                                                                                                                                                                                                                                                         §§push(dragMC.slot.arrayObject.Array);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1056);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr964);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1118);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1039);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1056);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr937);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1231);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1124);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr891);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr881);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr950);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               trace("You do not have the right skill requirements");
                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr867:
                                                                                                                                                                                                                  notification("Mastery level is not high enough");
                                                                                                                                                                                                               }
                                                                                                                                                                                                               return;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr871);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr824);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr823);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr824:
                                                                                                                                                                                                return;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr816);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr592);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr815);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr823);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr867);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr592);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr815);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr814);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr823);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1011);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1039);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1016);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr507);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1039);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr891);
                                                                                                                                                }
                                                                                                                                                §§goto(addr475);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1056);
                                                                                                                                          }
                                                                                                                                          §§goto(addr871);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1056);
                                                                                                                                    }
                                                                                                                                    §§goto(addr950);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1052);
                                                                                                                              }
                                                                                                                              §§goto(addr427);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr964);
                                                                                                                     }
                                                                                                                     §§goto(addr427);
                                                                                                                  }
                                                                                                                  §§goto(addr409);
                                                                                                               }
                                                                                                               §§goto(addr880);
                                                                                                            }
                                                                                                            §§goto(addr1231);
                                                                                                         }
                                                                                                         §§goto(addr950);
                                                                                                      }
                                                                                                      §§goto(addr952);
                                                                                                   }
                                                                                                   §§goto(addr1091);
                                                                                                }
                                                                                                §§goto(addr386);
                                                                                             }
                                                                                             §§goto(addr292);
                                                                                          }
                                                                                          §§goto(addr386);
                                                                                       }
                                                                                       §§goto(addr1046);
                                                                                    }
                                                                                    §§goto(addr937);
                                                                                 }
                                                                                 §§goto(addr260);
                                                                              }
                                                                              §§goto(addr1138);
                                                                           }
                                                                           §§goto(addr216);
                                                                        }
                                                                        §§goto(addr1190);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr102:
                                                            _loc4_ = "None";
                                                            if(_loc18_)
                                                            {
                                                               §§goto(addr106);
                                                            }
                                                         }
                                                         §§goto(addr147);
                                                      }
                                                      §§goto(addr124);
                                                   }
                                                   §§goto(addr99);
                                                }
                                                §§goto(addr112);
                                             }
                                             else
                                             {
                                                §§push("None");
                                                if(_loc18_)
                                                {
                                                   _loc3_ = §§pop();
                                                   if(_loc18_)
                                                   {
                                                      §§goto(addr78);
                                                   }
                                                   §§goto(addr124);
                                                }
                                             }
                                             §§goto(addr102);
                                          }
                                       }
                                    });
                                    if(!_loc16_)
                                    {
                                       §§push(§§pop());
                                    }
                                    §§pop().§§slot[15] = §§pop();
                                    if(!_loc16_)
                                    {
                                       §§push(§§newactivation());
                                       §§push(function(param1:MouseEvent):void
                                       {
                                          var _loc5_:Boolean = true;
                                          var _loc6_:Boolean = false;
                                          trace("Dragging");
                                          if(_loc5_)
                                          {
                                             §§push(param1.target.Item == "None");
                                             if(!_loc6_)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§pop();
                                                      if(!_loc6_)
                                                      {
                                                         addr26:
                                                         if(!swapping)
                                                         {
                                                            var _loc2_:* = new ClassReference();
                                                            if(_loc5_)
                                                            {
                                                               _loc2_.Item = param1.target.Item;
                                                            }
                                                            _loc2_.ItemID = param1.target.ItemID;
                                                            trace(param1.target.ItemID + "Drag start ID");
                                                            _loc2_.arrayObject = param1.target.arrayObject;
                                                            _loc2_.slot = MovieClip(param1.target);
                                                            _loc2_.x = MovieClip(root).mouseX;
                                                            if(!_loc6_)
                                                            {
                                                               _loc2_.y = MovieClip(root).mouseY;
                                                            }
                                                            var _loc3_:String = _loc2_.slot.Item.split("_")[0];
                                                            var _loc4_:String = MovieClip(root)["i_" + _loc3_].Type;
                                                            if(_loc5_)
                                                            {
                                                               if(_loc2_.slotmc)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     _loc2_.slotmc.gotoAndStop(_loc4_);
                                                                     _loc2_.slotmc.itemmc.gotoAndStop(_loc3_);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§goto(addr129);
                                                                     }
                                                                     §§goto(addr134);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  _loc2_.gotoAndStop(_loc4_);
                                                                  if(_loc5_)
                                                                  {
                                                                     _loc2_.itemmc.gotoAndStop(_loc3_);
                                                                     if(_loc5_)
                                                                     {
                                                                        addr129:
                                                                        dragMC = _loc2_;
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr134:
                                                                           stage.addEventListener(MouseEvent.MOUSE_MOVE,dragFollowMouse);
                                                                        }
                                                                        §§goto(addr139);
                                                                     }
                                                                     addr139:
                                                                     stage.addEventListener(MouseEvent.MOUSE_UP,removeDragFollowMouse);
                                                                     MovieClip(root).addChild(_loc2_);
                                                                     if(_loc5_)
                                                                     {
                                                                        _loc2_.mouseEnabled = false;
                                                                        if(!_loc6_)
                                                                        {
                                                                           _loc2_.mouseChildren = false;
                                                                        }
                                                                     }
                                                                     §§goto(addr159);
                                                                  }
                                                               }
                                                               addr159:
                                                               return;
                                                            }
                                                            §§goto(addr129);
                                                         }
                                                      }
                                                      return;
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr26);
                                       });
                                       if(!_loc16_)
                                       {
                                          §§push(§§pop());
                                       }
                                       §§pop().§§slot[16] = §§pop();
                                       if(_loc15_)
                                       {
                                          addr136:
                                          §§push(§§newactivation());
                                          §§push(function(param1:MouseEvent):void
                                          {
                                             var _loc5_:Boolean = true;
                                             var _loc6_:Boolean = false;
                                             var _loc4_:* = undefined;
                                             if(!_loc6_)
                                             {
                                                trace("TooltipCalc");
                                                if(_loc5_)
                                                {
                                                   addr14:
                                                   if(param1.target.Item != "None")
                                                   {
                                                      var _loc2_:Class = getDefinitionByName("Tooltip") as Class;
                                                      var _loc3_:* = new _loc2_();
                                                      if(!_loc6_)
                                                      {
                                                         if(param1.target.Item is DatabaseObject)
                                                         {
                                                            addr40:
                                                            _loc4_ = param1.target.Item.Item;
                                                         }
                                                         else
                                                         {
                                                            _loc4_ = param1.target.Item;
                                                         }
                                                         _loc3_.Item = _loc4_;
                                                         _loc3_.ItemID = param1.target.ItemID;
                                                         trace(_loc3_.Item);
                                                         if(!_loc6_)
                                                         {
                                                            _loc3_.arrayObject = param1.target.arrayObject;
                                                            if(_loc5_)
                                                            {
                                                               _loc3_.slot = MovieClip(param1.target);
                                                               _loc3_.mouseEnabled = false;
                                                               if(_loc5_)
                                                               {
                                                                  _loc3_.drag = param1.target.drag;
                                                                  if(_loc5_)
                                                                  {
                                                                     _loc3_.tool = param1.target.tool;
                                                                     if(_loc5_)
                                                                     {
                                                                        _loc3_.x = MovieClip(root).mouseX;
                                                                     }
                                                                     _loc3_.y = MovieClip(root).mouseY;
                                                                     if(_loc5_)
                                                                     {
                                                                        stageBoundary(_loc3_);
                                                                        addr117:
                                                                        if(_loc3_.slotmc)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              eSlot(_loc3_.slotmc,{
                                                                                 "Array":new Array(_loc3_.Item),
                                                                                 "Name":"Tooltip",
                                                                                 "Max":1,
                                                                                 "Compat":new Array()
                                                                              },false);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§goto(addr143);
                                                                              }
                                                                              §§goto(addr146);
                                                                           }
                                                                           §§goto(addr165);
                                                                        }
                                                                        §§goto(addr143);
                                                                     }
                                                                     §§goto(addr146);
                                                                  }
                                                                  §§goto(addr143);
                                                               }
                                                               §§goto(addr146);
                                                            }
                                                            §§goto(addr117);
                                                         }
                                                         addr143:
                                                         if(tooltipMC !== null)
                                                         {
                                                            addr146:
                                                            remove(tooltipMC);
                                                            tooltipMC = null;
                                                            if(_loc6_)
                                                            {
                                                            }
                                                            §§goto(addr180);
                                                         }
                                                         tooltipMC = _loc3_;
                                                         stage.addEventListener(MouseEvent.MOUSE_MOVE,tooltipFollowMouse);
                                                         if(_loc5_)
                                                         {
                                                            addr165:
                                                            MovieClip(root).addChild(_loc3_);
                                                            if(_loc5_)
                                                            {
                                                               trace(tooltipMC.Item);
                                                               if(_loc5_)
                                                               {
                                                                  addr180:
                                                                  toolTipRefresh();
                                                                  §§goto(addr182);
                                                               }
                                                            }
                                                         }
                                                         addr182:
                                                         trace("TooltipAdded");
                                                         return;
                                                      }
                                                      §§goto(addr40);
                                                   }
                                                }
                                                return;
                                             }
                                             §§goto(addr14);
                                          });
                                          if(!_loc16_)
                                          {
                                             §§push(§§pop());
                                          }
                                          §§pop().§§slot[17] = §§pop();
                                          if(!_loc16_)
                                          {
                                             §§push(§§newactivation());
                                             §§push(function(param1:MouseEvent):void
                                             {
                                                var _loc2_:Boolean = false;
                                                var _loc3_:Boolean = true;
                                                trace("RemoveTooltip");
                                                if(param1.target.Item == "None")
                                                {
                                                   return;
                                                }
                                                if(tooltipMC !== null)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      stage.removeEventListener(MouseEvent.MOUSE_MOVE,tooltipFollowMouse);
                                                      remove(tooltipMC);
                                                      tooltipMC = null;
                                                   }
                                                }
                                                toolTime.stop();
                                             });
                                             if(!_loc16_)
                                             {
                                                §§push(§§pop());
                                             }
                                             §§pop().§§slot[18] = §§pop();
                                             if(!_loc16_)
                                             {
                                                §§goto(addr154);
                                             }
                                          }
                                          §§goto(addr165);
                                       }
                                       §§goto(addr200);
                                    }
                                    addr154:
                                    var ClassReference:Class = getDefinitionByName(linkage) as Class;
                                    if(_loc15_)
                                    {
                                       §§goto(addr165);
                                    }
                                    addr213:
                                    §§push(§§newactivation());
                                    §§push(vNum);
                                    if(_loc15_)
                                    {
                                       §§push(int(§§pop()));
                                    }
                                    §§pop().§§slot[21] = §§pop();
                                    if(_loc15_)
                                    {
                                       §§goto(addr223);
                                    }
                                    addr851:
                                    return;
                                 }
                              }
                              §§goto(addr183);
                           }
                           §§goto(addr223);
                        }
                        §§goto(addr168);
                     }
                     addr110:
                     return;
                  }
                  §§goto(addr165);
               }
               §§goto(addr92);
            }
            §§goto(addr105);
         }
         §§goto(addr136);
      }
      
      public function fadeFrame(param1:Function = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.FaderMC = this.addMc("FaderOut",new Point(0,0),MovieClip(root));
            if(!_loc2_)
            {
               this.FaderMC.where = MovieClip(root);
               if(_loc3_)
               {
                  addr55:
                  this.FaderMC.go = MovieClip(root).currentFrame;
                  if(_loc3_)
                  {
                     addr64:
                     this.FaderMC.Func = param1;
                  }
               }
               return;
            }
            §§goto(addr64);
         }
         §§goto(addr55);
      }
      
      public function fadeTo(param1:int, param2:MovieClip, param3:Function = null) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.FaderMC = this.addMc("FaderOut",new Point(0,0),MovieClip(root));
            if(_loc4_)
            {
               addr38:
               this.FaderMC.where = param2;
               if(!_loc5_)
               {
                  this.FaderMC.go = param1;
                  if(!_loc4_)
                  {
                  }
                  §§goto(addr54);
               }
               this.FaderMC.Func = param3;
            }
            addr54:
            return;
         }
         §§goto(addr38);
      }
      
      public function loadCharacters(param1:String, param2:Function = null, param3:Function = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            var loadChars:Function = null;
            var charList:String = param1;
            if(!_loc6_)
            {
               var callback:Function = param2;
               if(!_loc6_)
               {
                  addr43:
                  var error:Function = param3;
                  §§push(§§newactivation());
                  §§push(function(param1:Array):void
                  {
                     var _loc2_:Boolean = true;
                     var _loc3_:Boolean = false;
                     MovieClip(root).pChars = param1;
                     if(!_loc3_)
                     {
                        trace("Got characters");
                        if(_loc2_)
                        {
                           §§goto(addr18);
                        }
                        §§goto(addr24);
                     }
                     addr18:
                     if(callback !== null)
                     {
                        if(_loc2_)
                        {
                           addr24:
                           callback();
                        }
                     }
                  });
                  if(!_loc6_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().§§slot[4] = §§pop();
                  if(_loc5_)
                  {
                     §§push(§§newactivation());
                     §§push(function(param1:DatabaseObject):void
                     {
                        var _loc2_:Boolean = false;
                        var _loc3_:Boolean = true;
                        MovieClip(root).account = param1;
                        if(param1 !== null)
                        {
                           if(!_loc2_)
                           {
                              §§push(Boolean(param1.hasOwnProperty(charList)));
                              if(_loc3_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       §§pop();
                                       §§push(param1[charList].length >= 1);
                                    }
                                 }
                              }
                              if(§§pop())
                              {
                                 MovieClip(root).client.bigDB.loadKeys(charList,param1[charList],loadChars,error);
                                 if(_loc2_)
                                 {
                                    addr62:
                                    callback();
                                 }
                              }
                              else
                              {
                                 MovieClip(root).pChars = new Array();
                                 if(callback !== null)
                                 {
                                    if(_loc3_)
                                    {
                                       §§goto(addr62);
                                    }
                                 }
                              }
                           }
                        }
                     });
                     if(_loc5_)
                     {
                        §§push(§§pop());
                     }
                     §§pop().§§slot[5] = §§pop();
                     if(_loc5_)
                     {
                        MovieClip(root).client.bigDB.loadMyPlayerObject(loadedList,error);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      public function loadData(param1:Array, param2:int, param3:MovieClip) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            var notworking:Array = null;
            if(_loc6_)
            {
               var stageLoading:* = undefined;
               var stages:int = 0;
               var eachStagePercent:Number = NaN;
               var loaded:* = undefined;
               var perform:Boolean = false;
               if(_loc6_)
               {
                  var attempted:Boolean = false;
                  var joinRoomID:Function = null;
                  if(_loc6_)
                  {
                     var joinRoom:Function = null;
                     if(!_loc5_)
                     {
                        var LoadStages:Array = param1;
                        if(_loc6_)
                        {
                           var toLoad:int = param2;
                           if(!_loc5_)
                           {
                              var loadMC:MovieClip = param3;
                              addr79:
                              var loadNext:* = function():void
                              {
                                 var _loc1_:Boolean = false;
                                 var _loc2_:Boolean = true;
                                 if(toLoad < stages - 1)
                                 {
                                    if(_loc2_)
                                    {
                                       loadData(LoadStages,toLoad + 1,loadMC);
                                    }
                                 }
                              };
                              §§push(§§newactivation());
                              §§push([]);
                              if(_loc6_)
                              {
                                 §§push(§§pop());
                              }
                              §§pop().§§slot[4] = §§pop();
                              if(!_loc5_)
                              {
                                 var notwork:String = "";
                                 §§push(§§newactivation());
                                 §§push(function(param1:String, param2:*):void
                                 {
                                    var _loc4_:Boolean = false;
                                    var _loc5_:Boolean = true;
                                    if(_loc5_)
                                    {
                                       var roomType:String = param1;
                                       if(!_loc4_)
                                       {
                                          var callback:* = param2;
                                          if(_loc5_)
                                          {
                                             addr22:
                                             MovieClip(root).client.multiplayer.listRooms(roomType,{
                                                "Map":mapLoading,
                                                "B":root.branch
                                             },2000,0,function(param1:Array):void
                                             {
                                                var _loc9_:Boolean = false;
                                                var _loc10_:Boolean = true;
                                                var _loc5_:* = 0;
                                                var _loc7_:* = NaN;
                                                var _loc8_:RoomInfo = null;
                                                var _loc2_:* = int(param1.length);
                                                var _loc3_:* = mapLoading;
                                                if(!_loc9_)
                                                {
                                                   §§push(_loc3_);
                                                   if(_loc10_)
                                                   {
                                                      §§push(§§pop() + root.branch);
                                                      if(_loc10_)
                                                      {
                                                         addr32:
                                                         _loc3_ = §§pop();
                                                         §§push(_loc3_);
                                                         if(!_loc9_)
                                                         {
                                                            addr37:
                                                            §§push(§§pop() + (_loc2_ + 1));
                                                         }
                                                         var _loc4_:* = §§pop();
                                                         if(!_loc9_)
                                                         {
                                                            §§push(_loc2_);
                                                            if(_loc10_)
                                                            {
                                                               §§push(int(§§pop() + 1));
                                                               if(_loc10_)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  addr56:
                                                                  §§push(0);
                                                               }
                                                            }
                                                            var _loc6_:* = §§pop();
                                                            if(!_loc9_)
                                                            {
                                                               while(_loc6_ < _loc2_)
                                                               {
                                                                  §§push(_loc6_ / 1000);
                                                                  if(_loc10_)
                                                                  {
                                                                     §§push(§§pop() / 2);
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                                  _loc7_ = §§pop();
                                                                  if(!_loc9_)
                                                                  {
                                                                     loaded = eachStagePercent * toLoad + _loc7_ / stages;
                                                                     if(_loc10_)
                                                                     {
                                                                        addr88:
                                                                        loadMC.loadbar.x = stage.stageWidth * loaded;
                                                                     }
                                                                     _loc8_ = param1[_loc6_];
                                                                     §§push(int(int(_loc8_.data.MapID)));
                                                                     if(_loc10_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc10_)
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           if(_loc10_)
                                                                           {
                                                                              §§push(_loc6_);
                                                                              if(_loc10_)
                                                                              {
                                                                                 addr119:
                                                                                 if(§§pop() > §§pop() + 1)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       §§push(_loc8_.id);
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             _loc4_ = §§pop();
                                                                                             §§push(_loc6_);
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                §§push(1);
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      addr146:
                                                                                                      _loc5_ = int(§§pop());
                                                                                                      break;
                                                                                                   }
                                                                                                   addr241:
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr226:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      addr230:
                                                                                                      _loc5_ = int(§§pop());
                                                                                                      break;
                                                                                                   }
                                                                                                }
                                                                                                addr242:
                                                                                                _loc7_ = §§pop();
                                                                                                loaded = eachStagePercent * toLoad + _loc7_ / stages;
                                                                                                addr252:
                                                                                                loadMC.loadbar.x = stage.stageWidth * loaded;
                                                                                                addr259:
                                                                                                trace("load next: " + _loc4_);
                                                                                                trace(_loc5_);
                                                                                                addr267:
                                                                                                callback(_loc4_,_loc5_,root.branch);
                                                                                                §§goto(addr274);
                                                                                             }
                                                                                             §§goto(addr146);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr194:
                                                                                             _loc4_ = §§pop() + "Escape";
                                                                                             _loc6_++;
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             addr197:
                                                                                          }
                                                                                          addr274:
                                                                                          return;
                                                                                       }
                                                                                       §§goto(addr194);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr215:
                                                                                       §§push(_loc8_.id);
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          addr220:
                                                                                          _loc4_ = §§pop();
                                                                                          §§push(_loc6_);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             §§goto(addr226);
                                                                                             §§push(1);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr220);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(_loc8_.id);
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       if(§§pop().indexOf(_loc3_) < 0)
                                                                                       {
                                                                                          param1.splice(_loc6_,1);
                                                                                          addr162:
                                                                                          _loc6_--;
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             §§push(_loc2_);
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                §§push(§§pop() - 1);
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   _loc2_ = §§pop();
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      §§goto(addr230);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr175:
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr207:
                                                                                                   if(§§pop() < MovieClip(root).MaxUsers)
                                                                                                   {
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         §§goto(addr215);
                                                                                                      }
                                                                                                      §§goto(addr252);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr194);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr194);
                                                                                             }
                                                                                             §§goto(addr207);
                                                                                          }
                                                                                          §§goto(addr175);
                                                                                       }
                                                                                       else if(arrayContains(notworking,_loc8_.id))
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             trace("not working");
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   §§goto(addr194);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr220);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr259);
                                                                                          }
                                                                                          §§goto(addr197);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          notwork = _loc8_.id;
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             §§goto(addr207);
                                                                                             §§push(_loc8_.onlineUsers);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr267);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr220);
                                                                              }
                                                                              §§goto(addr226);
                                                                           }
                                                                           §§goto(addr162);
                                                                        }
                                                                        §§goto(addr119);
                                                                     }
                                                                     §§goto(addr162);
                                                                  }
                                                                  §§goto(addr88);
                                                               }
                                                            }
                                                            §§push(0.75);
                                                            if(!_loc9_)
                                                            {
                                                               §§goto(addr241);
                                                            }
                                                            §§goto(addr242);
                                                         }
                                                         §§goto(addr56);
                                                      }
                                                      §§goto(addr37);
                                                   }
                                                }
                                                §§goto(addr32);
                                             },function(param1:PlayerIOError):void
                                             {
                                                trace(String(param1));
                                             });
                                          }
                                          return;
                                       }
                                    }
                                    §§goto(addr22);
                                 });
                                 if(_loc6_)
                                 {
                                    §§push(§§pop());
                                 }
                                 §§pop().§§slot[6] = §§pop();
                                 if(_loc6_)
                                 {
                                    stageLoading = LoadStages[toLoad];
                                    if(!_loc5_)
                                    {
                                       trace(LoadStages);
                                       trace(stageLoading);
                                       trace("Loading " + stageLoading.Type);
                                       if(_loc6_)
                                       {
                                          addr134:
                                          stages = LoadStages.length;
                                          §§push(§§newactivation());
                                          §§push(1 / stages);
                                          if(_loc6_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          §§pop().§§slot[9] = §§pop();
                                          if(!_loc5_)
                                          {
                                             §§push(§§newactivation());
                                             §§push(eachStagePercent);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() * toLoad);
                                             }
                                             §§pop().§§slot[10] = §§pop();
                                             loadMC.loadbar.x = stage.stageWidth * loaded;
                                             loadMC.loadtxt.text = root.getTxt(stageLoading.Txt,loadMC.loadtxt.text == "" ? loadMC.loadtxt : null);
                                          }
                                          if(stageLoading.Type == "DB")
                                          {
                                             MovieClip(root).client.bigDB.loadRange(stageLoading.Table,"Data",null,null,null,1000,function(param1:Array):void
                                             {
                                                var _loc7_:Boolean = true;
                                                var _loc8_:Boolean = false;
                                                var _loc4_:* = NaN;
                                                var _loc5_:* = undefined;
                                                var _loc6_:* = null;
                                                var _loc2_:int = param1.length;
                                                if(_loc7_)
                                                {
                                                   trace("Loaded " + stageLoading.Table);
                                                }
                                                var _loc3_:int = 0;
                                                if(_loc7_)
                                                {
                                                   for(; _loc3_ < _loc2_; _loc3_++)
                                                   {
                                                      §§push(_loc3_ / 1000);
                                                      if(!_loc8_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      _loc4_ = §§pop();
                                                      if(_loc7_)
                                                      {
                                                         loaded = eachStagePercent * toLoad + _loc4_ / stages;
                                                         if(!_loc8_)
                                                         {
                                                            loadMC.loadbar.x = stage.stageWidth * loaded;
                                                         }
                                                      }
                                                      _loc5_ = param1[_loc3_];
                                                      if(!_loc8_)
                                                      {
                                                         trace(_loc5_.key);
                                                         if(!_loc8_)
                                                         {
                                                            _loc6_ = "";
                                                            if(stageLoading.hasOwnProperty("Save"))
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  addr83:
                                                                  §§push(stageLoading.Save);
                                                                  if(_loc7_)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     addr89:
                                                                     §§push(_loc6_);
                                                                  }
                                                                  if(§§pop() == "A")
                                                                  {
                                                                     MovieClip(root).AArray = param1;
                                                                     MovieClip(root).achievements = {
                                                                        "Name":"Achievements",
                                                                        "Array":param1,
                                                                        "Compat":new Array()
                                                                     };
                                                                     break;
                                                                  }
                                                                  MovieClip(root)[_loc6_ + _loc5_.key] = _loc5_;
                                                               }
                                                               continue;
                                                            }
                                                         }
                                                         §§goto(addr89);
                                                      }
                                                      §§goto(addr83);
                                                   }
                                                }
                                                loadNext();
                                             });
                                             if(!_loc6_)
                                             {
                                                addr333:
                                                if(stageLoading.hasOwnProperty("RoomID"))
                                                {
                                                   addr338:
                                                   §§push(joinRoomID);
                                                   if(!_loc5_)
                                                   {
                                                      §§pop()(stageLoading.RoomID);
                                                      if(_loc6_)
                                                      {
                                                         addr374:
                                                         trace(toLoad);
                                                         return;
                                                         addr357:
                                                      }
                                                   }
                                                   §§goto(addr374);
                                                }
                                                else
                                                {
                                                   §§push(§§newactivation());
                                                   §§push(function(param1:String, param2:int, param3:String = "A"):void
                                                   {
                                                      var _loc5_:Boolean = false;
                                                      var _loc6_:Boolean = true;
                                                      if(_loc6_)
                                                      {
                                                         var mapID:String = param1;
                                                         if(!_loc5_)
                                                         {
                                                            addr18:
                                                            var ID:int = param2;
                                                            if(_loc6_)
                                                            {
                                                               §§goto(addr24);
                                                            }
                                                            §§goto(addr30);
                                                         }
                                                         addr24:
                                                         var branch:String = param3;
                                                         if(!_loc5_)
                                                         {
                                                            addr30:
                                                            MovieClip(root).client.multiplayer.createJoinRoom(mapID,stageLoading.RoomType,true,{
                                                               "Type":"City",
                                                               "Map":mapLoading,
                                                               "MapID":ID,
                                                               "B":branch
                                                            },{"Name":MovieClip(root).pChar.key},function(param1:Connection):void
                                                            {
                                                               var _loc2_:Boolean = false;
                                                               var _loc3_:Boolean = true;
                                                               stageLoading.Callback(param1);
                                                               if(!_loc2_)
                                                               {
                                                                  if(root.RoomData)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        root.RoomData.ID = ID;
                                                                        if(_loc3_)
                                                                        {
                                                                           addr23:
                                                                           loadNext();
                                                                        }
                                                                     }
                                                                     return;
                                                                  }
                                                               }
                                                               §§goto(addr23);
                                                            },function(param1:PlayerIOError):void
                                                            {
                                                               var _loc2_:Boolean = true;
                                                               var _loc3_:Boolean = false;
                                                               trace(String(param1));
                                                               if(!_loc3_)
                                                               {
                                                                  trace(mapID);
                                                               }
                                                            });
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr18);
                                                   });
                                                   if(!_loc5_)
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                   §§pop().§§slot[16] = §§pop();
                                                   §§push(loadNextRoom);
                                                }
                                                §§pop()(stageLoading.RoomType,joinRoom);
                                             }
                                             else
                                             {
                                                addr225:
                                             }
                                          }
                                          else if(stageLoading.Type == "File")
                                          {
                                             if(stageLoading.FileType == "Map")
                                             {
                                                perform = true;
                                                addr239:
                                                attempted = false;
                                                if(stageLoading.hasOwnProperty("isCity"))
                                                {
                                                   if(_loc6_)
                                                   {
                                                      this.mapLoading = "Main City";
                                                      addr253:
                                                      if(stageLoading.hasOwnProperty("isIntro"))
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §§push(!MovieClip(root).account.hasOwnProperty("Stages"));
                                                            if(!_loc5_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr274:
                                                                     §§pop();
                                                                     §§push(this.arrayContains(MovieClip(root).account.Stages,"TutIntro"));
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr289:
                                                                           if(§§pop())
                                                                           {
                                                                              this.mapLoading = "Intro";
                                                                              addr302:
                                                                              §§push(perform);
                                                                           }
                                                                           else
                                                                           {
                                                                              loadNext();
                                                                              perform = false;
                                                                              §§goto(addr302);
                                                                           }
                                                                           §§goto(addr302);
                                                                        }
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           addr307:
                                                                           var loadmap:* = function():void
                                                                           {
                                                                              var _loc2_:Boolean = true;
                                                                              var _loc3_:Boolean = false;
                                                                              var loader:Loader = null;
                                                                              if(_loc2_)
                                                                              {
                                                                                 var progressEvent:Function = null;
                                                                                 var completeEvent:Function = null;
                                                                                 var errorEvent:* = undefined;
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    errorEvent = function(param1:IOErrorEvent):void
                                                                                    {
                                                                                       var _loc2_:Boolean = true;
                                                                                       var _loc3_:Boolean = false;
                                                                                       trace(param1.text);
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          loader.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS,progressEvent);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,completeEvent);
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,errorEvent);
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   attempted = true;
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                   }
                                                                                                   §§goto(addr46);
                                                                                                }
                                                                                             }
                                                                                             loadmap();
                                                                                          }
                                                                                       }
                                                                                       addr46:
                                                                                    };
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       loader = new Loader();
                                                                                       §§push(§§newactivation());
                                                                                       §§push(function(param1:ProgressEvent):void
                                                                                       {
                                                                                          var _loc4_:Boolean = false;
                                                                                          var _loc5_:Boolean = true;
                                                                                          trace("loading");
                                                                                          §§push(param1.bytesLoaded / param1.bytesTotal);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc2_:* = §§pop();
                                                                                          §§push(eachStagePercent * toLoad);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(_loc2_);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§push(§§pop() / stages);
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                          }
                                                                                          var _loc3_:* = §§pop();
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             loadMC.loadbar.x = stage.stageWidth * _loc3_;
                                                                                          }
                                                                                       });
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                       }
                                                                                       §§pop().§§slot[2] = §§pop();
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          §§push(§§newactivation());
                                                                                          §§push(function(param1:Event):void
                                                                                          {
                                                                                             var _loc2_:Boolean = true;
                                                                                             var _loc3_:Boolean = false;
                                                                                             trace("Map " + mapLoading + " Completed");
                                                                                             MovieClip(root).gameMC = loader.contentLoaderInfo.content as MovieClip;
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                root.gameMC.LOADER = loader as Loader;
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr31:
                                                                                                   loader.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS,progressEvent);
                                                                                                   loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,completeEvent);
                                                                                                   loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,errorEvent);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      loadNext();
                                                                                                      if(stageLoading.hasOwnProperty("Callback"))
                                                                                                      {
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            addr61:
                                                                                                            stageLoading.Callback();
                                                                                                         }
                                                                                                         addr66:
                                                                                                         if(mapLoading == "Intro")
                                                                                                         {
                                                                                                            return;
                                                                                                         }
                                                                                                         return;
                                                                                                      }
                                                                                                      loader = null;
                                                                                                      §§goto(addr66);
                                                                                                   }
                                                                                                   §§goto(addr61);
                                                                                                }
                                                                                                §§goto(addr66);
                                                                                             }
                                                                                             §§goto(addr31);
                                                                                          });
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                          }
                                                                                          §§pop().§§slot[3] = §§pop();
                                                                                          loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,progressEvent);
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             loader.contentLoaderInfo.addEventListener(Event.COMPLETE,completeEvent);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,errorEvent);
                                                                                                trace("Folder: " + "/" + stageLoading.Folder + "/" + mapLoading + ".swf");
                                                                                             }
                                                                                             var fileURL:String = mapLoading + ".swf";
                                                                                          }
                                                                                          if(attempted)
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             §§push("http://mallorca-immobilien.biz/Esgrima2/Maps/");
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                §§push(§§pop() + fileURL);
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   §§push(§§pop() + "?nocache=");
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                   }
                                                                                                   addr121:
                                                                                                   §§pop().§§slot[5] = §§pop();
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      §§goto(addr125);
                                                                                                   }
                                                                                                   §§goto(addr134);
                                                                                                }
                                                                                                §§push(§§pop() + root.updatebranch);
                                                                                             }
                                                                                             §§goto(addr121);
                                                                                          }
                                                                                          addr125:
                                                                                          var fileRequest:URLRequest = new URLRequest(fileURL);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             addr134:
                                                                                             var context:LoaderContext = new LoaderContext();
                                                                                             §§goto(addr139);
                                                                                          }
                                                                                          addr139:
                                                                                          context.checkPolicyFile = true;
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             addr146:
                                                                                             loader.load(fileRequest);
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                addr153:
                                                                                                trace("Map loading");
                                                                                             }
                                                                                          }
                                                                                          return;
                                                                                       }
                                                                                       §§goto(addr146);
                                                                                    }
                                                                                    §§goto(addr153);
                                                                                 }
                                                                              }
                                                                              §§goto(addr134);
                                                                           };
                                                                           trace("loading map");
                                                                           addr314:
                                                                           loadmap();
                                                                           addr319:
                                                                           §§goto(addr374);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr333);
                                                                        }
                                                                     }
                                                                     §§goto(addr319);
                                                                  }
                                                               }
                                                               §§goto(addr289);
                                                            }
                                                            §§goto(addr274);
                                                         }
                                                      }
                                                      §§goto(addr302);
                                                   }
                                                   §§goto(addr374);
                                                }
                                                §§goto(addr253);
                                             }
                                             §§goto(addr319);
                                          }
                                          else if(stageLoading.Type == "Room")
                                          {
                                             if(_loc6_)
                                             {
                                                §§push(§§newactivation());
                                                §§push(function(param1:String):void
                                                {
                                                   var _loc3_:Boolean = false;
                                                   var _loc4_:Boolean = true;
                                                   if(_loc4_)
                                                   {
                                                      var id:String = param1;
                                                      if(_loc4_)
                                                      {
                                                         var idnum:int = id.split(mapLoading)[1];
                                                         if(!_loc3_)
                                                         {
                                                            addr30:
                                                            MovieClip(root).client.multiplayer.createJoinRoom(id,stageLoading.RoomType,true,{
                                                               "Type":"City",
                                                               "Map":mapLoading,
                                                               "MapID":idnum,
                                                               "Name":MovieClip(root).pChar.key
                                                            },{"Name":MovieClip(root).pChar.key},function(param1:Connection):void
                                                            {
                                                               var _loc2_:Boolean = false;
                                                               var _loc3_:Boolean = true;
                                                               stageLoading.Callback(param1);
                                                               if(!_loc2_)
                                                               {
                                                                  loadNext();
                                                               }
                                                            },function():void
                                                            {
                                                               joinRoomID(id);
                                                            });
                                                         }
                                                         return;
                                                      }
                                                   }
                                                   §§goto(addr30);
                                                });
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop());
                                                }
                                                §§pop().§§slot[15] = §§pop();
                                                §§goto(addr333);
                                             }
                                             §§goto(addr338);
                                          }
                                          §§goto(addr374);
                                       }
                                       §§goto(addr307);
                                    }
                                    §§goto(addr134);
                                 }
                                 §§goto(addr253);
                              }
                           }
                           §§goto(addr239);
                        }
                        §§goto(addr79);
                     }
                     §§goto(addr333);
                  }
                  §§goto(addr357);
               }
               §§goto(addr225);
            }
            §§goto(addr307);
         }
         §§goto(addr314);
      }
      
      public function checkFriendsMap(param1:String, param2:Function, param3:Function) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var roomType:String = param1;
         if(_loc5_)
         {
            var found:Function = param2;
            if(!_loc6_)
            {
               var notfound:Function = param3;
               if(_loc5_)
               {
                  addr36:
                  §§push("Social");
                  if(_loc5_)
                  {
                     §§push(§§pop() in MovieClip(root).pChar);
                     if(!_loc6_)
                     {
                        §§push(!§§pop());
                        if(!_loc6_)
                        {
                           §§push(§§pop());
                           if(!_loc6_)
                           {
                              if(!§§pop())
                              {
                                 if(_loc5_)
                                 {
                                    §§pop();
                                    addr66:
                                    §§push("Friends" in MovieClip(root).pChar.Social);
                                    if(_loc5_)
                                    {
                                       §§push(!§§pop());
                                       if(_loc5_)
                                       {
                                          §§goto(addr77);
                                       }
                                       §§pop();
                                       §§push(MovieClip(root).pChar.Social.Friends.length < 1);
                                    }
                                 }
                                 §§goto(addr77);
                              }
                              addr77:
                              §§goto(addr78);
                           }
                           addr78:
                           if(§§pop())
                           {
                           }
                           if(§§pop())
                           {
                              notfound();
                              if(!_loc6_)
                              {
                                 return;
                              }
                              §§goto(addr121);
                           }
                           else
                           {
                              MovieClip(root).client.multiplayer.listRooms(roomType,{"Map":this.mapLoading},2000,0,function(param1:Array):void
                              {
                                 var _loc3_:Boolean = false;
                                 var _loc4_:Boolean = true;
                                 if(!_loc3_)
                                 {
                                    var rA:Array = param1;
                                    if(_loc4_)
                                    {
                                       MovieClip(root).client.bigDB.loadKeys("Chars",MovieClip(root).pChar.Social.Friends,function(param1:Array):void
                                       {
                                          var _loc7_:Boolean = false;
                                          var _loc8_:Boolean = true;
                                          var _loc4_:DatabaseObject = null;
                                          var _loc5_:* = null;
                                          var _loc6_:int = 0;
                                          var _loc2_:Boolean = false;
                                          var _loc3_:int = 0;
                                          if(!_loc7_)
                                          {
                                             for(; _loc3_ < param1.length; _loc3_++)
                                             {
                                                §§push(!(_loc4_ = param1[_loc3_]).onlineStatus);
                                                if(!_loc7_)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc8_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         §§pop();
                                                         if(!_loc7_)
                                                         {
                                                            §§push(!_loc4_.onlineStatus.state);
                                                            if(_loc8_)
                                                            {
                                                               addr46:
                                                               addr47:
                                                               if(!§§pop())
                                                               {
                                                                  §§goto(addr131);
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  trace("Room join: Friend " + _loc4_.key + " is not online");
                                                                  continue;
                                                               }
                                                               §§push(_loc4_.Map.split("_")[0]);
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(_loc5_ = §§pop());
                                                               }
                                                               if(§§pop() != mapLoading)
                                                               {
                                                                  continue;
                                                               }
                                                               _loc6_ = _loc4_.onlineStatus.publicID;
                                                               trace("Found friend with same map");
                                                               if(rA[_loc6_ - 1].onlineUsers < 40)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     trace("Joining friend " + _loc4_.key + " at " + _loc5_ + _loc6_);
                                                                     found(_loc5_ + _loc6_,_loc6_);
                                                                     addr119:
                                                                     _loc2_ = true;
                                                                     §§goto(addr124);
                                                                  }
                                                                  §§goto(addr132);
                                                               }
                                                               else
                                                               {
                                                                  trace("Friends room is full");
                                                                  §§goto(addr124);
                                                               }
                                                            }
                                                            §§goto(addr119);
                                                         }
                                                         §§goto(addr124);
                                                      }
                                                      §§goto(addr46);
                                                   }
                                                   §§goto(addr47);
                                                }
                                                §§goto(addr131);
                                             }
                                          }
                                          addr131:
                                          if(!_loc7_)
                                          {
                                             §§pop();
                                             addr124:
                                             if(!_loc7_)
                                             {
                                                §§push(!_loc4_.onlineStatus.publicID);
                                             }
                                             break loop0;
                                          }
                                          if(!§§pop())
                                          {
                                             addr132:
                                             notfound();
                                          }
                                          _loc2_;
                                       });
                                    }
                                 }
                              });
                              §§goto(addr121);
                           }
                           §§goto(addr121);
                        }
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr66);
               }
               addr121:
               return;
            }
            §§goto(addr36);
         }
         §§goto(addr66);
      }
      
      public function getExternalClass(param1:String, param2:Loader) : Class
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Class = param2.contentLoaderInfo.applicationDomain.getDefinition(param1) as Class;
         if(_loc5_)
         {
            trace(param2);
         }
         return _loc3_;
      }
      
      public function dbError(param1:PlayerIOError) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.notification("There was an error connecting to the database. Please refresh your game","");
         }
      }
      
      public function connectionError(param1:PlayerIOError) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.notification("There was an error connection to the server. Please refresh your game","");
         }
      }
      
      public function waitConnected(param1:Connection, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var checkF:Function = null;
         if(_loc5_)
         {
            var connection:Connection = param1;
            if(!_loc4_)
            {
               addr33:
               var callback:Function = param2;
               §§push(§§newactivation());
               §§push(function(param1:Event):void
               {
                  var _loc2_:Boolean = true;
                  var _loc3_:Boolean = false;
                  §§push(Boolean(connection));
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           addr14:
                           §§pop();
                           if(_loc2_)
                           {
                              §§goto(addr20);
                           }
                           §§goto(addr31);
                        }
                     }
                     addr20:
                     if(connection.connected)
                     {
                        if(!_loc3_)
                        {
                           removeEventListener(Event.ENTER_FRAME,checkF);
                           if(_loc2_)
                           {
                              addr31:
                              callback();
                           }
                        }
                        §§goto(addr31);
                     }
                     return;
                  }
                  §§goto(addr14);
               });
               if(!_loc4_)
               {
                  §§push(§§pop());
               }
               §§pop().§§slot[3] = §§pop();
               if(_loc5_)
               {
                  §§push(Boolean(connection));
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           §§pop();
                           addr70:
                           §§push(connection.connected);
                           if(!_loc4_)
                           {
                              addr75:
                              §§push(Boolean(§§pop()));
                           }
                        }
                        §§goto(addr75);
                     }
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           callback();
                           addr85:
                        }
                     }
                     else
                     {
                        addEventListener(Event.ENTER_FRAME,checkF);
                     }
                     return;
                  }
                  §§goto(addr75);
               }
               §§goto(addr85);
            }
            §§goto(addr70);
         }
         §§goto(addr33);
      }
      
      public function loopCheck(param1:Boolean, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            var checkF:Function = null;
            if(!_loc4_)
            {
               var Check:Boolean = param1;
               if(_loc5_)
               {
                  §§goto(addr48);
               }
            }
            §§goto(addr54);
         }
         addr48:
         var callback:Function = param2;
         if(!_loc4_)
         {
            addr54:
            §§push(§§newactivation());
            §§push(function(param1:Event):void
            {
               var _loc2_:Boolean = false;
               var _loc3_:Boolean = true;
               if(Check)
               {
                  if(_loc3_)
                  {
                     callback();
                     if(_loc3_)
                     {
                        removeEventListener(Event.ENTER_FRAME,checkF);
                     }
                  }
               }
            });
            if(!_loc4_)
            {
               §§push(§§pop());
            }
            §§pop().§§slot[3] = §§pop();
            if(!_loc5_)
            {
            }
            §§goto(addr68);
         }
         addEventListener(Event.ENTER_FRAME,checkF);
         addr68:
      }
      
      public function adjustScreen(param1:MovieClip, param2:MovieClip, param3:Boolean = false) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc10_:MovieClip = null;
         var _loc11_:* = NaN;
         var _loc4_:Point = param2.localToGlobal(new Point(param1.x,param1.y));
         §§push(stage.stageWidth * 0.5);
         if(!_loc13_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!param2.screenBegin)
         {
            if(_loc12_)
            {
               §§push(0);
               if(!_loc13_)
               {
                  _loc7_ = §§pop();
                  addr64:
                  if(!param2.screenEnd)
                  {
                     addr67:
                     §§push(-param2.width);
                     if(_loc12_)
                     {
                        _loc6_ = §§pop() + stage.stageWidth;
                        if(_loc12_)
                        {
                           addr101:
                           param2.x += (_loc5_ - _loc4_.x) * 0.015;
                           if(param2.x > _loc7_)
                           {
                              addr116:
                              param2.x = _loc7_;
                           }
                           else if(param2.x < _loc6_)
                           {
                              param2.x = _loc6_;
                              if(_loc12_)
                              {
                                 addr130:
                                 if(param2.layerArray)
                                 {
                                    §§goto(addr138);
                                 }
                              }
                              return;
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr116);
                     }
                     else
                     {
                        addr89:
                        _loc6_ = §§pop() + stage.stageWidth;
                     }
                     §§goto(addr101);
                  }
                  else
                  {
                     §§push(param2.screenEnd * param2.scaleX);
                     if(!_loc13_)
                     {
                        §§goto(addr89);
                        §§push(-§§pop());
                     }
                     §§goto(addr89);
                  }
               }
               addr138:
               var _loc8_:int = param2.layerArray.length;
               var _loc9_:int = 0;
               if(!_loc13_)
               {
                  while(_loc9_ < _loc8_)
                  {
                     _loc10_ = param2.layerArray[_loc9_];
                     if(_loc12_)
                     {
                        if(MovieClip(root).layersMults)
                        {
                           if(_loc12_)
                           {
                              addr162:
                              §§push(Number(MovieClip(root).layersMults[_loc9_]));
                              if(!_loc13_)
                              {
                                 _loc11_ = §§pop();
                                 if(_loc13_)
                                 {
                                    continue;
                                 }
                              }
                              else
                              {
                                 addr189:
                                 _loc11_ = §§pop();
                                 if(_loc13_)
                                 {
                                    continue;
                                 }
                              }
                           }
                           _loc10_.x = -param2.x * _loc11_;
                           if(!_loc13_)
                           {
                              _loc9_++;
                           }
                           continue;
                        }
                        §§push(Number(this.layersMults[_loc9_]));
                        §§goto(addr189);
                     }
                     §§goto(addr162);
                  }
               }
               return;
            }
            §§goto(addr67);
         }
         else
         {
            §§push(param2.screenBegin * param2.scaleX);
            if(_loc12_)
            {
               _loc7_ = §§pop();
               §§goto(addr64);
            }
         }
         §§goto(addr89);
      }
      
      public function forLoop(param1:int, param2:int, param3:Function) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc5_)
         {
            while(_loc4_ < param2)
            {
               param3(_loc4_);
               if(!_loc5_)
               {
                  _loc4_++;
               }
            }
         }
      }
      
      public function processArray(param1:Array, param2:Function) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = undefined;
         var _loc3_:int = param1.length - 1;
         var _loc4_:* = 0;
         if(_loc6_)
         {
            while(true)
            {
               §§push(_loc4_);
               if(!_loc7_)
               {
                  §§push(§§pop());
                  if(_loc6_)
                  {
                     §§push(§§pop() + 1);
                     if(!_loc7_)
                     {
                        addr67:
                        _loc4_ = §§pop();
                        §§push(_loc3_);
                     }
                     if(§§pop() >= §§pop())
                     {
                        break;
                     }
                     _loc5_ = param1[_loc4_];
                     if(!_loc7_)
                     {
                        param2(_loc5_);
                     }
                     continue;
                  }
               }
               §§goto(addr67);
            }
         }
      }
      
      public function processVector(param1:Object, param2:Function) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = undefined;
         var _loc3_:int = param1.length - 1;
         var _loc4_:* = 0;
         if(!_loc6_)
         {
            while(true)
            {
               §§push(_loc4_);
               if(!_loc6_)
               {
                  §§push(§§pop());
                  if(!_loc6_)
                  {
                     §§push(§§pop() + 1);
                     if(_loc7_)
                     {
                        addr67:
                        _loc4_ = §§pop();
                        §§push(_loc3_);
                     }
                     if(§§pop() >= §§pop())
                     {
                        break;
                     }
                     _loc5_ = param1[_loc4_];
                     if(!_loc6_)
                     {
                        param2(_loc5_);
                     }
                     continue;
                  }
               }
               §§goto(addr67);
            }
         }
      }
      
      public function processArrayGiveI(param1:Array, param2:Function) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = undefined;
         var _loc3_:int = param1.length;
         var _loc4_:int = 0;
         if(_loc7_)
         {
            while(_loc4_ < _loc3_)
            {
               _loc5_ = param1[_loc4_];
               if(!_loc6_)
               {
                  trace(_loc5_);
                  if(_loc7_)
                  {
                     param2(_loc5_,_loc4_);
                     if(!_loc7_)
                     {
                        continue;
                     }
                  }
               }
               _loc4_++;
            }
         }
      }
      
      public function convertToChat(param1:MovieClip, param2:String = "Public", param3:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var toggleChat:Function = null;
         if(!_loc6_)
         {
            var mc:MovieClip = param1;
            var type:String = param2;
            if(_loc5_)
            {
               var priority:Boolean = param3;
               this.chatRooms.push(mc);
               if(!_loc6_)
               {
                  mc.room = type;
                  if(!_loc6_)
                  {
                     mc.wToggle = true;
                     if(mc.chattxt)
                     {
                        addr58:
                        mc.chattxt.mouseEnabled = false;
                        mc.chattxt.text = "";
                     }
                     §§push(§§newactivation());
                     §§push(function():void
                     {
                        var _loc1_:Boolean = false;
                        var _loc2_:Boolean = true;
                        if(mc.wToggle)
                        {
                           mc.gotoAndStop("Closed");
                           if(!_loc1_)
                           {
                              mc.chattxt.visible = false;
                              mc.chatinput.visible = false;
                              if(_loc2_)
                              {
                                 mc.wToggle = false;
                              }
                              else
                              {
                                 addr44:
                                 mc.wToggle = true;
                                 if(!_loc2_)
                                 {
                                 }
                              }
                              §§goto(addr53);
                           }
                           addr50:
                           Refresh();
                        }
                        else
                        {
                           mc.gotoAndStop(mc.room);
                           mc.chattxt.visible = true;
                           if(!_loc1_)
                           {
                              mc.chatinput.visible = true;
                              if(_loc2_)
                              {
                                 §§goto(addr44);
                              }
                              §§goto(addr50);
                           }
                        }
                        addr53:
                     });
                     if(!_loc6_)
                     {
                        §§push(§§pop());
                     }
                     §§pop().§§slot[4] = §§pop();
                     if(!_loc6_)
                     {
                        this[mc.room + "text"] = "";
                        if(_loc5_)
                        {
                           §§push(§§newactivation());
                           §§push(function():*
                           {
                              var _loc1_:Boolean = false;
                              var _loc2_:Boolean = true;
                              if(mc.wToggle)
                              {
                                 if(_loc2_)
                                 {
                                    mc.chattxt.text = this[mc.room + "text"];
                                    if(_loc1_)
                                    {
                                    }
                                    §§goto(addr25);
                                 }
                                 updateTextScroll(mc.chattxt);
                              }
                              addr25:
                           });
                           if(_loc5_)
                           {
                              §§push(§§pop());
                           }
                           §§pop().§§slot[5] = §§pop();
                           if(_loc5_)
                           {
                              addr96:
                              §§push(§§newactivation());
                              §§push(function(param1:KeyboardEvent):void
                              {
                                 var _loc2_:Boolean = true;
                                 var _loc3_:Boolean = false;
                                 if(param1.keyCode == Keyboard.ENTER)
                                 {
                                    if(_loc2_)
                                    {
                                       if(mc.chatinput.text !== "")
                                       {
                                          if(!_loc2_)
                                          {
                                          }
                                       }
                                       §§goto(addr31);
                                    }
                                    sendChatMsg(mc.chatinput,MovieClip(root)[mc.room + "Channel"]);
                                 }
                                 addr31:
                              });
                              if(!_loc6_)
                              {
                                 §§push(§§pop());
                              }
                              §§pop().§§slot[6] = §§pop();
                              if(!_loc6_)
                              {
                                 §§push(§§newactivation());
                                 §§push(function(param1:KeyboardEvent):void
                                 {
                                    var _loc2_:Boolean = false;
                                    var _loc3_:Boolean = true;
                                    if(param1.keyCode == Keyboard.ENTER)
                                    {
                                       if(!_loc2_)
                                       {
                                          §§push(!mc.wToggle);
                                          if(!_loc2_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(_loc3_)
                                                {
                                                   addr21:
                                                   §§pop();
                                                   §§goto(addr50);
                                                }
                                             }
                                             if(§§pop())
                                             {
                                                if(!_loc2_)
                                                {
                                                   Toggle();
                                                   if(!_loc2_)
                                                   {
                                                      addr38:
                                                      if(stage.focus !== mc.chatinput)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                         }
                                                      }
                                                      §§goto(addr50);
                                                   }
                                                   stage.focus = mc.chatinput;
                                                   addr50:
                                                   if(_loc3_)
                                                   {
                                                      addr24:
                                                      §§push(mc.currentFrameLabel == "Closed");
                                                   }
                                                   return;
                                                }
                                             }
                                             §§goto(addr38);
                                          }
                                          §§goto(addr21);
                                       }
                                       §§goto(addr24);
                                    }
                                    §§goto(addr21);
                                 });
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop());
                                 }
                                 §§pop().§§slot[7] = §§pop();
                                 addr119:
                                 §§push(§§newactivation());
                                 §§push(function(param1:MouseEvent):void
                                 {
                                    var _loc2_:Boolean = false;
                                    var _loc3_:Boolean = true;
                                    trace("SCrollup");
                                    if(!_loc2_)
                                    {
                                       mc.chattxt.scrollV -= 5;
                                    }
                                 });
                                 if(_loc5_)
                                 {
                                    §§push(§§pop());
                                 }
                                 §§pop().§§slot[8] = §§pop();
                              }
                              §§push(§§newactivation());
                              §§push(function(param1:MouseEvent):void
                              {
                                 mc.chattxt.scrollV += 5;
                              });
                              if(!_loc6_)
                              {
                                 §§push(§§pop());
                              }
                              §§pop().§§slot[9] = §§pop();
                              mc.Refresh = Refresh;
                              addr137:
                              mc.toggleChat = toggleChat;
                              §§push(§§newactivation());
                              §§push(function(param1:MouseEvent):void
                              {
                                 Toggle();
                              });
                              if(!_loc6_)
                              {
                                 §§push(§§pop());
                              }
                              §§pop().§§slot[10] = §§pop();
                              if(mc.togglebtn)
                              {
                                 if(!_loc6_)
                                 {
                                    mc.togglebtn.addEventListener(MouseEvent.CLICK,toggleChat);
                                    if(!_loc6_)
                                    {
                                       addr166:
                                       if(mc.chatinput)
                                       {
                                          if(!_loc6_)
                                          {
                                             addr173:
                                             mc.chatinput.addEventListener(KeyboardEvent.KEY_DOWN,sendMsg);
                                             if(_loc5_)
                                             {
                                                addr183:
                                                if(mc.upbtn)
                                                {
                                                   mc.upbtn.addEventListener(MouseEvent.CLICK,scrollup);
                                                }
                                                §§goto(addr195);
                                             }
                                             §§goto(addr206);
                                          }
                                          addr195:
                                          if(mc.downbtn)
                                          {
                                             addr206:
                                             mc.downbtn.addEventListener(MouseEvent.CLICK,scrolldown);
                                          }
                                          if(priority)
                                          {
                                             if(_loc5_)
                                             {
                                                addr220:
                                                stage.addEventListener(KeyboardEvent.KEY_DOWN,enterChat);
                                             }
                                          }
                                          return;
                                       }
                                    }
                                 }
                                 §§goto(addr183);
                              }
                              §§goto(addr166);
                           }
                           §§goto(addr119);
                        }
                     }
                     §§goto(addr220);
                  }
                  §§goto(addr137);
               }
               §§goto(addr173);
            }
            §§goto(addr96);
         }
         §§goto(addr58);
      }
      
      public function sendChatMsg(param1:TextField, param2:Connection) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!param2)
         {
            trace("No chat room connected");
            return;
         }
         §§push(param2 === null);
         if(_loc4_)
         {
            §§push(!§§pop());
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§pop();
                     if(_loc4_)
                     {
                        §§push(param2.connected);
                        if(_loc4_)
                        {
                           §§goto(addr57);
                        }
                        addr57:
                        §§goto(addr56);
                     }
                     §§goto(addr63);
                  }
                  addr56:
                  if(§§pop())
                  {
                     param2.send("Chat",param1.text);
                     addr63:
                     param1.text = "";
                  }
                  return;
               }
            }
         }
         §§goto(addr57);
      }
      
      public function addChatTxt(param1:TextField, param2:String, param3:String = "Public", param4:int = 16777215) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:TextFormat = null;
         if(_loc9_)
         {
            trace("Append " + param2);
         }
         var _loc5_:int = param1.length;
         if(!_loc8_)
         {
            param1.appendText(param2 + "\n");
         }
         var _loc6_:int = param1.length - 1;
         if(!_loc8_)
         {
            if(param4 !== -1)
            {
               if(_loc9_)
               {
                  (_loc7_ = new TextFormat()).color = param4;
                  if(!_loc8_)
                  {
                     param1.setTextFormat(_loc7_,_loc5_,_loc6_);
                     addr72:
                     this.updateScrollbar(MovieClip(root).chatScroll,param1);
                     if(_loc9_)
                     {
                        addr89:
                        this.updateScrollbar(root.mapchatScroll,param1);
                        if(_loc9_)
                        {
                           this.updateScrollbar(root.guildScroll,root.guildtxt);
                           if(!_loc8_)
                           {
                              addr104:
                              this[param3 + "text"] = param1.text;
                           }
                           return;
                        }
                     }
                  }
                  §§goto(addr72);
               }
               §§goto(addr104);
            }
            §§goto(addr72);
         }
         §§goto(addr89);
      }
      
      public function speechMove(param1:MovieClip, param2:String = "") : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = "";
         var _loc4_:Number = param1.height;
         if(_loc6_)
         {
            §§push(param2);
            if(_loc6_)
            {
               if(§§pop() !== "")
               {
                  if(!_loc7_)
                  {
                     §§push(param2);
                     if(_loc6_)
                     {
                        §§push(§§pop());
                        if(_loc6_)
                        {
                           addr36:
                           _loc3_ = §§pop();
                           if(_loc6_)
                           {
                              §§goto(addr57);
                           }
                           else
                           {
                              addr53:
                              §§push(param1.Name);
                           }
                           §§goto(addr57);
                        }
                        _loc3_ = §§pop();
                        §§goto(addr57);
                     }
                     §§goto(addr36);
                  }
                  §§goto(addr53);
               }
               else
               {
                  if(param1.Name)
                  {
                     if(_loc6_)
                     {
                        §§goto(addr53);
                     }
                  }
                  §§goto(addr57);
               }
            }
            §§goto(addr36);
         }
         addr57:
         var _loc5_:MovieClip;
         if(_loc5_ = MovieClip(root)["speech" + _loc3_])
         {
            if(!_loc7_)
            {
               if(param1)
               {
                  if(_loc6_)
                  {
                     _loc5_.x = param1.x;
                     if(_loc6_)
                     {
                        §§goto(addr89);
                     }
                  }
                  §§goto(addr89);
               }
               this.stageBoundary(_loc5_);
            }
            §§goto(addr89);
         }
         addr89:
         _loc5_.y = param1.y - _loc4_;
         if(_loc7_)
         {
         }
      }
      
      public function asAnimatedButton(param1:MovieClip) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var speed:int = 0;
         if(!_loc4_)
         {
            var rollover:* = undefined;
            var rollout:* = undefined;
            var anim:* = undefined;
            if(_loc3_)
            {
               var removed:* = undefined;
               if(_loc3_)
               {
                  var mc:MovieClip = param1;
                  if(_loc3_)
                  {
                     rollover = function(param1:MouseEvent):void
                     {
                        var _loc2_:Boolean = true;
                        var _loc3_:Boolean = false;
                        if(speed == 0)
                        {
                           if(!_loc3_)
                           {
                              mc.addEventListener(Event.ENTER_FRAME,anim);
                              if(_loc2_)
                              {
                                 addr17:
                                 speed = 1;
                              }
                           }
                           return;
                        }
                        §§goto(addr17);
                     };
                     if(!_loc4_)
                     {
                        rollout = function(param1:MouseEvent):void
                        {
                           speed = -1;
                        };
                        if(!_loc4_)
                        {
                           addr71:
                           anim = function(param1:Event):void
                           {
                              var _loc2_:Boolean = false;
                              var _loc3_:Boolean = true;
                              mc.gotoAndStop(mc.currentFrame + speed);
                              if(!_loc2_)
                              {
                                 if(mc.currentFrame <= 1)
                                 {
                                    if(!_loc2_)
                                    {
                                       speed = 0;
                                       if(!_loc2_)
                                       {
                                          addr25:
                                          mc.removeEventListener(Event.ENTER_FRAME,anim);
                                       }
                                    }
                                    §§goto(addr25);
                                 }
                                 return;
                              }
                              §§goto(addr25);
                           };
                           addr75:
                           removed = function(param1:Event):void
                           {
                              var _loc2_:Boolean = false;
                              var _loc3_:Boolean = true;
                              mc.removeEventListener(Event.REMOVED_FROM_STAGE,removed);
                              if(_loc3_)
                              {
                                 mc.removeEventListener(MouseEvent.ROLL_OVER,rollover);
                                 if(_loc3_)
                                 {
                                    addr20:
                                    mc.removeEventListener(MouseEvent.ROLL_OUT,rollout);
                                 }
                                 return;
                              }
                              §§goto(addr20);
                           };
                           if(!_loc4_)
                           {
                              addr82:
                              mc.stop();
                              if(!_loc4_)
                              {
                                 addr88:
                                 speed = 0;
                                 mc.addEventListener(Event.REMOVED_FROM_STAGE,removed);
                                 if(_loc3_)
                                 {
                                    mc.addEventListener(MouseEvent.ROLL_OVER,rollover);
                                 }
                                 mc.addEventListener(MouseEvent.ROLL_OUT,rollout);
                              }
                           }
                        }
                        §§goto(addr82);
                     }
                     return;
                  }
                  §§goto(addr88);
               }
               §§goto(addr75);
            }
            §§goto(addr71);
         }
         §§goto(addr82);
      }
      
      public function asButton(param1:MovieClip) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            var mc:MovieClip = param1;
            if(!_loc3_)
            {
               mc.stop();
               if(!_loc3_)
               {
                  mc.addEventListener(MouseEvent.ROLL_OVER,function(param1:MouseEvent):void
                  {
                     mc.gotoAndStop(2);
                  });
                  if(!_loc3_)
                  {
                     addr55:
                     mc.addEventListener(MouseEvent.ROLL_OUT,function(param1:MouseEvent):void
                     {
                        mc.gotoAndStop(1);
                     });
                     if(!_loc4_)
                     {
                     }
                     §§goto(addr69);
                  }
                  mc.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
                  {
                     mc.gotoAndStop(3);
                  });
               }
               addr69:
               return;
            }
         }
         §§goto(addr55);
      }
      
      public function speech(param1:MovieClip, param2:String, param3:String = "") : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = null;
         if(_loc6_)
         {
            if(param1.Name)
            {
               if(!_loc7_)
               {
                  §§push(param1.Name);
                  if(!_loc7_)
                  {
                     _loc4_ = §§pop();
                     if(!_loc7_)
                     {
                        addr43:
                        if(MovieClip(root)["speech" + _loc4_])
                        {
                           if(_loc6_)
                           {
                              this.remove(MovieClip(root)["speech" + _loc4_]);
                           }
                        }
                     }
                     §§goto(addr43);
                  }
                  else
                  {
                     addr40:
                     _loc4_ = §§pop();
                     if(_loc6_)
                     {
                        §§goto(addr43);
                     }
                  }
               }
               var _loc5_:Class = getDefinitionByName("SpeechBubble") as Class;
               if(_loc6_)
               {
                  MovieClip(root)["speech" + _loc4_] = new _loc5_();
                  if(_loc6_)
                  {
                     §§goto(addr92);
                  }
                  §§goto(addr139);
               }
               addr92:
               MovieClip(root)["speech" + _loc4_].ID = _loc4_;
               MovieClip(root)["speech" + _loc4_].speech = param2;
               MovieClip(root)["speech" + _loc4_].speechtxt.text = param2;
               MovieClip(root)["speech" + _loc4_].created = getTimer();
               if(!_loc7_)
               {
                  addr139:
                  param1.parent.addChild(MovieClip(root)["speech" + _loc4_]);
               }
               return;
            }
            §§push(param3);
            if(_loc6_)
            {
               §§push(§§pop());
            }
            §§goto(addr40);
         }
         §§goto(addr43);
      }
      
      public function addHoldListener(param1:*, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            var f:Function = null;
            if(_loc5_)
            {
               var btn:* = param1;
               var func:Function = param2;
               if(_loc5_)
               {
                  addr44:
                  §§push(§§newactivation());
                  §§push(function(param1:Event):void
                  {
                     func();
                  });
                  if(_loc5_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().§§slot[3] = §§pop();
               }
               btn.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):void
               {
                  addEventListener(Event.ENTER_FRAME,f);
               });
               btn.addEventListener(MouseEvent.MOUSE_UP,function(param1:MouseEvent):void
               {
                  removeEventListener(Event.ENTER_FRAME,f);
               });
               btn.addEventListener(MouseEvent.MOUSE_OUT,function(param1:MouseEvent):void
               {
                  removeEventListener(Event.ENTER_FRAME,f);
               });
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function createDrag(param1:MovieClip, param2:MovieClip, param3:Boolean = true, param4:Rectangle = null, param5:Boolean = true) : *
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var removed:* = undefined;
         var leave:* = undefined;
         if(!_loc8_)
         {
            var drag:* = undefined;
            var sdrag:* = undefined;
            var bg:MovieClip = param1;
            if(!_loc8_)
            {
               var mc:MovieClip = param2;
               var front:Boolean = param3;
               var rec:Rectangle = param4;
               var offscreen:Boolean = param5;
               removed = function(param1:Event):void
               {
                  var _loc2_:Boolean = true;
                  var _loc3_:Boolean = false;
                  bg.removeEventListener(MouseEvent.MOUSE_DOWN,drag);
                  if(!_loc3_)
                  {
                     bg.removeEventListener(MouseEvent.MOUSE_UP,sdrag);
                     if(!_loc3_)
                     {
                        bg.removeEventListener(Event.REMOVED_FROM_STAGE,removed);
                        if(_loc2_)
                        {
                           addr27:
                           trace("Removed drag");
                           if(!_loc3_)
                           {
                              if(!offscreen)
                              {
                                 if(!_loc3_)
                                 {
                                    stage.removeEventListener(Event.MOUSE_LEAVE,leave);
                                 }
                              }
                           }
                        }
                        return;
                     }
                  }
                  §§goto(addr27);
               };
            }
            leave = function(param1:Event):void
            {
               mc.stopDrag();
            };
            drag = function(param1:MouseEvent):void
            {
               var _loc4_:Boolean = true;
               var _loc5_:Boolean = false;
               var _loc2_:* = 0;
               var _loc3_:* = 0;
               mc.startDrag(false,rec);
               if(front)
               {
                  if(_loc4_)
                  {
                     §§push(int(mc.parent.getChildIndex(mc)));
                     if(_loc4_)
                     {
                        _loc2_ = §§pop();
                        if(!_loc5_)
                        {
                           if(mc.parent.mouse)
                           {
                              addr32:
                              §§push(int(mc.parent.getChildIndex(mc.parent.mouse)));
                              if(!_loc5_)
                              {
                                 _loc3_ = §§pop();
                                 if(!_loc5_)
                                 {
                                    §§push(_loc2_);
                                    if(!_loc5_)
                                    {
                                       if(§§pop() < _loc3_ - 1)
                                       {
                                          addr52:
                                          §§push(_loc3_);
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop() - 1);
                                             if(!_loc5_)
                                             {
                                                §§push(int(§§pop()));
                                                if(_loc4_)
                                                {
                                                   addr63:
                                                   _loc2_ = §§pop();
                                                   if(!_loc4_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr72:
                                                   _loc2_ = §§pop();
                                                }
                                                §§goto(addr73);
                                                return;
                                             }
                                             addr71:
                                             §§goto(addr72);
                                             §§push(int(§§pop()));
                                             §§goto(addr72);
                                          }
                                       }
                                    }
                                    §§goto(addr63);
                                 }
                                 §§goto(addr52);
                              }
                              §§goto(addr63);
                           }
                           else
                           {
                              §§push(mc.parent.numChildren - 1);
                           }
                           §§goto(addr71);
                        }
                        §§goto(addr63);
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr32);
               }
               §§goto(addr63);
            };
            sdrag = function(param1:MouseEvent):void
            {
               mc.stopDrag();
            };
            if(_loc7_)
            {
               §§push(!bg);
               if(!_loc8_)
               {
                  if(!§§pop())
                  {
                     if(_loc7_)
                     {
                        §§pop();
                        if(!_loc8_)
                        {
                           addr95:
                           §§push(!mc);
                           if(!_loc8_)
                           {
                              §§goto(addr100);
                           }
                           §§goto(addr139);
                        }
                        §§goto(addr104);
                     }
                  }
               }
               addr100:
               if(§§pop())
               {
                  if(_loc7_)
                  {
                     addr104:
                     return;
                  }
                  addr128:
                  bg.addEventListener(Event.REMOVED_FROM_STAGE,removed);
                  if(_loc7_)
                  {
                     addr139:
                     if(!offscreen)
                     {
                        if(_loc7_)
                        {
                           stage.addEventListener(Event.MOUSE_LEAVE,leave);
                        }
                     }
                  }
               }
               else
               {
                  bg.addEventListener(MouseEvent.MOUSE_DOWN,drag);
                  bg.addEventListener(MouseEvent.MOUSE_UP,sdrag);
                  if(_loc7_)
                  {
                     §§goto(addr128);
                  }
               }
               return;
            }
            §§goto(addr95);
         }
         §§goto(addr139);
      }
      
      public function turnoff(param1:SoundChannel) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            var reduce:* = undefined;
            if(!_loc3_)
            {
               var sound:SoundChannel = param1;
               if(_loc4_)
               {
                  reduce = function(param1:Event):void
                  {
                     var _loc3_:Boolean = false;
                     var _loc4_:Boolean = true;
                     var _loc2_:SoundTransform = sound.soundTransform;
                     if(_loc4_)
                     {
                        _loc2_.volume -= 0.1;
                        if(_loc4_)
                        {
                           sound.soundTransform = _loc2_;
                           if(_loc3_)
                           {
                           }
                           §§goto(addr32);
                        }
                        if(_loc2_.volume <= 0)
                        {
                           if(!_loc3_)
                           {
                              §§goto(addr32);
                           }
                           §§goto(addr37);
                        }
                        §§goto(addr32);
                     }
                     addr32:
                     sound.stop();
                     if(_loc4_)
                     {
                        addr37:
                        removeEventListener(Event.ENTER_FRAME,reduce);
                     }
                  };
                  if(_loc4_)
                  {
                     addr57:
                     var trans:SoundTransform = sound.soundTransform;
                     if(_loc4_)
                     {
                        addr65:
                        addEventListener(Event.ENTER_FRAME,reduce);
                     }
                  }
                  return;
               }
               §§goto(addr57);
            }
            §§goto(addr65);
         }
         §§goto(addr57);
      }
      
      public function checkDepths(param1:MovieClip, param2:Vector.<MovieClip>) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc5_:Point = null;
         var _loc6_:Point = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc12_:MovieClip = null;
         var _loc13_:int = 0;
         var _loc3_:int = param2.length;
         var _loc4_:* = int(param1.parent.getChildIndex(param1));
         var _loc11_:int = 0;
         if(_loc15_)
         {
            while(_loc11_ < _loc3_)
            {
               if(!(param2[_loc11_] is MovieClip))
               {
                  if(_loc14_)
                  {
                     continue;
                  }
               }
               else
               {
                  §§push((_loc12_ = param2[_loc11_]) == param1);
                  §§push((_loc12_ = param2[_loc11_]) == param1);
                  if(_loc15_)
                  {
                     if(!§§pop())
                     {
                        §§pop();
                        if(_loc15_)
                        {
                           §§push(!_loc12_.stage);
                           if(!_loc14_)
                           {
                              addr81:
                              §§push(§§pop());
                              if(_loc15_)
                              {
                                 addr84:
                                 if(!§§pop())
                                 {
                                    §§pop();
                                    §§push(!param1.stage);
                                 }
                                 §§push(§§pop());
                                 if(_loc15_)
                                 {
                                    if(!§§pop())
                                    {
                                       §§pop();
                                       if(_loc15_)
                                       {
                                          addr97:
                                          §§push(param1.x < _loc12_.x - 50);
                                          if(!_loc14_)
                                          {
                                             addr113:
                                             §§push(§§pop());
                                             if(_loc15_)
                                             {
                                                addr117:
                                                if(!§§pop())
                                                {
                                                   §§pop();
                                                   §§push(param1.x > _loc12_.x + _loc12_.width + 50);
                                                }
                                                if(§§pop())
                                                {
                                                   if(!_loc14_)
                                                   {
                                                      addr215:
                                                      _loc11_++;
                                                      continue;
                                                   }
                                                   loop13:
                                                   while(true)
                                                   {
                                                      param1.parent.setChildIndex(param1,_loc4_);
                                                      addr156:
                                                      while(true)
                                                      {
                                                         §§push(param1.y < _loc12_.y);
                                                         if(_loc15_)
                                                         {
                                                            loop1:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc14_)
                                                               {
                                                                  addr166:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop2:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           §§push(_loc4_);
                                                                           if(!_loc14_)
                                                                           {
                                                                              §§push(_loc13_);
                                                                              if(!_loc14_)
                                                                              {
                                                                                 §§push(§§pop() > §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       §§push(_loc4_ - 1);
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       _loc4_ = int(§§pop());
                                                                                       continue loop13;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1.y > _loc12_.y);
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          break loop1;
                                                                                       }
                                                                                       addr214:
                                                                                       loop5:
                                                                                       for(; §§pop(); while(true)
                                                                                       {
                                                                                          continue loop5;
                                                                                       })
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          §§push(1);
                                                                                          if(_loc14_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr215);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(int(§§pop()));
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       break loop2;
                                                                                    }
                                                                                    addr212:
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr213);
                                                                                    }
                                                                                 }
                                                                                 addr185:
                                                                                 addr176:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr185);
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           param1.parent.setChildIndex(param1,_loc4_);
                                                                           §§goto(addr201);
                                                                        }
                                                                        addr167:
                                                                     }
                                                                     §§goto(addr176);
                                                                  }
                                                                  addr166:
                                                               }
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  §§pop();
                                                                  §§goto(addr212);
                                                                  §§push(_loc4_);
                                                               }
                                                               §§goto(addr214);
                                                            }
                                                            addr163:
                                                         }
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   _loc13_ = _loc12_.parent.getChildIndex(_loc12_);
                                                   if(_loc15_)
                                                   {
                                                      §§goto(addr156);
                                                   }
                                                }
                                                §§goto(addr215);
                                             }
                                             §§goto(addr166);
                                          }
                                          §§goto(addr167);
                                       }
                                       §§goto(addr156);
                                    }
                                    §§goto(addr113);
                                 }
                                 §§goto(addr166);
                              }
                              §§goto(addr117);
                           }
                           §§goto(addr163);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr84);
               }
               §§goto(addr215);
            }
         }
      }
   }
}
