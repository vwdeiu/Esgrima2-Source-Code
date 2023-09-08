package playerio
{
   public interface Multiplayer
   {
       
      
      function createRoom(param1:String, param2:String, param3:Boolean, param4:Object, param5:Function = null, param6:Function = null) : void;
      
      function createJoinRoom(param1:String, param2:String, param3:Boolean, param4:Object, param5:Object, param6:Function = null, param7:Function = null) : void;
      
      function joinRoom(param1:String, param2:Object, param3:Function = null, param4:Function = null) : void;
      
      function listRooms(param1:String, param2:Object, param3:int, param4:int, param5:Function = null, param6:Function = null) : void;
      
      function set developmentServer(param1:String) : void;
      
      function get developmentServer() : String;
   }
}
