// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
        counter.setNumber(0);
    }

    function test_Increment() public {
        counter.increment();
        assertEq(counter.number(), 1);
    }

    function testFuzz_SetNumber(uint256 x) public {
        counter.setNumber(x);
        assertEq(counter.number(), x);
    }


    function testFuzz_addValue(uint256 price, uint256 balance, uint256 totalShares, uint256 void) public {
        if (price == 0 || balance == 0 || totalShares == 0 || void == 0) {
            return;
        }
        
        uint256 yieldBearingEth = price * totalShares;
        if(price != 0 && totalShares > type(uint256).max / price) {
            return; // Exit if multiplication would overflow
        }


        uint256 sum;
        unchecked {
            sum = yieldBearingEth + void;
        }
        if (sum < yieldBearingEth || sum < void) {
            return;
        }

        if (yieldBearingEth > type(uint256).max - void) {
            return;
        }
        
        if (balance > type(uint256).max - (yieldBearingEth + void)) {
            return;
        }


        uint256 pending = balance - yieldBearingEth - void; // @audit _totalVoidAndRemainders not used in other similar funcitons
        if (pending < totalShares || totalShares == 0) {
            return;
        }


        // guard against price overflow
        if (price > type(uint256).max - (pending / totalShares)) {
            return;
        }
        // price += (pending / totalShares);

        
        // counter.init(balance, price, totalShares, void);
        
        
        // counter._addValue(3);
        // uint256 price_before = counter.price();
        // counter._addValue(3);
        // uint256 price_after = counter.price();
        
        // assertEq(price_before, price_after);
    }
}
