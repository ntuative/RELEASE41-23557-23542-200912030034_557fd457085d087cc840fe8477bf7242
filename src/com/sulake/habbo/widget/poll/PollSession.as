package com.sulake.habbo.widget.poll
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.events.Event;
   
   public class PollSession implements IDisposable
   {
       
      
      private var var_803:PollWidget;
      
      private var _disposed:Boolean = false;
      
      private var var_885:int = 0;
      
      private var var_157:IPollDialog;
      
      private var var_1056:String = "";
      
      private var var_884:Array;
      
      private var _id:int = -1;
      
      public function PollSession(param1:int, param2:PollWidget)
      {
         super();
         _id = param1;
         var_803 = param2;
      }
      
      public function hideOffer() : void
      {
         if(var_157 is PollOfferDialog)
         {
            if(true)
            {
               var_157.dispose();
            }
            var_157 = null;
         }
      }
      
      public function set numQuestions(param1:int) : void
      {
         var_885 = param1;
      }
      
      public function get questionArray() : Array
      {
         return var_884;
      }
      
      public function hideContent() : void
      {
         if(var_157 is PollContentDialog)
         {
            if(true)
            {
               var_157.dispose();
            }
            var_157 = null;
         }
      }
      
      public function showOffer(param1:String) : void
      {
         hideOffer();
         var_157 = new PollOfferDialog(_id,param1,var_803);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function set questionArray(param1:Array) : void
      {
         var_884 = param1;
      }
      
      public function get numQuestions() : int
      {
         return var_885;
      }
      
      public function showThanks() : void
      {
         var_803.windowManager.alert("${poll_thanks_title}",var_1056,0,function(param1:IAlertDialog, param2:Event):void
         {
            param1.dispose();
         });
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            if(var_157)
            {
               var_157.dispose();
               var_157 = null;
            }
            var_803 = null;
            _disposed = true;
         }
      }
      
      public function showContent(param1:String, param2:String, param3:Array) : void
      {
         hideOffer();
         hideContent();
         var_1056 = param2;
         var_157 = new PollContentDialog(_id,param1,param3,var_803);
      }
   }
}
