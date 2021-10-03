package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_543:String;
      
      private var var_1247:String;
      
      private var var_1246:String;
      
      private var var_1207:int;
      
      private var _gender:int;
      
      private var var_1245:String;
      
      private var _name:String;
      
      private var var_1174:Boolean;
      
      private var var_664:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this._gender = param1.readInteger();
         this.var_664 = param1.readBoolean();
         this.var_1174 = param1.readBoolean();
         this.var_543 = param1.readString();
         this.var_1207 = param1.readInteger();
         this.var_1246 = param1.readString();
         this.var_1247 = param1.readString();
         this.var_1245 = param1.readString();
      }
      
      public function get gender() : int
      {
         return _gender;
      }
      
      public function get realName() : String
      {
         return var_1245;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1246;
      }
      
      public function get categoryId() : int
      {
         return var_1207;
      }
      
      public function get online() : Boolean
      {
         return var_664;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1174;
      }
      
      public function get lastAccess() : String
      {
         return var_1247;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_543;
      }
   }
}
