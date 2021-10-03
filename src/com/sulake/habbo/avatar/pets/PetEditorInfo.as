package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_1610:Boolean;
      
      private var var_1590:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_1610 = Boolean(parseInt(param1.@club));
         var_1590 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_1610;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1590;
      }
   }
}
