package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_673:int = 6;
      
      public static const const_211:int = 5;
      
      public static const const_717:int = 2;
      
      public static const const_277:int = 9;
      
      public static const const_235:int = 4;
      
      public static const const_252:int = 2;
      
      public static const const_613:int = 4;
      
      public static const const_197:int = 8;
      
      public static const const_523:int = 7;
      
      public static const const_258:int = 3;
      
      public static const const_287:int = 1;
      
      public static const const_215:int = 5;
      
      public static const const_464:int = 12;
      
      public static const const_278:int = 1;
      
      public static const const_354:int = 11;
      
      public static const const_594:int = 3;
      
      public static const const_1512:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_389:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_389 = new Array();
         var_389.push(new Tab(_navigator,const_287,const_464,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_357));
         var_389.push(new Tab(_navigator,const_252,const_278,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_357));
         var_389.push(new Tab(_navigator,const_235,const_354,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_676));
         var_389.push(new Tab(_navigator,const_258,const_211,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_357));
         var_389.push(new Tab(_navigator,const_215,const_197,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_611));
         setSelectedTab(const_287);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_389)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_389)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_389)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_235;
      }
      
      public function get tabs() : Array
      {
         return var_389;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
