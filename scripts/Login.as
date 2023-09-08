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
   
   public dynamic class Login extends MovieClip
   {
       
      
      public var backbtn:SimpleButton;
      
      public var passtxt:TextField;
      
      public var registerbtn:SimpleButton;
      
      public var confirmbtn:SimpleButton;
      
      public var logintxt:TextField;
      
      public var emailtxt:TextField;
      
      public var usertxt:TextField;
      
      public var loginbtn:SimpleButton;
      
      public var r:String;
      
      public var defaultemail:String;
      
      public function Login()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(!_loc2_)
            {
               addFrameScript(0,this.frame1,1,this.frame2);
            }
         }
      }
      
      public function go2(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.loginbtn.removeEventListener(MouseEvent.CLICK,MovieClip(parent).loginm);
            if(_loc2_)
            {
               this.passtxt.removeEventListener(KeyboardEvent.KEY_DOWN,MovieClip(parent).loginp);
               if(!_loc3_)
               {
                  addr56:
                  this.registerbtn.removeEventListener(MouseEvent.CLICK,this.go2);
                  if(_loc2_)
                  {
                     gotoAndStop(2);
                  }
               }
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function go1(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.backbtn.removeEventListener(MouseEvent.CLICK,this.go1);
         }
         this.usertxt.removeEventListener(FocusEvent.FOCUS_IN,this.focusin);
         if(!_loc3_)
         {
            this.passtxt.removeEventListener(FocusEvent.FOCUS_IN,this.focusin);
            this.emailtxt.removeEventListener(FocusEvent.FOCUS_IN,this.focusin);
            if(!_loc3_)
            {
               this.confirmbtn.removeEventListener(MouseEvent.CLICK,MovieClip(root).register);
               if(_loc2_)
               {
                  addr74:
                  gotoAndStop(1);
               }
            }
            return;
         }
         §§goto(addr74);
      }
      
      public function focusin(param1:FocusEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1.target.removeEventListener(FocusEvent.FOCUS_IN,this.focusin);
            if(_loc3_)
            {
               param1.target.text = "";
               if(_loc3_)
               {
                  if(param1.target.name == "passtxt")
                  {
                     if(_loc2_)
                     {
                     }
                  }
                  §§goto(addr51);
               }
               param1.target.displayAsPassword = true;
            }
         }
         addr51:
      }
      
      function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         stop();
         if(_loc1_)
         {
            root.changeButtonText(this.loginbtn);
            root.changeButtonText(this.registerbtn);
            this.logintxt.text = " ";
            if(_loc1_)
            {
               this.stage.focus = this.logintxt;
               this.logintxt.setSelection(this.logintxt.length,this.logintxt.length);
               this.logintxt.text = "";
               this.loginbtn.tabEnabled = false;
               addr53:
               if(_loc1_)
               {
                  this.registerbtn.tabEnabled = false;
                  if(MovieClip(root).so.data.user)
                  {
                     this.logintxt.text = MovieClip(root).so.data.user;
                     addr87:
                     this.stage.focus = this.passtxt;
                     if(_loc2_)
                     {
                     }
                     §§goto(addr129);
                  }
                  this.loginbtn.addEventListener(MouseEvent.CLICK,MovieClip(parent).loginm);
                  this.passtxt.addEventListener(KeyboardEvent.KEY_DOWN,MovieClip(parent).loginp);
                  if(_loc1_)
                  {
                     this.registerbtn.addEventListener(MouseEvent.CLICK,this.go2);
                     §§goto(addr129);
                  }
                  addr129:
                  return;
               }
            }
            §§goto(addr87);
         }
         §§goto(addr53);
      }
      
      function frame2() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            stop();
            if(_loc2_)
            {
               this.r = "a-zA-Z";
               if(_loc2_)
               {
                  addr29:
                  this.usertxt.text = root.getTxt("Username",this.usertxt);
                  this.passtxt.text = root.getTxt("Password",this.passtxt);
                  this.emailtxt.text = root.getTxt("Email",this.emailtxt);
                  this.usertxt.restrict = this.r;
                  if(_loc2_)
                  {
                     addr68:
                     root.changeButtonText(this.backbtn);
                     if(_loc2_)
                     {
                        root.changeButtonText(this.confirmbtn);
                        if(_loc2_)
                        {
                           addr81:
                           this.defaultemail = this.emailtxt.text;
                           this.backbtn.addEventListener(MouseEvent.CLICK,this.go1);
                           this.usertxt.addEventListener(FocusEvent.FOCUS_IN,this.focusin);
                           this.passtxt.addEventListener(FocusEvent.FOCUS_IN,this.focusin);
                        }
                        this.emailtxt.addEventListener(FocusEvent.FOCUS_IN,this.focusin);
                        this.confirmbtn.addEventListener(MouseEvent.CLICK,MovieClip(root).register);
                        return;
                     }
                  }
                  §§goto(addr81);
               }
               §§goto(addr68);
            }
            §§goto(addr29);
         }
         §§goto(addr81);
      }
   }
}
