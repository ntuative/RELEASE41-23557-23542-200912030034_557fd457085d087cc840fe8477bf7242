package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_543:String;
      
      private var var_2191:String;
      
      private var var_2187:int;
      
      private var var_2190:int;
      
      private var var_1177:String;
      
      private var var_1245:String;
      
      private var _name:String;
      
      private var var_757:int;
      
      private var _respectLeft:int;
      
      private var var_2189:int;
      
      private var var_1913:int;
      
      private var var_2188:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2190;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1245;
      }
      
      public function get customData() : String
      {
         return this.var_2191;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_757;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2187;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2188;
      }
      
      public function get figure() : String
      {
         return this.var_543;
      }
      
      public function get respectTotal() : int
      {
         return this.var_1913;
      }
      
      public function get sex() : String
      {
         return this.var_1177;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_543 = param1.readString();
         this.var_1177 = param1.readString();
         this.var_2191 = param1.readString();
         this.var_1245 = param1.readString();
         this.var_2189 = param1.readInteger();
         this.var_2188 = param1.readString();
         this.var_2187 = param1.readInteger();
         this.var_2190 = param1.readInteger();
         this.var_1913 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_757 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2189;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
   }
}
