package playerio
{
   import flash.display.Stage;
   
   public interface Client
   {
       
      
      function get connectUserId() : String;
      
      function get partnerPay() : PartnerPay;
      
      function get payVault() : PayVault;
      
      function get gameFS() : GameFS;
      
      function get bigDB() : BigDB;
      
      function get errorLog() : ErrorLog;
      
      function get multiplayer() : Multiplayer;
      
      function get stage() : Stage;
   }
}
