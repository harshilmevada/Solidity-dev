// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract MyContract {
    uint256[] public numbers = [1, 2, 3, 4, 4, 5, 6, 7, 8, 9, 10];

    function countEvenNumber() public view returns (uint256) {
        uint256 count = 0;

        for (uint256 i = 0; i < numbers.length; i++) {
            if (isEvenNumber(numbers[i])) {
                count++;
            }
        }

        return count;
    }

    function giveEvenNumber() public view returns (uint256[] memory) {
        uint256[] memory evenNumbers = new uint256[](numbers.length);
        uint256 count = 0;

        for (uint256 i = 0; i < numbers.length; i++) {
            if (isEvenNumber(numbers[i])) {
                evenNumbers[count] = numbers[i];
                count++;
            }
        }

        // Trim the array to remove the unused space
        uint256[] memory trimmedNumbers = new uint256[](count);
        for (uint256 j = 0; j < count; j++) {
            trimmedNumbers[j] = evenNumbers[j];
        }

        return trimmedNumbers;
    }

    function isEvenNumber(uint256 _number) public pure returns (bool) {
        return _number % 2 == 0;
    }
}
