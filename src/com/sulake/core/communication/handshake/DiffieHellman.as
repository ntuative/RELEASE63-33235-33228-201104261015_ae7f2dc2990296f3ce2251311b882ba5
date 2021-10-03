package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_959:BigInteger;
      
      private var var_2414:BigInteger;
      
      private var var_1886:BigInteger;
      
      private var var_2594:BigInteger;
      
      private var var_1487:BigInteger;
      
      private var var_1887:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1487 = param1;
         this.var_1887 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1487.toString() + ",generator: " + this.var_1887.toString() + ",secret: " + param1);
         this.var_959 = new BigInteger();
         this.var_959.fromRadix(param1,param2);
         this.var_2414 = this.var_1887.modPow(this.var_959,this.var_1487);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1886 = new BigInteger();
         this.var_1886.fromRadix(param1,param2);
         this.var_2594 = this.var_1886.modPow(this.var_959,this.var_1487);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2414.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2594.toRadix(param1);
      }
   }
}
