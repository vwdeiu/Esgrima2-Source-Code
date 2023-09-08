package fl.controls
{
   import fl.core.InvalidationType;
   import fl.core.UIComponent;
   import fl.events.ScrollEvent;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.TextEvent;
   
   public class UIScrollBar extends ScrollBar
   {
      
      private static var defaultStyles:Object = {};
       
      
      protected var _scrollTarget:DisplayObject;
      
      protected var inEdit:Boolean = false;
      
      protected var inScroll:Boolean = false;
      
      protected var _targetScrollProperty:String;
      
      protected var _targetMaxScrollProperty:String;
      
      public function UIScrollBar()
      {
         super();
      }
      
      public static function getStyleDefinition() : Object
      {
         return UIComponent.mergeStyles(defaultStyles,ScrollBar.getStyleDefinition());
      }
      
      override public function set minScrollPosition(param1:Number) : void
      {
         super.minScrollPosition = param1 < 0 ? Number(0) : Number(param1);
      }
      
      override public function set maxScrollPosition(param1:Number) : void
      {
         var _loc2_:Number = param1;
         if(_scrollTarget != null)
         {
            _loc2_ = Math.min(_loc2_,_scrollTarget[_targetMaxScrollProperty]);
         }
         super.maxScrollPosition = _loc2_;
      }
      
      public function get scrollTarget() : DisplayObject
      {
         return _scrollTarget;
      }
      
      public function set scrollTarget(param1:DisplayObject) : void
      {
         var target:DisplayObject = param1;
         if(_scrollTarget != null)
         {
            _scrollTarget.removeEventListener(Event.CHANGE,handleTargetChange,false);
            _scrollTarget.removeEventListener(TextEvent.TEXT_INPUT,handleTargetChange,false);
            _scrollTarget.removeEventListener(Event.SCROLL,handleTargetScroll,false);
         }
         _scrollTarget = target;
         var blockProg:String = null;
         var textDir:String = null;
         var hasPixelVS:Boolean = false;
         if(_scrollTarget != null)
         {
            try
            {
               if(_scrollTarget.hasOwnProperty("blockProgression"))
               {
                  blockProg = _scrollTarget["blockProgression"];
               }
               if(_scrollTarget.hasOwnProperty("direction"))
               {
                  textDir = _scrollTarget["direction"];
               }
               if(_scrollTarget.hasOwnProperty("pixelScrollV"))
               {
                  hasPixelVS = true;
               }
            }
            catch(e:Error)
            {
               blockProg = null;
               textDir = null;
            }
         }
         var scrollHoriz:Boolean = this.direction == ScrollBarDirection.HORIZONTAL;
         var rot:Number = Math.abs(this.rotation);
         if(scrollHoriz && (blockProg == "rl" || textDir == "rtl"))
         {
            if(getScaleY() > 0 && rotation == 90)
            {
               x += width;
            }
            setScaleY(-1);
         }
         else if(!scrollHoriz && blockProg == "rl" && textDir == "rtl")
         {
            if(getScaleY() > 0 && rotation != 90)
            {
               y += height;
            }
            setScaleY(-1);
         }
         else
         {
            if(getScaleY() < 0)
            {
               if(scrollHoriz)
               {
                  if(rotation == 90)
                  {
                     x -= width;
                  }
               }
               else if(rotation != 90)
               {
                  y -= height;
               }
            }
            setScaleY(1);
         }
         setTargetScrollProperties(scrollHoriz,blockProg,hasPixelVS);
         if(_scrollTarget != null)
         {
            _scrollTarget.addEventListener(Event.CHANGE,handleTargetChange,false,0,true);
            _scrollTarget.addEventListener(TextEvent.TEXT_INPUT,handleTargetChange,false,0,true);
            _scrollTarget.addEventListener(Event.SCROLL,handleTargetScroll,false,0,true);
         }
         invalidate(InvalidationType.DATA);
      }
      
      public function get scrollTargetName() : String
      {
         return _scrollTarget.name;
      }
      
      public function set scrollTargetName(param1:String) : void
      {
         var target:String = param1;
         try
         {
            scrollTarget = parent.getChildByName(target);
         }
         catch(error:Error)
         {
            throw new Error("ScrollTarget not found, or is not a valid target");
         }
      }
      
      override public function get direction() : String
      {
         return super.direction;
      }
      
      override public function set direction(param1:String) : void
      {
         var _loc2_:DisplayObject = null;
         if(isLivePreview)
         {
            return;
         }
         if(!componentInspectorSetting && _scrollTarget != null)
         {
            _loc2_ = _scrollTarget;
            scrollTarget = null;
         }
         super.direction = param1;
         if(_loc2_ != null)
         {
            scrollTarget = _loc2_;
         }
         else
         {
            updateScrollTargetProperties();
         }
      }
      
      public function update() : void
      {
         inEdit = true;
         updateScrollTargetProperties();
         inEdit = false;
      }
      
      override protected function draw() : void
      {
         if(isInvalid(InvalidationType.DATA))
         {
            updateScrollTargetProperties();
         }
         super.draw();
      }
      
      protected function updateScrollTargetProperties() : void
      {
         var blockProg:String = null;
         var hasPixelVS:Boolean = false;
         var pageSize:Number = NaN;
         var minScroll:Number = NaN;
         var minScrollVValue:* = undefined;
         if(_scrollTarget == null)
         {
            setScrollProperties(pageSize,minScrollPosition,maxScrollPosition);
            scrollPosition = 0;
         }
         else
         {
            blockProg = null;
            hasPixelVS = false;
            try
            {
               if(_scrollTarget.hasOwnProperty("blockProgression"))
               {
                  blockProg = _scrollTarget["blockProgression"];
               }
               if(_scrollTarget.hasOwnProperty("pixelScrollV"))
               {
                  hasPixelVS = true;
               }
            }
            catch(e1:Error)
            {
            }
            setTargetScrollProperties(this.direction == ScrollBarDirection.HORIZONTAL,blockProg,hasPixelVS);
            if(_targetScrollProperty == "scrollH")
            {
               minScroll = 0;
               try
               {
                  if(_scrollTarget.hasOwnProperty("controller") && _scrollTarget["controller"].hasOwnProperty("compositionWidth"))
                  {
                     pageSize = _scrollTarget["controller"]["compositionWidth"];
                  }
                  else
                  {
                     pageSize = _scrollTarget.width;
                  }
               }
               catch(e2:Error)
               {
                  pageSize = _scrollTarget.width;
               }
            }
            else
            {
               try
               {
                  if(blockProg != null)
                  {
                     minScrollVValue = _scrollTarget["pixelMinScrollV"];
                     if(minScrollVValue is int)
                     {
                        minScroll = minScrollVValue;
                     }
                     else
                     {
                        minScroll = 1;
                     }
                  }
                  else
                  {
                     minScroll = 1;
                  }
               }
               catch(e3:Error)
               {
                  minScroll = 1;
               }
               pageSize = 10;
            }
            setScrollProperties(pageSize,minScroll,scrollTarget[_targetMaxScrollProperty]);
            scrollPosition = _scrollTarget[_targetScrollProperty];
         }
      }
      
      override public function setScrollProperties(param1:Number, param2:Number, param3:Number, param4:Number = 0) : void
      {
         var _loc5_:Number = param3;
         var _loc6_:Number = param2 < 0 ? Number(0) : Number(param2);
         if(_scrollTarget != null)
         {
            _loc5_ = Math.min(param3,_scrollTarget[_targetMaxScrollProperty]);
         }
         super.setScrollProperties(param1,_loc6_,_loc5_,param4);
      }
      
      override public function setScrollPosition(param1:Number, param2:Boolean = true) : void
      {
         super.setScrollPosition(param1,param2);
         if(!_scrollTarget)
         {
            inScroll = false;
            return;
         }
         updateTargetScroll();
      }
      
      protected function updateTargetScroll(param1:ScrollEvent = null) : void
      {
         if(inEdit)
         {
            return;
         }
         _scrollTarget[_targetScrollProperty] = scrollPosition;
      }
      
      protected function handleTargetChange(param1:Event) : void
      {
         inEdit = true;
         setScrollPosition(_scrollTarget[_targetScrollProperty],true);
         updateScrollTargetProperties();
         inEdit = false;
      }
      
      protected function handleTargetScroll(param1:Event) : void
      {
         if(inDrag)
         {
            return;
         }
         if(!enabled)
         {
            return;
         }
         inEdit = true;
         updateScrollTargetProperties();
         scrollPosition = _scrollTarget[_targetScrollProperty];
         inEdit = false;
      }
      
      private function setTargetScrollProperties(param1:Boolean, param2:String, param3:Boolean = false) : void
      {
         if(param2 == "rl")
         {
            if(param1)
            {
               _targetScrollProperty = !!param3 ? "pixelScrollV" : "scrollV";
               _targetMaxScrollProperty = !!param3 ? "pixelMaxScrollV" : "maxScrollV";
            }
            else
            {
               _targetScrollProperty = "scrollH";
               _targetMaxScrollProperty = "maxScrollH";
            }
         }
         else if(param1)
         {
            _targetScrollProperty = "scrollH";
            _targetMaxScrollProperty = "maxScrollH";
         }
         else
         {
            _targetScrollProperty = !!param3 ? "pixelScrollV" : "scrollV";
            _targetMaxScrollProperty = !!param3 ? "pixelMaxScrollV" : "maxScrollV";
         }
      }
   }
}
