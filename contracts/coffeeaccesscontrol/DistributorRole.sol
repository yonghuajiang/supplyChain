// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

// Import the library 'Roles'
import "./Roles.sol";

// Define a contract 'DistributorRole' to manage this role - add, remove, check
contract DistributorRole {
  using Roles for Roles.Role;
  // Define 2 events, one for Adding, and other for Removing
  event DistributorAdded(address indexed account);
  event DistributorRemoved(address indexed account);
  // Define a struct 'distributors' by inheriting from 'Roles' library, struct Role
  Roles.Role private distributor;
  // In the constructor make the address that deploys this contract the 1st distributor
  constructor()  {
    //_addDistributor(msg.sender);
  }

  // Define a modifier that checks to see if msg.sender has the appropriate role
  modifier onlyDistributor() {
    require(distributor.has(msg.sender));
    _;
  }

  // Define a function 'isDistributor' to check this role
  function isDistributor(address account) public view returns (bool) {
    return distributor.has(account);
  }


  // Define an internal function '_addDistributor' to add this role, called by 'addDistributor'
  function _addDistributor(address account) internal {
    distributor.add(account);
    emit DistributorAdded(account);
  }

  // Define an internal function '_removeDistributor' to remove this role, called by 'removeDistributor'
  function _removeDistributor(address account) internal {
    distributor.remove(account);
    emit DistributorRemoved(account);

  }
}
