package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct
   {
       
      
      private var var_993:IID;
      
      private var var_406:uint;
      
      private var var_1255:IUnknown;
      
      private var var_1256:String;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_993 = param1;
         var_1256 = getQualifiedClassName(var_993);
         var_1255 = param2;
         var_406 = 0;
      }
      
      public function get iid() : IID
      {
         return var_993;
      }
      
      public function get references() : uint
      {
         return var_406;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_406) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1255;
      }
      
      public function get iis() : String
      {
         return var_1256;
      }
      
      public function reserve() : uint
      {
         return ++var_406;
      }
      
      public function dispose() : void
      {
         var_993 = null;
         var_1256 = null;
         var_1255 = null;
         var_406 = 0;
      }
   }
}
