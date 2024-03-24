// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// In UNISWAP we saw:
// 1. swap
// 2. Pool - create,get pools,
// 3. Token1 and Token2
// 4. Calculate price
// 5. Add to pool

// defining our contract
contract CeloExchange {

    struct LiquidityPool {
        address token1;
        address token2;
        uint amount1;
        uint amount2;
    }

    uint public poolCount;

    // mapping 
    mapping(address => uint) balances; // uint256, int256
    mapping (uint => LiquidityPool) public liquidityPools;
    // ADDRESS  AMOUNT
    // 0x989dd

    // create liquidity pools
    function createLiquidityPool(address token1, address token2, uint amount1, uint amount2) public returns (uint liquidity) {
        require(amount1 > 0 && amount2 > 0, "AMounts must be greater than 0");

        poolId = ++poolCount;



        liquidity = amount1 * amount2;

        // Calculation to add onto liquidity
        balances[token1] += amount1;
        balances[token2] += amount2;

        return liquidity;
    }       

}