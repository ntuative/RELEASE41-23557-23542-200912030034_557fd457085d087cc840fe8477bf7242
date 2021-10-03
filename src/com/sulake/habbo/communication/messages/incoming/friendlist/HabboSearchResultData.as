package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2169:Boolean;
      
      private var var_2166:int;
      
      private var var_2167:Boolean;
      
      private var var_1459:String;
      
      private var var_1245:String;
      
      private var var_1706:int;
      
      private var var_1988:String;
      
      private var var_2168:String;
      
      private var var_1989:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1706 = param1.readInteger();
         this.var_1459 = param1.readString();
         this.var_1988 = param1.readString();
         this.var_2169 = param1.readBoolean();
         this.var_2167 = param1.readBoolean();
         param1.readString();
         this.var_2166 = param1.readInteger();
         this.var_1989 = param1.readString();
         this.var_2168 = param1.readString();
         this.var_1245 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1245;
      }
      
      public function get avatarName() : String
      {
         return this.var_1459;
      }
      
      public function get avatarId() : int
      {
         return this.var_1706;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2169;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2168;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1989;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2167;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1988;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2166;
      }
   }
}
