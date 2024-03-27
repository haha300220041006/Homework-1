// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
    uint256 private _studentCode = 2123;

    function register() external returns (uint256) {
        _studentCode-=1000;
        return _studentCode;
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    function register() external view returns (uint256) {
        IClassroomV2 classroom = IClassroomV2(msg.sender);
        if (classroom.isEnrolled()) {
            return 123; // Return a valid code if already enrolled
        } else {
            return 1234; // Indicate not enrolled
        }
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        if (gasleft()<7000 wei) {
            return 123;
        }else{
            return 9000;
        }
    }
}