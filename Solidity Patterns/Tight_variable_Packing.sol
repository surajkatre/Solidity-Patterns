// Optimize gas consumption when storing or loading statically-sized variables.


pragma solidity ^0.4.20;

contract StructPackingExample {

    struct CheapStruct {
        uint8 a;
        uint8 b;
        uint8 c;
        uint8 d;
        bytes1 e;
        bytes1 f;
        bytes1 g;
        bytes1 h;
    }

    CheapStruct example;

    function addCheapStruct() public {
        CheapStruct memory someStruct = CheapStruct(1,2,3,4,"a","b","c","d");
        example = someStruct;
    }
}