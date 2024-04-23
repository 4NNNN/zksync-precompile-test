//SPDX-License-Identifier: Unlicense
 pragma solidity ^0.8.0;
import "submodules/era-test-node/etc/system-contracts/contracts/Constants.sol";
import "submodules/era-test-node/etc/system-contracts/contracts/libraries/TransactionHelper.sol";
import "submodules/era-test-node/etc/system-contracts/contracts/libraries/EfficientCall.sol";


contract Greeter {
     
function greet() external{
     address to = P256VERIFY_SYSTEM_CONTRACT;
      to.call(databy);
      EfficientCall.staticCall(20000,to,databy);
}


//  bytes calldata databytes = 27f19277006cfd9d0230501286dcb42a999b7a4757da542fd48f792b479c0eb947ecfd29ca6fd28cf45895c565f37a6eb29d054b0f0435e4df75f04ec758b686d99c4043bd491d845f8f29ad679f7fad70c0aa7be8c758f40b59eaf6afb8569fa66eead940d0be2e554f9528c5eb5fe16c29f89446de1c56ed955f2536ce70b888a755249c28909ca3cee94b60e9d813876f340ff03654bd0f8bc348f67ada06;

//27f19277006cfd9d0230501286dcb42a999b7a4757da542fd48f792b479c0eb947ecfd29ca6fd28cf45895c565f37a6eb29d054b0f0435e4df75f04ec758b686d99c4043bd491d845f8f29ad679f7fad70c0aa7be8c758f40b59eaf6afb8569fa66eead940d0be2e554f9528c5eb5fe16c29f89446de1c56ed955f2536ce70b888a755249c28909ca3cee94b60e9d813876f340ff03654bd0f8bc348f67ada06//
Transaction memory _transaction = Transaction({
     txType: EIP_1559_TX_TYPE,
     from: "0x36615cf349d7f6344891b1e7ca7c72883f5dc049",
     to: P256VERIFY_SYSTEM_CONTRACT,
     gasLimit: 200000,
     gasPerPubdataByteLimit: 500000,
     maxFeePerGas: 500000,
     maxPriorityFeePerGas: 500000,
     paymaster: 0,
     nonce: 0,
     value: 0,
     reserved: [
         uint256(uint8(0)),
         uint256(uint8(0)),
         uint256(uint8(0)),
         uint256(uint8(0))
     ],
     data: databy,
     factoryDeps:new bytes32[](0),
     paymasterInput:"0x",
     reservedDynamic:"0x",
     signature: "0x"
 });
