// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract croudFund{

    mapping(address=>uint) public contributors;
    address public  manager;
    uint public minContri;
    uint public deadline;
    uint public target;
    uint public raisedAmt;
    uint public noOfContributors;

    struct request{
        string description;
        address payable receipient;
        uint value;
        bool completed;
        uint noOfVoters;
        mapping(address=>bool) voters;
    }

    mapping (uint=>request) public requests;
    uint public numOfRequests;

    constructor(uint _target, uint _deadline){
        target = _target;
        deadline = block.timestamp+_deadline;
        minContri = 100 wei;
        manager = msg.sender;
    }

    function sendEth() public payable {
        require(block.timestamp <= deadline, "Deadline crossed");
        require(msg.value >= minContri, "Minimum contribution is 100 wei");

        if(contributors[msg.sender]==0){
            noOfContributors+=1;
        }
        contributors[msg.sender]+=msg.value;
        raisedAmt+=msg.value;

    }

    function refund() public {
        require(raisedAmt<target && block.timestamp>deadline, "Refund Not Possible");
        require(contributors[msg.sender] > 0);
        address payable user = payable(msg.sender);
        user.transfer(contributors[msg.sender]);
        contributors[msg.sender]=0;
    }

    modifier onlyManager()
    {
        require(msg.sender==manager, "Only Manager can request this functionality");
        _;
    }

    function createRequest(string memory _description, address payable _receipient, uint _value) public  onlyManager
    {
        request storage newReq = requests[numOfRequests];
        numOfRequests++;
        newReq.description=_description;
        newReq.receipient=_receipient;
        newReq.value=_value;
        newReq.completed=false;
        newReq.noOfVoters=0;


    }

    function voteRequest(uint _reqNum) public 
    {
        require(contributors[msg.sender]>0,"You must be a contributor");
        request storage thisReq = requests[_reqNum];
        require(thisReq.voters[msg.sender]==false, "You have already voted");
        thisReq.voters[msg.sender]=true;
        thisReq.noOfVoters++;


    }

    function makePaymentToRecipient(uint _reqNum) public onlyManager{
        require(raisedAmt>=target);
        request storage thisReq = requests[_reqNum];
        require(thisReq.completed==false,"Already Completed");
        require(thisReq.noOfVoters > noOfContributors /2,"No Majority");
        thisReq.receipient.transfer(thisReq.value);
        thisReq.completed==true;
    }

    function getBal() public view returns(uint){
        return address(this).balance;
    }
}