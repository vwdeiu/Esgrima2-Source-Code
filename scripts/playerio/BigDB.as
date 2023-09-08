package playerio
{
   public interface BigDB
   {
       
      
      function load(param1:String, param2:String, param3:Function = null, param4:Function = null) : void;
      
      function loadKeys(param1:String, param2:Array, param3:Function = null, param4:Function = null) : void;
      
      function loadSingle(param1:String, param2:String, param3:Array, param4:Function = null, param5:Function = null) : void;
      
      function createObject(param1:String, param2:String, param3:Object, param4:Function = null, param5:Function = null) : void;
      
      function loadMyPlayerObject(param1:Function = null, param2:Function = null) : void;
      
      function loadRange(param1:String, param2:String, param3:Array, param4:Object, param5:Object, param6:int, param7:Function = null, param8:Function = null) : void;
      
      function deleteKeys(param1:String, param2:Array, param3:Function = null, param4:Function = null) : void;
      
      function deleteRange(param1:String, param2:String, param3:Array, param4:Object, param5:Object, param6:Function = null, param7:Function = null) : void;
      
      function loadOrCreate(param1:String, param2:String, param3:Function = null, param4:Function = null) : void;
      
      function loadKeysOrCreate(param1:String, param2:Array, param3:Function = null, param4:Function = null) : void;
   }
}
