// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Factory.sol";

contract UniswapPairAddressGetter {
    address public factory;
    
    constructor(address _factory) {
        factory = _factory;
    }
    
    function getUniswapV2Pair(address token0, address token1) public view returns (address) {
        address pair = IUniswapV2Factory(factory).getPair(token0, token1);
        return pair;
    }
}