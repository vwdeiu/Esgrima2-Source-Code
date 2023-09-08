package playerio
{
   class SimpleGameFS implements GameFS
   {
       
      
      private var gameId:String;
      
      private var wo:Object;
      
      function SimpleGameFS(param1:String, param2:Object)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            if(!_loc3_)
            {
               addr23:
               this.gameId = param1;
               if(_loc4_)
               {
                  this.wo = param2;
               }
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function getURL(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1.substring(0,1) != "/")
            {
               if(_loc3_)
               {
                  §§goto(addr26);
               }
               else
               {
                  addr59:
                  §§push(Boolean(this.wo.wrapper.content));
                  if(_loc3_)
                  {
                     addr67:
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr71);
                        }
                     }
                  }
               }
            }
            else
            {
               §§push(Boolean(this.wo.wrapper));
               if(!_loc2_)
               {
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           §§pop();
                           if(_loc3_)
                           {
                              §§goto(addr59);
                           }
                           §§goto(addr75);
                        }
                        addr71:
                        §§pop();
                        if(_loc3_)
                        {
                           addr75:
                           if(!this.wo.wrapper.content.hasOwnProperty("getURL"))
                           {
                              §§push("http://r.playerio.com/r/");
                              if(_loc3_)
                              {
                                 §§push(this.gameId);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc2_)
                                    {
                                       addr111:
                                       §§push(§§pop() + param1);
                                    }
                                    return §§pop();
                                 }
                              }
                              §§goto(addr111);
                           }
                        }
                        return this.wo.wrapper.content.getURL(this.gameId,param1);
                     }
                  }
                  §§goto(addr67);
               }
            }
            §§goto(addr75);
         }
         addr26:
         throw new Error("GameFS paths must be absolute and start with a slash (/). IE PlayerIO.gameFS(\"[gameid]\").getURL(\"/folder/file.extention\")",0);
      }
   }
}
