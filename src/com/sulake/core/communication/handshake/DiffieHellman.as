package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1388:BigInteger;
      
      private var var_971:BigInteger;
      
      private var var_1772:BigInteger;
      
      private var var_1389:BigInteger;
      
      private var var_1773:BigInteger;
      
      private var var_1561:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1388 = param1;
         var_1772 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_1773.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1389 = new BigInteger();
         var_1389.fromRadix(param1,param2);
         var_1773 = var_1389.modPow(var_971,var_1388);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1561.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         var_971 = new BigInteger();
         var_971.fromRadix(param1,param2);
         var_1561 = var_1772.modPow(var_971,var_1388);
         return true;
      }
   }
}
