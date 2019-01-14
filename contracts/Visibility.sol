pragma solidity ^0.5.0;

/// @title addOne

contract Visibility {
  uint public data1;
  mapping (uint => string) public values;
  mapping (bytes32 => uint) public balances;

  function getData() public view returns (uint) { return data1; }
  function doIt(uint a) public pure returns (uint b) { return a+1; }
  function keepIt(uint a) public { data1 = 2*doIt(a); }

  function assignv(uint a, string memory b) public { values[a] = b;}
  function readv(uint a) public view returns (string memory) { return values[a]; }

  function assign(bytes32 a, uint b) public { balances[a] = b; }
  function read(bytes32 a) public view returns (uint) { return balances[a]; }
}

contract childOfAddOne is Visibility {
}

contract anotherOne {
  //function tryToDoIt(uint a) { doIt(a); }
  //function tryToKeepIt(uint a) { keepIt(a); }
}

