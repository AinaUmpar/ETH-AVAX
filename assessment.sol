// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract assessment {
    uint256 public currentBalance;
    
    function ToDeposit(uint256 money) public {
        require(money > 0);
        
        currentBalance += money;
    }
    
    function ToWithdraw(uint256 moneyToWithdraw) public {

        assert(currentBalance >= moneyToWithdraw);
        
        if (currentBalance < moneyToWithdraw) {
            revert("Withdraw money exceeds the current balance");
        }
        
        currentBalance -= moneyToWithdraw;
    }
}
