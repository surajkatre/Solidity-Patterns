// Check for the equality of two provided strings in a way that minimizes average gas consumption for a large number of different inputs.

pragma solidity ^0.4.20;

contract StringEqualityComparison {

    function hashCompareWithLengthCheck(string a, string b) internal returns (bool) {
        if (bytes(a).length != bytes(b).length) {
            return false;
        } else {
            return keccak256(a) == keccak256(b);
        }
    }
}