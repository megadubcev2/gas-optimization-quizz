// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Interfaces.sol";

contract Loops is ILoops {
    function loopFor() public pure {
        uint256 sum;
        for (uint256 i = 0; i < 20; i++) {
            sum = sum + i;
        }
    }

    function loopWhile() public pure {
        uint256 sum;
        uint256 i;
        while (i < 10) {
            sum = sum + i;
            i++;
        }
    }

    function loopDoWhile() public pure {
        uint256 sum;
        uint256 i;

        do {
            sum = sum + i;
            i++;
        } while (i < 10);
    }
}

contract LoopsOptimized {
  function loopFor() public pure returns (uint256) {
   // просто математически считаем сумму или можем сразу вернуть посчитанный ответ
   return 20 * (20 - 1) >> 1;
  }

  function loopWhile() public pure returns (uint256) {
   return 10 * (10 - 1) >> 1;
  }

  function loopDoWhile() public pure returns (uint256) {
   return 10 * (10 - 1) >> 1;
  }
}
