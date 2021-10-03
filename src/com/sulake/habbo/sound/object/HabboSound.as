package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1025:SoundChannel = null;
      
      private var var_856:Boolean;
      
      private var var_1024:Sound = null;
      
      private var var_599:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_1024 = param1;
         var_1024.addEventListener(Event.COMPLETE,onComplete);
         var_599 = 1;
         var_856 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_856;
      }
      
      public function stop() : Boolean
      {
         var_1025.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_856 = false;
         var_1025 = var_1024.play(0);
         this.volume = var_599;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_599;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_1025.position;
      }
      
      public function get length() : Number
      {
         return var_1024.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_599 = param1;
         if(var_1025 != null)
         {
            var_1025.soundTransform = new SoundTransform(var_599);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_856 = true;
      }
   }
}
