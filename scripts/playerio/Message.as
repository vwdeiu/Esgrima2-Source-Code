package playerio
{
   import flash.utils.ByteArray;
   
   public interface Message
   {
       
      
      function add(... rest) : void;
      
      function getNumber(param1:int) : Number;
      
      function getInt(param1:int) : int;
      
      function getUInt(param1:int) : uint;
      
      function getString(param1:int) : String;
      
      function getBoolean(param1:int) : Boolean;
      
      function getByteArray(param1:int) : ByteArray;
      
      function get length() : int;
      
      function get type() : String;
      
      function set type(param1:String) : void;
      
      function toString() : String;
   }
}
