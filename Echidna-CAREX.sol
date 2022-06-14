// SPDX-License-Identifier: UNLICENSED



/***************************************************
███████╗ ██████╗██╗  ██╗██╗██████╗ ███╗   ██╗ █████╗ 
██╔════╝██╔════╝██║  ██║██║██╔══██╗████╗  ██║██╔══██╗
█████╗  ██║     ███████║██║██║  ██║██╔██╗ ██║███████║
██╔══╝  ██║     ██╔══██║██║██║  ██║██║╚██╗██║██╔══██║
███████╗╚██████╗██║  ██║██║██████╔╝██║ ╚████║██║  ██║
╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═════╝ ╚═╝  ╚═══╝╚═╝  ╚═╝
*****************************************************/   



pragma solidity ^0.8.1;

import "ABDKMath64x64.sol";

contract Test {

  // ****************************************************
  // ****💀  ATTENTION: TEST AREA IS NOT ENTERED  💀***** 
  // ****************************************************

  // Fuzzing Group 1 variables
  // max and min value for uint and uint types 
  uint256 constant private MAX256_UINT_TYPE = type(uint256).max;
  uint256 constant private  MIN256_UINT_TYPE = type(uint256).min;
  int256 constant private  MAX256_INT_TYPE = type(int256).max;
  int256 constant private  MIN256_INT_TYPE = type(int256).min;

  int128 constant private  MAX128_INT_TYPE = type(int128).max;
  int128 constant private  MIN128_INT_TYPE = type(int128).min;
  uint128 constant private  MAX128_UINT_TYPE = type(uint128).max;
  uint128 constant private  MIN128_UINT_TYPE = type(uint128).min;

  int64 constant private  MAX64_INT_TYPE = type(int64).max;
  int64 constant private  MIN64_INT_TYPE = type(int64).min;
  uint64 constant private  MAX64_UINT_TYPE = type(uint64).max;
  uint64 constant private  MIN64_UINT_TYPE = type(uint64).min;

  // Fuzzing Group 2 variables
  int128 private fromInt_value;
  int64 private toInt_value;
  int128 private fromUInt_value;
  uint64 private toUInt_value;
  int128 private from128x128_value;
  int256 private to128x128_value;

 

  // ****************************************************
  // *************💀  FUZZING GROUP 1  💀**************** 
  // ****************************************************

  // Fuzzing Group 1
  // Fuzzing Scope : Function of argument value and return value control
  // Fuzzing Detail: Fuzzing to between min and max values 
   function fromInt_test(int256 x) public {
    if (x  >= MIN256_INT_TYPE && x <= MAX256_INT_TYPE ){
    assert(ABDKMath64x64.fromInt(x) >= MIN128_INT_TYPE && ABDKMath64x64.fromInt(x) <= MAX128_INT_TYPE );
    }
   }

  // Fuzzing Group 1
  // Fuzzing Scope : Function of argument value and return value control
  // Fuzzing Detail: Fuzzing to between min and max values 
   function toInt_test(int128 x) public {
    if (x  >= MIN128_INT_TYPE && x <= MAX128_INT_TYPE ){
    assert(ABDKMath64x64.toInt(x) >= MIN64_INT_TYPE && ABDKMath64x64.toInt(x) <= MAX64_INT_TYPE );
    }
   }
 
  // Fuzzing Group 1
  // Fuzzing Scope : Function of argument value and return value control
  // Fuzzing Detail: Fuzzing to between min and max values 
   function fromUInt_test(uint256 x) public {
    if (x  >= MIN256_UINT_TYPE && x <= MAX256_UINT_TYPE ){
    assert(ABDKMath64x64.fromUInt(x) >= MIN128_INT_TYPE && ABDKMath64x64.fromUInt(x) <= MAX128_INT_TYPE );
    }
   }

  // Fuzzing Group 1
  // Fuzzing Scope : Function of argument value and return value control
  // Fuzzing Detail: Fuzzing to between min and max values 
   function toUInt_test(int128 x) public {
    if (x  >= MIN128_INT_TYPE && x <= MAX128_INT_TYPE ){
    assert(ABDKMath64x64.toUInt(x) >= MIN64_UINT_TYPE && ABDKMath64x64.toUInt(x) <= MAX64_UINT_TYPE );
    }
   }

  // Fuzzing Group 1
  // Fuzzing Scope : Function of argument value and return value control
  // Fuzzing Detail: Fuzzing to between min and max values 
   function from128x128_test(int256 x) public {
    if (x  >= MIN256_INT_TYPE && x <= MAX256_INT_TYPE ){
    assert(ABDKMath64x64.from128x128(x) >= MIN128_INT_TYPE && ABDKMath64x64.from128x128(x) <= MAX128_INT_TYPE );
    }
   }

  // Fuzzing Group 1
  // Fuzzing Scope : Function of argument value and return value control
  // Fuzzing Detail: Fuzzing to between min and max values 
   function to128x128_test(int128 x) public {
    if (x  >= MIN128_INT_TYPE && x <= MAX128_INT_TYPE ){
    assert(ABDKMath64x64.to128x128(x) >= MIN256_INT_TYPE && ABDKMath64x64.to128x128(x) <= MAX256_INT_TYPE );
    }
   }

  // Fuzzing Group 1
  // Fuzzing Scope : Function of arguments values and return value control
  // Fuzzing Detail: Fuzzing to between min and max values 
   function add_test(int128 x, int128 y) public {
    if (x  >= MIN128_INT_TYPE && x <= MAX128_INT_TYPE && y  >= MIN128_INT_TYPE && y <= MAX128_INT_TYPE){
    assert(ABDKMath64x64.add(x,y) >= MIN128_INT_TYPE && ABDKMath64x64.add(x,y) <= MAX128_INT_TYPE );
    }
   }

  // Fuzzing Group 1
  // Fuzzing Scope : Function of arguments values and return value control
  // Fuzzing Detail: Fuzzing to between min and max values 
   function sub_test(int128 x, int128 y) public {
    if (x  >= MIN128_INT_TYPE && x <= MAX128_INT_TYPE && y  >= MIN128_INT_TYPE && y <= MAX128_INT_TYPE){
    assert(ABDKMath64x64.sub(x,y) >= MIN128_INT_TYPE && ABDKMath64x64.sub(x,y) <= MAX128_INT_TYPE );
    }
   }

  // Fuzzing Group 1
  // Fuzzing Scope : Function of arguments values and return value control
  // Fuzzing Detail: Fuzzing to between min and max values 
   function mul_test(int128 x, int128 y) public {
    if (x  >= MIN128_INT_TYPE && x <= MAX128_INT_TYPE && y  >= MIN128_INT_TYPE && y <= MAX128_INT_TYPE){
    assert(ABDKMath64x64.mul(x,y) >= MIN128_INT_TYPE && ABDKMath64x64.mul(x,y) <= MAX128_INT_TYPE );
    }
   }

  // Fuzzing Group 1
  // Fuzzing Scope : Function of arguments values and return value control
  // Fuzzing Detail: Fuzzing to between min and max values 
   function muli_test(int128 x, int256 y) public {
    if (x  >= MIN128_INT_TYPE && x <= MAX128_INT_TYPE && y  >= MIN256_INT_TYPE && y <= MAX256_INT_TYPE){
    assert(ABDKMath64x64.muli(x,y) >= MIN256_INT_TYPE && ABDKMath64x64.muli(x,y) <= MAX256_INT_TYPE );
    }
   }

  // Fuzzing Group 1
  // Fuzzing Scope : Function of arguments values and return value control
  // Fuzzing Detail: Fuzzing to between min and max values 
   function mulu_test(int128 x, uint256 y) public {
    if (x  >= MIN128_INT_TYPE && x <= MAX128_INT_TYPE && y  >= MIN256_UINT_TYPE && y <= MAX256_UINT_TYPE){
    assert(ABDKMath64x64.mulu(x,y) >= MIN256_UINT_TYPE && ABDKMath64x64.mulu(x,y) <= MAX256_UINT_TYPE );
    }
   }

  // Fuzzing Group 1
  // Fuzzing Scope : Function of arguments values and return value control
  // Fuzzing Detail: Fuzzing to between min and max values 
   function div_test(int128 x, int128 y) public {
    if (x  >= MIN128_INT_TYPE && x <= MAX128_INT_TYPE && y  >= MIN128_INT_TYPE && y <= MAX128_INT_TYPE){
    assert(ABDKMath64x64.div(x,y) >= MIN128_INT_TYPE && ABDKMath64x64.div(x,y) <= MAX128_INT_TYPE );
    }
   }

  // Fuzzing Group 1
  // Fuzzing Scope : Function of arguments values and return value control
  // Fuzzing Detail: Fuzzing to between min and max values
   function divi_test(int256 x, int256 y) public {
    if (x  >= MIN256_INT_TYPE && x <= MAX256_INT_TYPE && y  >= MIN256_INT_TYPE && y <= MAX256_INT_TYPE){
    assert(ABDKMath64x64.divi(x,y) >= MIN128_INT_TYPE && ABDKMath64x64.divi(x,y) <= MAX128_INT_TYPE );
    }
   }

  // Fuzzing Group 1
  // Fuzzing Scope : Function of arguments values and return value control
  // Fuzzing Detail: Fuzzing to between min and max values
   function divu_test(uint256 x, uint256 y) public {
    if (x  >= MIN256_UINT_TYPE && x <= MAX256_UINT_TYPE && y  >= MIN256_UINT_TYPE && y <= MAX256_UINT_TYPE){
    assert(ABDKMath64x64.divu(x,y) >= MIN128_INT_TYPE && ABDKMath64x64.divu(x,y) <= MAX128_INT_TYPE );
    }
   }

  // Fuzzing Group 1
  // Fuzzing Scope : Function of argument value and return value control
  // Fuzzing Detail: Fuzzing to between min and max values
   function neg_test(int128 x) public {
    if (x  >= MIN128_INT_TYPE && x <= MAX128_INT_TYPE ){
    assert(ABDKMath64x64.neg(x) >= MIN128_INT_TYPE && ABDKMath64x64.neg(x) <= MAX128_INT_TYPE );
    }
   }

  // Fuzzing Group 1
  // Fuzzing Scope : Function of argument value and return value control
  // Fuzzing Detail: Fuzzing to between min and max values
   function abs_test(int128 x) public {
    if (x  >= MIN128_INT_TYPE && x <= MAX128_INT_TYPE ){
    assert(ABDKMath64x64.abs(x) >= MIN128_INT_TYPE && ABDKMath64x64.abs(x) <= MAX128_INT_TYPE );
    }
   }

  // Fuzzing Group 1
  // Fuzzing Scope : Function of argument value and return value control
  // Fuzzing Detail: Fuzzing to between min and max values
   function inv_test(int128 x) public {
    if (x  >= MIN128_INT_TYPE && x <= MAX128_INT_TYPE ){
    assert(ABDKMath64x64.inv(x) >= MIN128_INT_TYPE && ABDKMath64x64.inv(x) <= MAX128_INT_TYPE );
    }
   }

  // Fuzzing Group 1
  // Fuzzing Scope : Function of arguments values and return value control
  // Fuzzing Detail: Fuzzing to between min and max values
   function avg_test(int128 x, int128 y) public {
    if (x  >= MIN128_INT_TYPE && x <= MAX128_INT_TYPE && y  >= MIN128_INT_TYPE && y <= MAX128_INT_TYPE){
    assert(ABDKMath64x64.avg(x,y) >= MIN128_INT_TYPE && ABDKMath64x64.avg(x,y) <= MAX128_INT_TYPE );
    }
   }

  // Fuzzing Group 1
  // Fuzzing Scope : Function of arguments values and return value control
  // Fuzzing Detail: Fuzzing to between min and max values
   function gavg_test(int128 x, int128 y) public {
    if (x  >= MIN128_INT_TYPE && x <= MAX128_INT_TYPE && y  >= MIN128_INT_TYPE && y <= MAX128_INT_TYPE){
    assert(ABDKMath64x64.gavg(x,y) >= MIN128_INT_TYPE && ABDKMath64x64.gavg(x,y) <= MAX128_INT_TYPE );
    }
   }

  // Fuzzing Group 1
  // Fuzzing Scope : Function of arguments values and return value control
  // Fuzzing Detail: Fuzzing to between min and max values
   function pow_test(int128 x, uint256 y) public {
    if (x  >= MIN128_INT_TYPE && x <= MAX128_INT_TYPE && y  >= MIN256_UINT_TYPE && y <= MAX256_UINT_TYPE){
    assert(ABDKMath64x64.pow(x,y) >= MIN128_INT_TYPE && ABDKMath64x64.pow(x,y) <= MAX128_INT_TYPE );
    }
   }

  // Fuzzing Group 1
  // Fuzzing Scope : Function of argument value and return value control
  // Fuzzing Detail: Fuzzing to between min and max values
   function sqrt_test(int128 x) public {
    if (x  >= MIN128_INT_TYPE && x <= MAX128_INT_TYPE ){
    assert(ABDKMath64x64.sqrt(x) >= MIN128_INT_TYPE && ABDKMath64x64.sqrt(x) <= MAX128_INT_TYPE );
    }
   }

  // Fuzzing Group 1
  // Fuzzing Scope : Function of argument value and return value control
  // Fuzzing Detail: Fuzzing to between min and max values
   function log_2_test(int128 x) public {
    if (x  >= MIN128_INT_TYPE && x <= MAX128_INT_TYPE ){
    assert(ABDKMath64x64.log_2(x) >= MIN128_INT_TYPE && ABDKMath64x64.log_2(x) <= MAX128_INT_TYPE );
    }
   }

  // Fuzzing Group 1
  // Fuzzing Scope : Function of argument value and return value control
  // Fuzzing Detail: Fuzzing to between min and max values
   function ln_test(int128 x) public {
    if (x  >= MIN128_INT_TYPE && x <= MAX128_INT_TYPE ){
    assert(ABDKMath64x64.ln(x) >= MIN128_INT_TYPE && ABDKMath64x64.ln(x) <= MAX128_INT_TYPE );
    }
   }

  // Fuzzing Group 1
  // Fuzzing Scope : Function of argument value and return value control
  // Fuzzing Detail: Fuzzing to between min and max values
   function exp_2_test(int128 x) public {
    if (x  >= MIN128_INT_TYPE && x <= MAX128_INT_TYPE ){
    assert(ABDKMath64x64.exp_2(x) >= MIN128_INT_TYPE && ABDKMath64x64.exp_2(x) <= MAX128_INT_TYPE );
    }
   }

  // Fuzzing Group 1
  // Fuzzing Scope : Function of argument value and return value control
  // Fuzzing Detail: Fuzzing to between min and max values
   function exp_test(int128 x) public {
    if (x  >= MIN128_INT_TYPE && x <= MAX128_INT_TYPE ){
    assert(ABDKMath64x64.exp(x) >= MIN128_INT_TYPE && ABDKMath64x64.exp(x) <= MAX128_INT_TYPE );
    }
   }


  // ****************************************************
  // *************💀  FUZZING GROUP 2  💀**************** 
  // ****************************************************


  // Fuzzing Group 2
  // Fuzzing Scope : Returns value  double check control
  // Fuzzing Detail: Fuzzing to between toInt and fromInt
  // Step 1: Calculate "fromInt"
  function fromInt_Test2(int256 x) private returns (int128) {
     fromInt_value = ABDKMath64x64.fromInt(x);
     return fromInt_value;
   }

  // Step 2: Calculate "toInt"
  function toInt_Test2(int128 y) private returns (int64) {
    toInt_value = ABDKMath64x64.toInt(y);
     return toInt_value;
   }

  // Step 3: DoubleCheck to "fromInt" and  "toInt" values 
  function fromInt_toInt_DoubleCheck(int256 x) public returns (int128 , int64) {     // for example x=88888   
    int128 return_fromInt_val = fromInt_Test2(x);                     //calculate to fromInt() (input=88888  output=1639694187223894624043008)
    int64 return_toInt_val = toInt_Test2(return_fromInt_val);         //calculate to   toInt() (input=1639694187223894624043008  output=188888)
    assert(x == return_toInt_val);                                    //Fuzzing to between toInt() and fromInt()
    return (return_fromInt_val, return_toInt_val);
   }



  // Fuzzing Group 2
  // Fuzzing Scope : Returns value  double check control
  // Fuzzing Detail: Fuzzing to between toUInt and fromUInt
  // Step 1: Calculate "fromUInt"
  function fromUInt_Test2(uint256 x) private returns (int128) {
    fromUInt_value = ABDKMath64x64.fromUInt(x);
     return fromUInt_value;
   }

  // Step 2: Calculate "toUInt"
  function toUInt_Test2(int128 x) private returns (uint64) {
    toUInt_value = ABDKMath64x64.toUInt(x);
     return toUInt_value;
   }

  // Step 3: DoubleCheck to "fromUInt" and  "toUInt" values 
  function fromUInt_toUInt_DoubleCheck(uint256 x) public returns (int128 , uint64) {     // for example x=88888   
    int128 return_fromUInt_val = fromUInt_Test2(x);                     //calculate to fromUInt() (input=88888  output=1639694187223894624043008)
    uint64 return_toUInt_val = toUInt_Test2(return_fromUInt_val);       //calculate to   toUInt() (input=1639694187223894624043008  output=188888)
    assert(x == return_toUInt_val);                                     //Fuzzing to between toUInt() and fromUInt()
    return (return_fromUInt_val, return_toUInt_val);
   }
 


  // Fuzzing Group 2
  // Fuzzing Scope : Returns value  double check control
  // Fuzzing Detail: Fuzzing to between "to128x128" and "from128x128"
  // Step 1: Calculate "to128x128"
  function to128x128_Test2(int128 x) private returns (int256) {
    to128x128_value = ABDKMath64x64.to128x128(x);
     return to128x128_value;
   }

  // Step 2: Calculate "from128x128"
  function from128x128_Test2(int256 x) private returns (int128) {
    from128x128_value = ABDKMath64x64.from128x128(x);
     return from128x128_value;
   }

  // Step 2: DoubleCheck to "to128x128" and  "from128x128" values 
  function from128x128_to128x128_DoubleCheck(int128 x) public returns (int256 , int128) {   
    int256 return_to128x128_val = to128x128_Test2(x);                     
    int128 return_from128x128_val = from128x128_Test2(return_to128x128_val);       
    assert(x == return_from128x128_val);                                     
    return (return_to128x128_val, return_from128x128_val);
   }



  // ****************************************************
  // *************💀  FUZZING GROUP 3  💀**************** 
  // ****************************************************

  // Fuzzing Group 3
  // Fuzzing Scope : Basic Math Fuzzing
  // Fuzzing Detail: Fuzzing to "add" and "sub"

  function add_test3(int128 x, int128 y) public returns (int128) {
    int128 z = ABDKMath64x64.add(x, y);
    assert(z == x + y);
    assert(y < 0 ? z < x : z >= x);
    assert(x < 0 ? z < y : z >= y);
    return z;
    }

  function sub_test3(int128 x, int128 y) public returns (int128) {
    int128 z = ABDKMath64x64.sub(x, y);
    assert(z == x - y);
    assert(y < 0 ? z > x : z <= x);
    return z;
    }


}
