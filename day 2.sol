// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract MyContract {
    // State Variables
    // uint is only use positive number not use minus sing in front of number like(-1,-2,-3,...)
    int public myUint = 1;
    uint256 public myUint256 = 1;
    uint8 public myUint8 = 88; // only 2 int number

    string public myString = "Hello, world!";
    bytes14 public myBytes32 = "Hello, world!";// use only 14 char in this string Variable

    address myAddress = 0xf8e81D47203A594245E36C48e151709F0C19fBe8;

    struct MyStruct {
        uint8 myUint8; // use only 3 digite number
        string myString;
    }

    MyStruct public myStruct = MyStruct(111, "Hello, world!");


    // Local Variables
    function getValue() view public returns(int) {
        int value = myUint + 1;
        return value;
    }
}