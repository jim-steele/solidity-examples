pragma solidity ^0.4.4;

/// @title addOne

contract Visibility {
  uint public data1;
  mapping (uint => string) public values;
  mapping (bytes32 => uint) public balances;

  function getData() view returns (uint) { return data1; }
  function doIt(uint a) pure returns (uint b) { return a+1; }
  function keepIt(uint a) { data1 = 2*doIt(a); }

  function assignv(uint a, string b) { values[a] = b;}
  function readv(uint a) view returns (string) { return values[a]; }

  function assign(bytes32 a, uint b) { balances[a] = b; }
  function read(bytes32 a) view returns (uint) { return balances[a]; }
}

contract childOfAddOne is Visibility {
}

contract anotherOne {
  //function tryToDoIt(uint a) { doIt(a); }
  //function tryToKeepIt(uint a) { keepIt(a); }
}

