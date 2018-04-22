pragma solidity ^0.4.4;

/// @title Simple example of setting and getting storage data
/// @author Dev Name
/// @dev Storage is costly and should only be used for critical data
contract GetAndSet {
  uint16[3] storedData;
  
  function setStoredData(uint8 n, uint16 x) {
    storedData[n] = x;
  }
  
  function getStoredData(uint8 n) public view returns (uint16) {
    return storedData[n];
  }
}
