// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract counter {
    uint256 public number;

    struct meowmix {
        uint256 x;
        // mapping(address =>  uint256) balance;
    }
    mapping(address =>  meowmix) pp;
    meowmix m;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment(address addr) public returns (uint256, meowmix memory) {
        number++;
        return (4, m);
    }

    function increment2(meowmix memory m) public {
        number++;
    }

    function gogo() private {
         uint256 h = 3;
    }

    function purefunc() external pure {
    }

    function viewfunc() external view {
    }
    


    uint256 public balance;
    uint256 public price;
    uint256 public _totalShares;
    uint256 public _totalVoidAndRemainders;
    
    function init(uint256 _balance, uint256 _price, uint256 totalShares, uint256 void) public {
        balance = _balance;
        price = _price;
        _totalShares = totalShares;
        _totalVoidAndRemainders = void;
    }

    function _addValue(uint256) public {
        uint256 yieldBearingEth = price * _totalShares;
        uint256 pending = balance - yieldBearingEth - _totalVoidAndRemainders; // @audit _totalVoidAndRemainders not used in other similar funcitons
        if (pending < _totalShares || _totalShares == 0) {
            return;
        }

        price += (pending / _totalShares);
    }



}
