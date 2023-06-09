// Secure transfer of ether from a contract to another address.

pragma solidity ^0.4.21;

contract EtherReceiver {

    function () public payable {}
}

contract EtherSender {

    EtherReceiver private receiverAdr = new EtherReceiver();

    function sendEther(uint _amount) public payable {
        if (!address(receiverAdr).send(_amount)) {
            //handle failed send
        }
    }

    function callValueEther(uint _amount) public payable {
        require(address(receiverAdr).call.value(_amount).gas(21000)());
    }

    function transferEther(uint _amount) public payable {
        address(receiverAdr).transfer(_amount);
    }
}