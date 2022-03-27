pragma solidity ^0.5.11;

contract Main {

    struct Publication {
        address editor;
        string description;
        uint minute;
        uint hour;
        uint day;
        uint month;
        uint year;
        string[] hashes; 
    }
    
    Publication[] public publications;

    //hash of the initial data send and the user address 
    function publish(string calldata description, uint minute, uint hour, uint day, uint month, uint year, string calldata hash) external {
        string[] storage hashes;
        hashes.push(hash);
        Publication memory publication = Publication(msg.sender, description, minute, hour, day, month, year, hashes);
        publications.push(publication);

    }
}
