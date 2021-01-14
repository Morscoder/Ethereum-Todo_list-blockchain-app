pragma solidity ^0.5.0;
contract TodoList {
    
    uint public taskCount = 0;
    
    struct Task {
        uint id ;
        string content;
        bool completed ;
    }
        mapping(uint=>Task) public tasks ;
        
        constructor() public {
        creatTask("check out my projects");
    }
        
        function creatTask(string memory _content) public {
            taskCount++ ;
            tasks[taskCount] = Task ( taskCount , _content , false);
    }
    
}