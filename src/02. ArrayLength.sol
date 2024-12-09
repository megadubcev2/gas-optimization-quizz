// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "./Interfaces.sol";

contract ArrayLength is IArrayLength {
    uint256[] public myArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    function callFor() public view {
        for (uint256 i; i < myArray.length; i++) {
            i++;
        }
    }
}

contract ArrayLengthOptimized is IArrayLength {
    uint256[] public myArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    function callFor() public view {

        // вместо двух i++ пишеи один раз i+=2
        // добавляем фиксированную длину массива
        for (uint256 i = 0; i < 10; i+=2) {
        }
    }
}
