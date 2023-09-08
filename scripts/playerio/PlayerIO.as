package playerio
{
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   
   public final class PlayerIO
   {
      
      private static var wrapper:Loader;
      
      private static var queue:Array;
      
      private static var apiError:PlayerIOError;
      
      private static var wo:Object;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            queue = [];
            if(_loc2_)
            {
               wo = {};
            }
         }
      }
      
      public function PlayerIO()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
         throw new Error("You cannot create an instance of the PlayerIO class!");
      }
      
      public static function connect(param1:Stage, param2:String, param3:String, param4:String, param5:String, param6:String, param7:Function, param8:Function = null) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_)
         {
            proxy("connect",arguments);
         }
      }
      
      public static function get quickConnect() : QuickConnect
      {
         return new QuickConnect(proxy);
      }
      
      public static function gameFS(param1:String) : GameFS
      {
         return new SimpleGameFS(param1,wo);
      }
      
      public static function showLogo(param1:Stage, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            proxy("showLogo",arguments);
         }
      }
      
      private static function proxy(param1:String, param2:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var api:* = undefined;
         if(!_loc5_)
         {
            var path:Array = null;
            if(_loc6_)
            {
               var target:String = param1;
               if(!_loc5_)
               {
                  addr39:
                  var args:Object = param2;
                  if(apiError)
                  {
                     if(_loc6_)
                     {
                        throwError(apiError,args[args.callee.length - 1]);
                        if(_loc6_)
                        {
                           addr177:
                           if(!wrapper)
                           {
                              if(_loc6_)
                              {
                                 loadAPI();
                              }
                           }
                        }
                        else
                        {
                           addr72:
                           if(wrapper.content)
                           {
                              try
                              {
                                 addr76:
                                 api = wrapper.content;
                                 if(_loc6_)
                                 {
                                    path = target.split(".");
                                    if(!_loc5_)
                                    {
                                       while(path.length > 1)
                                       {
                                          api = api[path.shift()];
                                       }
                                       if(!_loc5_)
                                       {
                                          api[path[0]].apply(null,args);
                                       }
                                    }
                                 }
                              }
                              catch(e:Error)
                              {
                                 if(!_loc5_)
                                 {
                                    throwError(new PlayerIOError(e.message,e.errorID),args[args.callee.length - 1]);
                                 }
                              }
                              §§goto(addr177);
                           }
                           else
                           {
                              queue.push(function():void
                              {
                                 args.callee.apply(null,args);
                              });
                              if(!_loc5_)
                              {
                                 §§goto(addr177);
                              }
                           }
                        }
                        return;
                     }
                     §§goto(addr72);
                  }
                  else
                  {
                     §§push(Boolean(wrapper));
                     if(_loc6_)
                     {
                        if(§§pop())
                        {
                           if(!_loc5_)
                           {
                              addr69:
                              §§pop();
                              if(_loc6_)
                              {
                                 §§goto(addr72);
                              }
                              §§goto(addr76);
                           }
                        }
                        §§goto(addr72);
                     }
                     §§goto(addr69);
                  }
               }
               §§goto(addr72);
            }
         }
         §§goto(addr39);
      }
      
      private static function loadAPI() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var loader:URLLoader = null;
         wrapper = new Loader();
         loader = new URLLoader();
         loader.dataFormat = URLLoaderDataFormat.BINARY;
         loader.addEventListener(Event.COMPLETE,function(param1:Event):void
         {
            var _loc2_:Boolean = true;
            var _loc3_:Boolean = false;
            wrapper.contentLoaderInfo.addEventListener(Event.COMPLETE,emptyQueue);
            if(_loc2_)
            {
               wrapper.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,handleLoadError);
               if(_loc2_)
               {
                  wrapper.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,handleLoadError);
                  if(_loc2_)
                  {
                     addr30:
                     wrapper.loadBytes(loader.data,new LoaderContext(false,ApplicationDomain.currentDomain));
                     if(_loc2_)
                     {
                        wo.wrapper = wrapper;
                     }
                  }
                  return;
               }
            }
            §§goto(addr30);
         });
         loader.addEventListener(IOErrorEvent.IO_ERROR,handleLoadError);
         if(_loc2_)
         {
            loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,handleLoadError);
            loader.load(new URLRequest("http://api.playerio.com/flashbridge/1"));
         }
      }
      
      private static function handleLoadError(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            apiError = new PlayerIOError("Unable to connect to the API due to " + param1.type + ". Please verify that your internet connection is working!",0);
            if(_loc2_)
            {
               addr31:
               emptyQueue();
            }
            return;
         }
         §§goto(addr31);
      }
      
      private static function emptyQueue(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            while(queue.length)
            {
               queue.shift()();
            }
         }
      }
      
      private static function throwError(param1:PlayerIOError, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param2);
            if(_loc4_)
            {
               if(§§pop() == null)
               {
                  throw PlayerIOError;
               }
               if(_loc4_)
               {
                  §§goto(addr34);
               }
               §§goto(addr40);
            }
            addr34:
            param2(param1);
            §§goto(addr33);
         }
         addr33:
         if(!_loc3_)
         {
            addr40:
         }
      }
   }
}
