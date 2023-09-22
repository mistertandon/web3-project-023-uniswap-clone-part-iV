// SPDX-License-Identifier: MIT
pragma >=0.7.0 < 0.9.0;
pragma abicoder v2;

contract StoreUserData{

 struct TransactionStruck{
    address caller;
    address poolAddress;
    address tokenAddress0;
    address tokenAddress1;
 }

 TransactionStruck[] public transactions;

 function addToBlockchain(address poolAddress, address tokenAddress0, address tokenAddress1){
    transactions.push(TransactionStruck(msg.sender, poolAddress, tokenAddress0, tokenAddress1))
 }

 function getAllTransactions() public view returns(TransactionStruck[] memory){
    return transactions;
 }

}