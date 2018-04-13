pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract TestTools is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function TestTools(address _owner)  UpgradeableToken(_owner) {
    name = "TestTools";
    symbol = "NM";
    totalSupply = 100000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}