//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Voting is ERC20{
    uint Nike;
    uint Adidas;
    uint Reebok;


   constructor() ERC20("VishToken", "VT7") {}
    
    function Mint() public
    {
        _mint(msg.sender, 10 * 10 ** 18);

    }
    function VoteNike() public
    {
        Nike=Nike+1;
    }
    
    function VoteAdidas() public
    {
        Adidas=Adidas+1;
        
    }
    
    function VoteReebok() public
    {
        Reebok=Reebok+1;
    }
    function ViewWinner() public view returns(string memory, uint)
    {
        if(Nike>Adidas && Nike>Reebok) return ("NIKE",Nike);
        else if(Adidas>Nike && Adidas>Reebok)return ("Adidas",Adidas);
        else if(Reebok>Nike && Reebok>Adidas) return ("Reebok",Reebok);
        else return ("Its a Tie",0);
    }
}