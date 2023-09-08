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
   
   public dynamic class Kongregate extends MovieClip
   {
       
      
      public var paramObj:Object;
      
      public var apiPath:String;
      
      public var request:URLRequest;
      
      public var loader:Loader;
      
      public function Kongregate()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(!_loc1_)
            {
               addFrameScript(0,this.frame1);
            }
         }
      }
      
      public function loadComplete(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            root.kongregate = param1.target.content;
            if(_loc3_)
            {
               root.kongregate.services.connect();
               if(!_loc2_)
               {
                  this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.loadComplete);
                  if(!_loc3_)
                  {
                  }
                  §§goto(addr54);
               }
               root.removeChild(this);
            }
         }
         addr54:
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.paramObj = LoaderInfo(root.loaderInfo).parameters;
         §§push(this);
         if(!_loc2_)
         {
            §§push(this.paramObj.kongregate_api_path);
            if(!_loc2_)
            {
               §§pop().apiPath = §§pop() || "http://www.kongregate.com/flash/API_AS3_Local.swf";
               Security.allowDomain(this.apiPath);
               this.request = new URLRequest(this.apiPath);
               this.loader = new Loader();
               this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.loadComplete);
               if(!_loc2_)
               {
                  this.loader.load(this.request);
                  this.addChild(this.loader);
               }
               return;
            }
         }
         §§goto(addr41);
      }
   }
}
