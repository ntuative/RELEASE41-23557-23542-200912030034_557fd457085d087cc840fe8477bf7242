package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_903:int = 0;
      
      private var var_1202:int = 0;
      
      private var var_1676:String = "";
      
      private var var_902:int = 0;
      
      private var var_1939:String = "";
      
      private var var_1943:int = 0;
      
      private var var_1351:String = "";
      
      private var var_1940:int = 0;
      
      private var var_1942:int = 0;
      
      private var var_1679:String = "";
      
      private var var_1941:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1940 = param1;
         var_1679 = param2;
         var_1351 = param3;
         var_1676 = param4;
         var_1939 = param5;
         if(param6)
         {
            var_1202 = 1;
         }
         else
         {
            var_1202 = 0;
         }
         var_1943 = param7;
         var_1942 = param8;
         var_902 = param9;
         var_1941 = param10;
         var_903 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1940,var_1679,var_1351,var_1676,var_1939,var_1202,var_1943,var_1942,var_902,var_1941,var_903];
      }
      
      public function dispose() : void
      {
      }
   }
}
