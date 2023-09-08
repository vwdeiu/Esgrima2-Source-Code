package playerio
{
   public interface RoomInfo
   {
       
      
      function get id() : String;
      
      function get serverType() : String;
      
      function get roomType() : String;
      
      function get onlineUsers() : int;
      
      function get data() : Object;
      
      function toString() : String;
   }
}
