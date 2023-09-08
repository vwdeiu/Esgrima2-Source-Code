package com.apieasy2
{
   import com.adobe.images.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   public class ApiEasyy
   {
      
      private static const _encodeChars:Vector.<int>;
      
      private static const _decodeChars:Vector.<int>;
      
      private static var _stage:Stage;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            _encodeChars = InitEncoreChar();
            if(!_loc1_)
            {
               addr25:
               _decodeChars = InitDecodeChar();
            }
            return;
         }
         §§goto(addr25);
      }
      
      private var ae_url;
      
      private var ae_api_key;
      
      private var ae_secret_key;
      
      private var ae_pay_callback:Function;
      
      public function ApiEasyy(param1:String, param2:String, param3:String, param4:Function, param5:Function = null)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var basepath:String = param1;
         var api_key:String = param2;
         if(!_loc8_)
         {
            var secret_key:String = param3;
            if(_loc7_)
            {
               var success_callback:Function = param4;
               var error_callback:Function = param5;
               §§goto(addr37);
            }
            §§goto(addr49);
         }
         addr37:
         if(!_loc8_)
         {
            addr49:
            this.ae_pay_callback = function(param1:String):void
            {
            };
            if(!_loc8_)
            {
               super();
            }
            trace("yes");
         }
         Security.allowDomain("*");
         ExternalInterface.addCallback("apiEasyPay_callback",function(param1:*):*
         {
            ae_pay_callback(param1);
         });
         §§push(this);
         §§push("http://");
         if(!_loc8_)
         {
            §§push(§§pop() + basepath);
            if(!_loc8_)
            {
               §§push(§§pop() + "/api.php");
            }
         }
         §§pop().ae_url = §§pop();
         this.ae_api_key = api_key;
         this.ae_secret_key = secret_key;
      }
      
      private static function shot() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            var screenshotData:BitmapData = null;
            if(!_loc3_)
            {
               screenshotData = new BitmapData(_stage.stageWidth,_stage.stageHeight);
            }
         }
         try
         {
            screenshotData.draw(_stage);
         }
         catch(e:SecurityError)
         {
            if(!_loc3_)
            {
               drawString(screenshotData,"Adobe Flash SecurityError!<br>Unable to create screenshot.");
            }
         }
         return encodeByteArray(PNGEncoder.encode(screenshotData));
      }
      
      private static function drawString(param1:BitmapData, param2:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:TextField = new TextField();
         if(!_loc6_)
         {
            _loc3_.width = 300;
            if(!_loc6_)
            {
               _loc3_.height = 100;
               if(_loc6_)
               {
               }
               §§goto(addr40);
            }
            _loc3_.multiline = true;
            if(!_loc6_)
            {
               §§goto(addr40);
            }
            §§goto(addr56);
         }
         addr40:
         _loc3_.htmlText = "<FONT SIZE=\"20\" COLOR=\"#000000\">" + param2 + "</FONT>";
         if(!_loc6_)
         {
            addr56:
            _loc3_.opaqueBackground = 16777215;
         }
         var _loc4_:BitmapData;
         (_loc4_ = new BitmapData(_loc3_.width,_loc3_.height)).draw(_loc3_);
         var _loc5_:Matrix;
         (_loc5_ = new Matrix()).translate((_stage.stageWidth >> 1) - (_loc4_.width >> 1),(_stage.stageHeight >> 1) - (_loc4_.height >> 1));
         if(!_loc6_)
         {
            param1.draw(_loc4_,_loc5_);
            if(!_loc6_)
            {
               _loc4_.dispose();
            }
         }
      }
      
      private static function encodeByteArray(param1:ByteArray) : String
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:* = uint(0);
         var _loc2_:ByteArray = new ByteArray();
         if(_loc8_)
         {
            _loc2_.length = (2 + param1.length - (param1.length + 2) % 3) * 4 / 3;
         }
         var _loc3_:int = 0;
         var _loc4_:int = param1.length % 3;
         var _loc5_:int = param1.length - _loc4_;
         var _loc7_:int = 0;
         if(!_loc9_)
         {
            while(true)
            {
               §§push(_loc3_);
               if(!_loc9_)
               {
                  §§push(_loc5_);
                  if(!_loc9_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(!_loc9_)
                        {
                           §§push(_loc4_);
                           if(_loc8_)
                           {
                              §§push(1);
                              if(!_loc9_)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    §§push(_loc4_);
                                    if(!_loc9_)
                                    {
                                       addr273:
                                       if(§§pop() == 2)
                                       {
                                          §§goto(addr274);
                                       }
                                    }
                                    break;
                                 }
                                 §§push(uint(param1[int(_loc3_)]));
                                 if(_loc8_)
                                 {
                                    _loc6_ = §§pop();
                                    if(_loc8_)
                                    {
                                       _loc2_[int(_loc7_++)] = _encodeChars[int(_loc6_ >>> 2)];
                                       addr310:
                                       if(_loc8_)
                                       {
                                          _loc2_[int(_loc7_++)] = _encodeChars[int((_loc6_ & 3) << 4)];
                                          addr244:
                                          _loc2_[int(_loc7_++)] = 61;
                                          if(_loc8_)
                                          {
                                             _loc2_[int(_loc7_++)] = 61;
                                             if(!_loc9_)
                                             {
                                                §§goto(addr362);
                                             }
                                          }
                                          addr274:
                                          §§push(param1[int(_loc3_++)] << 8);
                                          if(!_loc9_)
                                          {
                                             §§push(§§pop() | param1[int(_loc3_)]);
                                             break;
                                          }
                                          break;
                                       }
                                       _loc2_[int(_loc7_++)] = _encodeChars[int(_loc6_ >>> 4 & 63)];
                                       _loc2_[int(_loc7_++)] = _encodeChars[int((_loc6_ & 15) << 2)];
                                       if(_loc9_)
                                       {
                                       }
                                       §§goto(addr362);
                                    }
                                    _loc2_[int(_loc7_++)] = 61;
                                    §§goto(addr362);
                                 }
                                 _loc6_ = §§pop();
                                 _loc2_[int(_loc7_++)] = _encodeChars[int(_loc6_ >>> 10)];
                                 §§goto(addr310);
                                 addr362:
                                 return _loc2_.readUTFBytes(_loc2_.length);
                              }
                              §§goto(addr273);
                           }
                           break;
                        }
                        §§goto(addr244);
                     }
                     else
                     {
                        §§push(param1[int(_loc3_++)] << 16);
                        if(!_loc9_)
                        {
                           §§push(§§pop() | param1[int(_loc3_++)] << 8);
                           if(!_loc9_)
                           {
                              addr87:
                              §§push(§§pop() | param1[int(_loc3_++)]);
                           }
                           _loc6_ = uint(§§pop());
                           if(!_loc9_)
                           {
                              _loc2_[int(_loc7_++)] = _encodeChars[int(_loc6_ >>> 18)];
                              if(_loc8_)
                              {
                                 _loc2_[int(_loc7_++)] = _encodeChars[int(_loc6_ >>> 12 & 63)];
                                 if(_loc9_)
                                 {
                                    continue;
                                 }
                                 _loc2_[int(_loc7_++)] = _encodeChars[int(_loc6_ >>> 6 & 63)];
                                 if(_loc9_)
                                 {
                                    continue;
                                 }
                              }
                           }
                           _loc2_[int(_loc7_++)] = _encodeChars[int(_loc6_ & 63)];
                           continue;
                        }
                        §§goto(addr87);
                     }
                  }
                  §§goto(addr273);
               }
               break;
            }
            §§goto(addr294);
            §§push(uint(§§pop()));
         }
         §§goto(addr199);
      }
      
      private static function decode(param1:String) : ByteArray
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         var _loc7_:int = param1.length;
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).writeUTFBytes(param1);
         var _loc9_:int = 0;
         if(_loc10_)
         {
            while(_loc6_ < _loc7_)
            {
               _loc2_ = _decodeChars[int(_loc8_[_loc6_++])];
               if(_loc2_ == -1)
               {
                  break;
               }
               §§push(int(_decodeChars[int(_loc8_[_loc6_++])]));
               if(!_loc11_)
               {
                  _loc3_ = §§pop();
                  if(_loc10_)
                  {
                     if(_loc3_ == -1)
                     {
                        if(!_loc11_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        _loc8_[int(_loc9_++)] = _loc2_ << 2 | (_loc3_ & 48) >> 4;
                        if(_loc11_)
                        {
                           continue;
                        }
                        addr118:
                        if((_loc4_ = _loc8_[int(_loc6_++)]) == 61)
                        {
                           _loc8_.length = _loc9_;
                           if(!_loc11_)
                           {
                              return _loc8_;
                           }
                        }
                        else
                        {
                           if((_loc4_ = _decodeChars[int(_loc4_)]) == -1)
                           {
                              break;
                           }
                           _loc8_[int(_loc9_++)] = (_loc3_ & 15) << 4 | (_loc4_ & 60) >> 2;
                           addr158:
                           if((_loc5_ = int(_loc8_[int(_loc6_++)])) != 61)
                           {
                              §§push(int(_decodeChars[int(_loc5_)]));
                              §§push(int(_decodeChars[int(_loc5_)]));
                              if(_loc10_)
                              {
                                 _loc5_ = §§pop();
                                 §§push(-1);
                              }
                              if(§§pop() == §§pop())
                              {
                                 if(!_loc11_)
                                 {
                                    addr200:
                                    break;
                                 }
                                 §§goto(addr222);
                              }
                              _loc8_[int(_loc9_++)] = (_loc4_ & 3) << 6 | _loc5_;
                              continue;
                           }
                           _loc8_.length = _loc9_;
                           if(_loc10_)
                           {
                              return _loc8_;
                           }
                        }
                        §§goto(addr200);
                     }
                  }
                  §§goto(addr158);
               }
               §§goto(addr118);
            }
         }
         _loc8_.length = _loc9_;
         addr222:
         return _loc8_;
      }
      
      private static function InitEncoreChar() : Vector.<int>
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Vector.<int> = new Vector.<int>(64,true);
         var _loc2_:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
         var _loc3_:int = 0;
         if(!_loc5_)
         {
            while(_loc3_ < 64)
            {
               _loc1_[_loc3_] = _loc2_.charCodeAt(_loc3_);
               if(_loc4_)
               {
                  _loc3_++;
               }
            }
         }
         return _loc1_;
      }
      
      private static function InitDecodeChar() : Vector.<int>
      {
         return new <int>[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,62,-1,-1,-1,63,52,53,54,55,56,57,58,59,60,61,-1,-1,-1,-1,-1,-1,-1,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,-1,-1,-1,-1,-1,-1,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1];
      }
      
      public function login(param1:Object, param2:Function, param3:Function = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            param1.api_key = this.ae_api_key;
            if(!_loc4_)
            {
               this.load_request(this.ae_url,this.ae_secret_key,"login",param1,param2,param3);
            }
         }
      }
      
      public function friends(param1:Object, param2:Function, param3:Function = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.load_request(this.ae_url,this.ae_secret_key,"friends",param1,param2,param3);
         }
      }
      
      public function payment_check(param1:Object, param2:Function, param3:Function = null) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.load_request(this.ae_url,this.ae_secret_key,"payment_check",param1,param2,param3);
         }
      }
      
      public function pay(param1:int, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            ExternalInterface.call("apiEasyPayFlash",param1);
            if(_loc3_)
            {
               addr24:
               this.ae_pay_callback = param2;
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function wall(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            ExternalInterface.call("apiEasyPublish",param1);
         }
      }
      
      public function invite(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            ExternalInterface.call("apiEasyInvite",param1);
         }
      }
      
      public function setheight(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            ExternalInterface.call("apiEasyHeight",param1);
         }
      }
      
      public function initScreenshot(param1:Stage) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            _stage = param1;
            if(!_loc3_)
            {
               addr22:
               if(ExternalInterface.available)
               {
                  if(_loc2_)
                  {
                     ExternalInterface.addCallback("getscreenshot",shot);
                  }
               }
            }
            return;
         }
         §§goto(addr22);
      }
      
      private function load_request(param1:String, param2:String, param3:String, param4:Object, param5:Function, param6:Function = null) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var o:* = undefined;
         var ur:URLRequest = null;
         var ul:URLLoader = null;
         if(_loc11_)
         {
            var ae_url:String = param1;
            var apieasy_key:String = param2;
            if(!_loc10_)
            {
               var action:String = param3;
               addr46:
               var opts:Object = param4;
               if(_loc11_)
               {
                  var success_callback:Function = param5;
                  var error_callback:Function = param6;
                  var uv:URLVariables = new URLVariables();
                  uv.apieasy_key = apieasy_key;
                  §§goto(addr67);
               }
               §§goto(addr139);
            }
            addr67:
            uv.action = action;
            var _loc8_:int = 0;
            if(!_loc10_)
            {
               var _loc9_:* = opts;
               if(_loc11_)
               {
                  for(o in _loc9_)
                  {
                     if(!_loc10_)
                     {
                        uv[o] = opts[o];
                     }
                  }
               }
            }
            ur = new URLRequest();
            if(_loc11_)
            {
               ur.url = ae_url + "?r=" + Math.random();
            }
            ur.method = URLRequestMethod.POST;
            if(_loc11_)
            {
               addr139:
               ur.data = uv;
               if(!_loc10_)
               {
                  ul = new URLLoader();
                  ul.dataFormat = URLLoaderDataFormat.TEXT;
                  if(error_callback !== null)
                  {
                     ul.addEventListener(IOErrorEvent.IO_ERROR,function():void
                     {
                        error_callback("Connection error occured");
                     });
                     ul.addEventListener(SecurityErrorEvent.SECURITY_ERROR,function():void
                     {
                        error_callback("Security error occured");
                     });
                  }
                  ul.addEventListener(Event.COMPLETE,function(param1:Event):void
                  {
                     var _loc4_:Boolean = true;
                     var _loc5_:Boolean = false;
                     var _loc2_:URLLoader = URLLoader(param1.target);
                     var _loc3_:* = JSON.parse(_loc2_.data);
                     if(_loc4_)
                     {
                        if(_loc3_ == null)
                        {
                           if(!_loc5_)
                           {
                              addr24:
                              error_callback("request failed!");
                              if(!_loc4_)
                              {
                              }
                              §§goto(addr37);
                           }
                        }
                        else
                        {
                           success_callback(_loc3_ as Object);
                        }
                        addr37:
                        return;
                     }
                     §§goto(addr24);
                  });
               }
            }
            try
            {
               ul.load(ur);
            }
            catch(error:Error)
            {
               if(_loc11_)
               {
                  error_callback(error);
               }
            }
            return;
         }
         §§goto(addr46);
      }
   }
}
