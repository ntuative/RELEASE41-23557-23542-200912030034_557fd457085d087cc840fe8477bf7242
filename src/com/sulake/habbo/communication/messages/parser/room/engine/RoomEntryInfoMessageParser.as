package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1777:int;
      
      private var var_371:Boolean;
      
      private var var_1776:Boolean;
      
      private var var_742:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1776 = param1.readBoolean();
         if(var_1776)
         {
            var_1777 = param1.readInteger();
            var_371 = param1.readBoolean();
         }
         else
         {
            var_742 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_742 != null)
         {
            var_742.dispose();
            var_742 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_1777;
      }
      
      public function get owner() : Boolean
      {
         return var_371;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_1776;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_742;
      }
   }
}
