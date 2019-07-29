pragma solidity 0.5.4;

contract MySmartContractTest {
    uint globalValue;
    constructor (uint _value) public {
        globalValue = _value;
    }
    
    function two() public pure returns(uint, uint){
        uint _a = 10;
        uint _b = 20;
        return(_a, _b);
    }
    function gettwo() public pure returns(uint answer){
        //uint a;
        //uint b;
        (uint a,  uint b) = two();
        answer = a*b;
    }
    
    function hashData (uint _number) public pure returns (bytes32) {
        bytes32 hash =  keccak256(abi.encodePacked(_number));
        return hash;
    }
}