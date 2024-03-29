// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library SafeMath {

    function add(uint256 x, uint256 y) internal pure returns(uint 256){
        uint256 r=x+y;
        require(r>=x,'SafeMath addition overflow');
        return r;
    }

    function sub(uint256 x, uint256 y) internal pure returns(uint 256){
        require(y>=x,'SafeMath subraction overflow');
        uint256 r=x-y;
        return r;
    }

    function mul(uint256 x, uint256 y) internal pure returns(uint256){
        if(x==0) return 0;
        uint256 r=x*y;
        require(r/x==y,'SafeMath Multiplication Overflow');
        return r;
    }

    function divide(uint256 x, uint256 y) internal pure returns(uint256){
        require(y!=0,'SafeMath division by 0');
        uint256 r=x/y;
        return r;
    }

    function mod(uint256 x, uint256 y) internal pure returns(uint256){
        require(y!=0,'SafeMath division by 0');
        uint256 r=x%y;
        return r;
    }
}
