package com.adobe.images
{
   import flash.display.BitmapData;
   import flash.geom.*;
   import flash.utils.*;
   
   public class PNGEncoder
   {
      
      private static var crcTable:Array;
      
      private static var crcTableComputed:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            crcTableComputed = false;
         }
      }
      
      public function PNGEncoder()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function encode(param1:BitmapData) : ByteArray
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:* = uint(0);
         var _loc7_:* = 0;
         var _loc2_:ByteArray = new ByteArray();
         if(!_loc8_)
         {
            _loc2_.writeUnsignedInt(2303741511);
            if(!_loc8_)
            {
               _loc2_.writeUnsignedInt(218765834);
            }
         }
         var _loc3_:ByteArray = new ByteArray();
         if(_loc9_)
         {
            _loc3_.writeInt(param1.width);
            if(!_loc8_)
            {
               _loc3_.writeInt(param1.height);
               if(!_loc8_)
               {
                  _loc3_.writeUnsignedInt(134610944);
                  if(_loc9_)
                  {
                     addr61:
                     _loc3_.writeByte(0);
                     if(_loc9_)
                     {
                        writeChunk(_loc2_,1229472850,_loc3_);
                     }
                  }
                  var _loc4_:ByteArray = new ByteArray();
                  var _loc5_:int = 0;
                  if(_loc9_)
                  {
                     loop0:
                     while(_loc5_ < param1.height)
                     {
                        _loc4_.writeByte(0);
                        if(!_loc8_)
                        {
                           if(!param1.transparent)
                           {
                              if(_loc9_)
                              {
                                 §§push(0);
                                 if(_loc9_)
                                 {
                                    _loc7_ = §§pop();
                                    loop1:
                                    while(true)
                                    {
                                       §§push(_loc7_);
                                       if(!_loc9_)
                                       {
                                          addr144:
                                          _loc7_ = §§pop();
                                          break;
                                       }
                                       addr129:
                                       while(true)
                                       {
                                          _loc7_++;
                                          if(!_loc9_)
                                          {
                                             break loop1;
                                          }
                                          continue loop1;
                                       }
                                    }
                                    loop7:
                                    while(true)
                                    {
                                       §§push(_loc7_);
                                       addr175:
                                       while(§§pop() < param1.width)
                                       {
                                          addr146:
                                          §§push(uint(param1.getPixel32(_loc7_,_loc5_)));
                                          while(true)
                                          {
                                             _loc6_ = §§pop();
                                             if(!_loc8_)
                                             {
                                                _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | _loc6_ >>> 24));
                                                if(_loc9_)
                                                {
                                                   _loc7_++;
                                                   if(_loc8_)
                                                   {
                                                      break;
                                                   }
                                                }
                                             }
                                             continue loop7;
                                             §§goto(addr146);
                                          }
                                          continue loop0;
                                       }
                                       if(_loc9_)
                                       {
                                          addr180:
                                          _loc5_++;
                                       }
                                       continue loop0;
                                    }
                                    addr174:
                                 }
                                 while(§§pop() < param1.width)
                                 {
                                    §§push(uint(param1.getPixel(_loc7_,_loc5_)));
                                    if(!_loc8_)
                                    {
                                       _loc6_ = §§pop();
                                       if(!_loc8_)
                                       {
                                          while(true)
                                          {
                                             _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | 255));
                                          }
                                          addr118:
                                       }
                                       §§goto(addr129);
                                    }
                                    §§goto(addr152);
                                 }
                                 §§goto(addr180);
                              }
                              §§goto(addr118);
                           }
                           else
                           {
                              §§push(0);
                              if(_loc9_)
                              {
                                 §§goto(addr144);
                              }
                           }
                           §§goto(addr175);
                        }
                        §§goto(addr174);
                     }
                     if(_loc9_)
                     {
                        addr195:
                        _loc4_.compress();
                        if(!_loc8_)
                        {
                           writeChunk(_loc2_,1229209940,_loc4_);
                           if(_loc9_)
                           {
                              writeChunk(_loc2_,1229278788,null);
                           }
                        }
                     }
                     return _loc2_;
                  }
                  §§goto(addr195);
               }
            }
         }
         §§goto(addr61);
      }
      
      private static function writeChunk(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc8_:* = uint(0);
         var _loc9_:* = uint(0);
         var _loc10_:* = uint(0);
         if(_loc12_)
         {
            if(!crcTableComputed)
            {
               if(_loc12_)
               {
                  crcTableComputed = true;
                  if(_loc12_)
                  {
                     addr36:
                     crcTable = [];
                     if(!_loc11_)
                     {
                        §§push(0);
                        if(_loc12_)
                        {
                           §§push(uint(§§pop()));
                           if(!_loc11_)
                           {
                              _loc9_ = §§pop();
                              if(_loc12_)
                              {
                                 addr52:
                                 loop0:
                                 while(true)
                                 {
                                    §§push(_loc9_);
                                    if(_loc12_)
                                    {
                                       while(true)
                                       {
                                          if(§§pop() >= 256)
                                          {
                                             addr145:
                                             §§push(uint(0));
                                             break loop0;
                                          }
                                          §§push(_loc9_);
                                          if(_loc11_)
                                          {
                                             continue loop0;
                                          }
                                          _loc8_ = uint(§§pop());
                                          if(!_loc11_)
                                          {
                                             §§push(0);
                                             if(!_loc11_)
                                             {
                                                §§push(uint(§§pop()));
                                                if(_loc12_)
                                                {
                                                   _loc10_ = §§pop();
                                                   loop1:
                                                   while(true)
                                                   {
                                                      §§push(_loc10_);
                                                      §§push(8);
                                                      loop2:
                                                      while(true)
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            if(!_loc11_)
                                                            {
                                                               break;
                                                            }
                                                            addr135:
                                                            §§push(_loc9_ + 1);
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc8_);
                                                            §§push(1);
                                                            if(!_loc12_)
                                                            {
                                                               continue;
                                                            }
                                                            §§push(§§pop() & §§pop());
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc12_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  _loc8_ = uint(uint(uint(3988292384) ^ uint(_loc8_ >>> 1)));
                                                                  if(_loc11_)
                                                                  {
                                                                     addr137:
                                                                     break;
                                                                     addr110:
                                                                  }
                                                                  addr109:
                                                                  §§push(_loc10_);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                     if(!_loc11_)
                                                                     {
                                                                        §§push(uint(§§pop()));
                                                                        while(true)
                                                                        {
                                                                           _loc10_ = §§pop();
                                                                           if(!_loc12_)
                                                                           {
                                                                              break loop2;
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        addr114:
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§push(uint(§§pop()));
                                                                  continue loop0;
                                                               }
                                                               §§push(uint(uint(_loc8_ >>> 1)));
                                                               if(_loc12_)
                                                               {
                                                                  _loc8_ = §§pop();
                                                                  if(_loc12_)
                                                                  {
                                                                     §§goto(addr109);
                                                                  }
                                                                  break loop2;
                                                               }
                                                               §§goto(addr114);
                                                            }
                                                            §§goto(addr135);
                                                         }
                                                         §§goto(addr137);
                                                      }
                                                      addr131:
                                                      crcTable[_loc9_] = _loc8_;
                                                      §§goto(addr135);
                                                   }
                                                }
                                                §§goto(addr110);
                                             }
                                             §§goto(addr78);
                                          }
                                          §§goto(addr131);
                                       }
                                       addr143:
                                    }
                                    break;
                                 }
                                 var _loc4_:* = §§pop();
                                 if(_loc12_)
                                 {
                                    if(param3 != null)
                                    {
                                       if(_loc12_)
                                       {
                                          §§push(uint(param3.length));
                                          if(!_loc11_)
                                          {
                                             _loc4_ = §§pop();
                                             if(!_loc11_)
                                             {
                                                addr164:
                                                param1.writeUnsignedInt(_loc4_);
                                                addr167:
                                                §§push(uint(param1.position));
                                             }
                                             §§goto(addr167);
                                          }
                                          var _loc5_:* = §§pop();
                                          if(_loc12_)
                                          {
                                             param1.writeUnsignedInt(param2);
                                             if(!_loc11_)
                                             {
                                                if(param3 != null)
                                                {
                                                   if(_loc12_)
                                                   {
                                                      addr183:
                                                      param1.writeBytes(param3);
                                                   }
                                                }
                                             }
                                             var _loc6_:uint = param1.position;
                                             if(!_loc11_)
                                             {
                                                param1.position = _loc5_;
                                                if(_loc12_)
                                                {
                                                   _loc8_ = uint(4294967295);
                                                }
                                             }
                                             var _loc7_:int = 0;
                                             if(!_loc11_)
                                             {
                                                while(_loc7_ < _loc6_ - _loc5_)
                                                {
                                                   _loc8_ = uint(uint(crcTable[(_loc8_ ^ param1.readUnsignedByte()) & uint(255)] ^ uint(_loc8_ >>> 8)));
                                                   if(!_loc11_)
                                                   {
                                                      _loc7_++;
                                                   }
                                                }
                                                if(!_loc11_)
                                                {
                                                   §§goto(addr243);
                                                }
                                                §§goto(addr259);
                                             }
                                             addr243:
                                             _loc8_ = uint(uint(_loc8_ ^ uint(4294967295)));
                                             if(!_loc11_)
                                             {
                                                param1.position = _loc6_;
                                                if(!_loc11_)
                                                {
                                                   addr259:
                                                   param1.writeUnsignedInt(_loc8_);
                                                }
                                             }
                                             return;
                                          }
                                          §§goto(addr183);
                                       }
                                       §§goto(addr167);
                                    }
                                 }
                                 §§goto(addr164);
                              }
                              §§goto(addr145);
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr145);
                     }
                  }
                  §§goto(addr52);
               }
               §§goto(addr36);
            }
         }
         §§goto(addr145);
      }
   }
}
