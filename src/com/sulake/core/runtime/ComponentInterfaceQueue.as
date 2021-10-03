package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1107:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_729:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1107 = param1;
         var_729 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_729;
      }
      
      public function get identifier() : IID
      {
         return var_1107;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1107 = null;
            while(false)
            {
               var_729.pop();
            }
            var_729 = null;
         }
      }
   }
}
