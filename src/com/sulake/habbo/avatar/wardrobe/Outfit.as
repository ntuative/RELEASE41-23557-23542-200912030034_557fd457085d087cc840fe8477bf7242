package com.sulake.habbo.avatar.wardrobe
{
   import com.sulake.habbo.avatar.HabboAvatarEditor;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IOutfit;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import flash.display.BitmapData;
   
   public class Outfit implements IOutfit
   {
       
      
      private var _gender:String;
      
      private var var_543:String;
      
      private var _view:OutfitView;
      
      private var var_1449:IAvatarImage;
      
      private var _controller:HabboAvatarEditor;
      
      private var _image:BitmapData;
      
      public function Outfit(param1:HabboAvatarEditor, param2:String, param3:String)
      {
         super();
         _controller = param1;
         _view = new OutfitView(param1.windowManager,param1.assets,param2 != "");
         switch(param3)
         {
            case FigureData.const_81:
            case "m":
            case "M":
               param3 = "null";
               break;
            case FigureData.const_76:
            case "f":
            case "F":
               param3 = "null";
         }
         var_543 = param2;
         _gender = param3;
         update();
      }
      
      public function get gender() : String
      {
         return _gender;
      }
      
      public function get image() : BitmapData
      {
         if(_image == null)
         {
            return new BitmapData(33,56,false,0);
         }
         return _image;
      }
      
      public function get view() : OutfitView
      {
         return _view;
      }
      
      public function update() : void
      {
         var_1449 = _controller.avatarRenderManager.createAvatarImage(figure,AvatarScaleType.const_95);
         var_1449.setDirection(AvatarSetType.const_38,int(FigureData.const_861));
         _image = var_1449.getImage(AvatarSetType.const_38);
         _view.udpate(_image);
      }
      
      public function get figure() : String
      {
         return var_543;
      }
      
      public function dispose() : void
      {
         var_543 = null;
         _gender = null;
         _image = null;
      }
   }
}
