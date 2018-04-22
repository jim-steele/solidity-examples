pragma solidity ^0.4.4;

/// @title Simple example of setting and getting storage data with owner and selfdestruct
/// @author Dev Name
/// @dev Storage is costly and should only be used for critical data
contract GetAndSet2 {
  address public owner;
  string[2] storedData;
  
  function setStoredData(uint8 n, string x) {
    require(n < 2); 
    storedData[n] = x;
  }
  
  function getStoredData(uint8 n) public view returns (string) {
    require(n < 2);
    return storedData[n];
  }

  function getOwner() public returns (address) {
    return owner;
  }

  function GetAndSet2() public {
    owner = msg.sender;
  }

  function goodbye() public {
    selfdestruct(owner);
  }

}
