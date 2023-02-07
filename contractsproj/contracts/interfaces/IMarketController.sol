// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

interface IMarketController {
    function enterMarkets(address[] calldata fTokens) external returns (uint[] memory);
    function exitMarket(address fToken) external returns (uint);

    function mintAllowed(address fToken, address minter, uint mintAmount) external returns (uint);

    function redeemAllowed(address fToken, address redeemer, uint redeemTokens) external returns (uint);

    function borrowAllowed(address fToken, address borrower, uint borrowAmount) external returns (uint);

    function repayBorrowAllowed(address fToken, address payer, address borrower, uint repayAmount) external returns (uint);

    function liquidateBorrowAllowed(address fTokenBorrowed, address fTokenCollateral, address liquidator, address borrower, uint repayAmount) external returns (uint);

    function transferAllowed(address fToken, address src, address dst, uint transferTokens) external returns (uint);

    function liquidateCalculateSeizeTokens(address fTokenBorrowed, address fTokenCollateral, uint repayAmount) external view returns (uint, uint);
}