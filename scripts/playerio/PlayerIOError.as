package playerio
{
   public class PlayerIOError extends Error
   {
      
      public static const UnsupportedMethod:PlayerIOError;
      
      public static const GeneralError:PlayerIOError;
      
      public static const InternalError:PlayerIOError;
      
      public static const AccessDenied:PlayerIOError;
      
      public static const InvalidMessageFormat:PlayerIOError;
      
      public static const MissingValue:PlayerIOError;
      
      public static const GameRequired:PlayerIOError;
      
      public static const ExternalError:PlayerIOError;
      
      public static const ArgumentOutOfRange:PlayerIOError;
      
      public static const GameDisabled:PlayerIOError;
      
      public static const UnknownGame:PlayerIOError;
      
      public static const UnknownConnection:PlayerIOError;
      
      public static const InvalidAuth:PlayerIOError;
      
      public static const NoServersAvailable:PlayerIOError;
      
      public static const RoomDataTooLarge:PlayerIOError;
      
      public static const RoomAlreadyExists:PlayerIOError;
      
      public static const UnknownRoomType:PlayerIOError;
      
      public static const UnknownRoom:PlayerIOError;
      
      public static const MissingRoomId:PlayerIOError;
      
      public static const RoomIsFull:PlayerIOError;
      
      public static const NotASearchColumn:PlayerIOError;
      
      public static const QuickConnectMethodNotEnabled:PlayerIOError;
      
      public static const UnknownUser:PlayerIOError;
      
      public static const InvalidPassword:PlayerIOError;
      
      public static const InvalidRegistrationData:PlayerIOError;
      
      public static const InvalidBigDBKey:PlayerIOError;
      
      public static const BigDBObjectTooLarge:PlayerIOError;
      
      public static const BigDBObjectDoesNotExist:PlayerIOError;
      
      public static const UnknownTable:PlayerIOError;
      
      public static const UnknownIndex:PlayerIOError;
      
      public static const InvalidIndexValue:PlayerIOError;
      
      public static const NotObjectCreator:PlayerIOError;
      
      public static const KeyAlreadyUsed:PlayerIOError;
      
      public static const StaleVersion:PlayerIOError;
      
      public static const CircularReference:PlayerIOError;
      
      public static const HeartbeatFailed:PlayerIOError;
      
      public static const InvalidGameCode:PlayerIOError;
      
      public static const VaultNotLoaded:PlayerIOError;
      
      public static const UnknownPayVaultProvider:PlayerIOError;
      
      public static const DirectPurchaseNotSupportedByProvider:PlayerIOError;
      
      public static const BuyingCoinsNotSupportedByProvider:PlayerIOError;
      
      public static const NotEnoughCoins:PlayerIOError;
      
      public static const ItemNotInVault:PlayerIOError;
      
      public static const InvalidPurchaseArguments:PlayerIOError;
      
      public static const InvalidPayVaultProviderSetup:PlayerIOError;
      
      public static const UnknownPartnerPayAction:PlayerIOError;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            UnsupportedMethod = new PlayerIOError("The method requested is not supported",0);
            if(_loc1_)
            {
               GeneralError = new PlayerIOError("A general error occured",1);
               InternalError = new PlayerIOError("An unexpected error occured inside the Player.IO webservice. Please try again.",2);
               AccessDenied = new PlayerIOError("Access is denied",3);
               if(!_loc2_)
               {
                  §§goto(addr46);
               }
               §§goto(addr333);
            }
            addr46:
            InvalidMessageFormat = new PlayerIOError("The message is malformatted",4);
            if(!_loc2_)
            {
               MissingValue = new PlayerIOError("A value is missing",5);
               if(_loc1_)
               {
                  GameRequired = new PlayerIOError("A game is required to do this action",6);
                  if(_loc1_)
                  {
                     ExternalError = new PlayerIOError("An error occurred while contacting an external service",7);
                     if(_loc1_)
                     {
                        ArgumentOutOfRange = new PlayerIOError("The given argument value is outside the range of allowed values.",8);
                        if(!_loc2_)
                        {
                           GameDisabled = new PlayerIOError("The game has been disabled, most likely because of missing payment.",9);
                           UnknownGame = new PlayerIOError("The game requested is not known by the server",10);
                           UnknownConnection = new PlayerIOError("The connection requested is not known by the server",11);
                           InvalidAuth = new PlayerIOError("The auth given is invalid or malformatted",12);
                           if(_loc1_)
                           {
                              NoServersAvailable = new PlayerIOError("There is no server in any of the selected server clusters for the game that are eligible to start a new room in (they\'re all at full capacity or there are no servers in any of the clusters). Either change the selected clusters for your game in the admin panel, try again later or start some more servers for one of your clusters.",13);
                              RoomDataTooLarge = new PlayerIOError("The room data for the room was over the allowed size limit",14);
                           }
                           RoomAlreadyExists = new PlayerIOError("You are unable to create room because there is already a room with the specified id",15);
                           if(!_loc2_)
                           {
                              UnknownRoomType = new PlayerIOError("The game you\'re connected to does not have a room type with the specified name",16);
                              UnknownRoom = new PlayerIOError("There is no room running with that id",17);
                              if(_loc1_)
                              {
                                 MissingRoomId = new PlayerIOError("You can\'t join the room when the RoomID is null or the empty string",18);
                                 if(!_loc2_)
                                 {
                                    RoomIsFull = new PlayerIOError("The room already has the maxmium amount of users in it.",19);
                                    if(_loc1_)
                                    {
                                       NotASearchColumn = new PlayerIOError("The key you specified is not set as searchable. You can change the searchable keys in the admin panel for the server type",20);
                                       if(_loc1_)
                                       {
                                          QuickConnectMethodNotEnabled = new PlayerIOError("The QuickConnect method (simple, facebook, kongregate...) is not enabled for the game. You can enable the various methods in the admin panel for the game",21);
                                          addr190:
                                          UnknownUser = new PlayerIOError("The user is unknown",22);
                                          InvalidPassword = new PlayerIOError("The password supplied is incorrect",23);
                                          addr202:
                                          InvalidRegistrationData = new PlayerIOError("The supplied data is incorrect",24);
                                          InvalidBigDBKey = new PlayerIOError("The key given for the BigDB object is not a valid BigDB key. BigDB keys must be between 1 and 50 word characters (no spaces).",25);
                                          BigDBObjectTooLarge = new PlayerIOError("The object exceeds the maximum allowed size for BigDB objects.",26);
                                          if(!_loc2_)
                                          {
                                             BigDBObjectDoesNotExist = new PlayerIOError("Could not locate the database object.",27);
                                             if(!_loc2_)
                                             {
                                                UnknownTable = new PlayerIOError("The specified table does not exist.",28);
                                                if(_loc1_)
                                                {
                                                   UnknownIndex = new PlayerIOError("The specified index does not exist.",29);
                                                   InvalidIndexValue = new PlayerIOError("The value given for the index, does not match the expeceded type.",30);
                                                   if(!_loc2_)
                                                   {
                                                      addr253:
                                                      NotObjectCreator = new PlayerIOError("The operation was aborted because the user attempting the operation was not the original creator of the object accessed.",31);
                                                      if(_loc1_)
                                                      {
                                                         KeyAlreadyUsed = new PlayerIOError("The key is in use by another database object",32);
                                                         addr267:
                                                         StaleVersion = new PlayerIOError("BigDB object could not be saved using optimistic locks as it\'s out of date.",33);
                                                         if(_loc1_)
                                                         {
                                                            CircularReference = new PlayerIOError("Cannot create circular references inside database objects",34);
                                                            if(!_loc2_)
                                                            {
                                                               HeartbeatFailed = new PlayerIOError("The server could not complete the heartbeat",40);
                                                               if(!_loc2_)
                                                               {
                                                                  InvalidGameCode = new PlayerIOError("The game code is invalid",41);
                                                                  VaultNotLoaded = new PlayerIOError("Cannot access coins or items before vault has been loaded. Please refresh the vault first.",50);
                                                                  if(!_loc2_)
                                                                  {
                                                                     addr307:
                                                                     UnknownPayVaultProvider = new PlayerIOError("There is no PayVault provider with the specified id",51);
                                                                     if(!_loc2_)
                                                                     {
                                                                        addr316:
                                                                        DirectPurchaseNotSupportedByProvider = new PlayerIOError("The specified PayVault provider does not support direct purchase",52);
                                                                        if(_loc2_)
                                                                        {
                                                                        }
                                                                        §§goto(addr379);
                                                                     }
                                                                     §§goto(addr373);
                                                                  }
                                                                  BuyingCoinsNotSupportedByProvider = new PlayerIOError("The specified PayVault provider does not support buying coins",54);
                                                                  if(_loc1_)
                                                                  {
                                                                     addr333:
                                                                     NotEnoughCoins = new PlayerIOError("The user does not have enough coins in the PayVault to complete the purchase or debit.",55);
                                                                     ItemNotInVault = new PlayerIOError("The item does not exist in the vault.",56);
                                                                     if(_loc2_)
                                                                     {
                                                                     }
                                                                     §§goto(addr373);
                                                                  }
                                                                  InvalidPurchaseArguments = new PlayerIOError("The chosen provider rejected one or more of the purchase arguments",57);
                                                                  if(_loc1_)
                                                                  {
                                                                     §§goto(addr364);
                                                                  }
                                                                  §§goto(addr373);
                                                               }
                                                            }
                                                            §§goto(addr316);
                                                         }
                                                         §§goto(addr307);
                                                      }
                                                      §§goto(addr267);
                                                   }
                                                   §§goto(addr316);
                                                }
                                                §§goto(addr307);
                                             }
                                             §§goto(addr364);
                                          }
                                          §§goto(addr253);
                                       }
                                       §§goto(addr267);
                                    }
                                 }
                                 §§goto(addr202);
                              }
                              §§goto(addr316);
                           }
                           §§goto(addr202);
                        }
                        §§goto(addr190);
                     }
                  }
                  §§goto(addr333);
               }
               §§goto(addr190);
            }
            addr364:
            InvalidPayVaultProviderSetup = new PlayerIOError("The chosen provider is not configured correctly in the admin panel",58);
            if(!_loc2_)
            {
               addr373:
               UnknownPartnerPayAction = new PlayerIOError("Unable to locate the custom PartnerPay action with the given key",70);
               §§goto(addr379);
            }
            addr379:
            return;
         }
         §§goto(addr333);
      }
      
      protected var _type:PlayerIOError;
      
      public function PlayerIOError(param1:String, param2:int)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this._type = GeneralError;
            if(_loc4_)
            {
               super(param1,param2);
            }
         }
      }
      
      public function get type() : PlayerIOError
      {
         return this._type;
      }
   }
}
