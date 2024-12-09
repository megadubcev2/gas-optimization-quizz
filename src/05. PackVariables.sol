// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "./Interfaces.sol";

contract PackVariables is IPackVariables {
    uint8 one;
    uint256 two;
    bytes18 three;
    uint8[30] four;
    bytes14 five;
    uint8 six;

    function setValues(uint8 _one, uint256 _two, bytes18 _three, uint8[30] calldata _four, bytes14 _five, uint8 _six)
        public
    {
        one = _one;
        two = _two;
        three = _three;
        four = _four;
        five = _five;
        six = _six;
    }
}

contract PackVariablesOptimized is IPackVariables {
    // Оптимизированное расположение переменных
    uint8 one;           // 1 байт
    uint8 six;           // 1 байт
    bytes14 five;        // 14 байтов
    uint256 two;         // 32 байта
    bytes18 three;       // 18 байтов
    uint8[30] four;      // 30 байтов

    function setValues(
        uint8 _one,
        uint256 _two,
        bytes18 _three,
        uint8[30] calldata _four,
        bytes14 _five,
        uint8 _six
    ) public {
        one = _one;       // 1 байт
        six = _six;       // 1 байт
        five = _five;     // 14 байтов
        two = _two;       // 32 байта
        three = _three;   // 18 байтов
        for (uint256 i = 0; i < 30; i++) {
            four[i] = _four[i];  // Копируем 30 байтов массива
        }
    }
}
