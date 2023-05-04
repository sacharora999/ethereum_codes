// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;


struct eventStuct{

    address organizer;
    string name;
    uint date;
    uint price;
    uint ticketCount;
    uint ticketRemaining;

}



contract eventContra
{
    mapping (uint=>eventStuct) public events; 
    mapping (address=>mapping(uint=>uint)) public tickets;
    uint public nextId;

    function createEvent(string memory name, uint date, uint price, uint ticketCount) public {
        require(date>block.timestamp,"Event Expired");
        require(ticketCount>0);
        events[nextId] = eventStuct(msg.sender,name,date,price,ticketCount,ticketCount);
        nextId++;
    }

    function buyTicket(uint id, uint quantity) public payable  {
        require(events[id].date>block.timestamp,"Event doesn't exists or Expired");
        require(msg.value==events[id].price*quantity,"Not Sufficent Amt");
        require(events[id].ticketRemaining>=quantity,"Not enough Tickets");
        events[id].ticketRemaining-=quantity;
        tickets[msg.sender][id]+=quantity;
    }

    function xferTickets(uint id, uint quantity, address to) public{
        require(events[id].date>block.timestamp,"Event doesn't exists or Expired");
        require(tickets[msg.sender][id]>=quantity,"Not enough Tickets");
        tickets[msg.sender][id]-=quantity;
        tickets[to][id]+=quantity;
    }
}

