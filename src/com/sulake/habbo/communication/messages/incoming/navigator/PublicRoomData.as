package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1924:int;
      
      private var var_2125:String;
      
      private var var_1917:int;
      
      private var _disposed:Boolean;
      
      private var var_2124:int;
      
      private var var_2040:String;
      
      private var var_1193:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_2040 = param1.readString();
         var_1924 = param1.readInteger();
         var_1917 = param1.readInteger();
         var_2125 = param1.readString();
         var_2124 = param1.readInteger();
         var_1193 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_2124;
      }
      
      public function get worldId() : int
      {
         return var_1917;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_2040;
      }
      
      public function get unitPort() : int
      {
         return var_1924;
      }
      
      public function get castLibs() : String
      {
         return var_2125;
      }
      
      public function get nodeId() : int
      {
         return var_1193;
      }
   }
}
