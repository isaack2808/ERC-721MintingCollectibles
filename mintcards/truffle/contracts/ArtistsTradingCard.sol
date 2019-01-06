pragma solidity ^0.4.24;

import "./Strings.sol";
import 'zeppelin-solidity/contracts/token/ERC721/ERC721Token.sol';
import "zeppelin-solidity/contracts/ownership/Ownable.sol";

contract ArtistsTradingCard is ERC721Token, Ownable {
  

  using Strings for string;
  uint256 internal nextTokenId = 0;
  

  constructor() public ERC721Token("ArtistsTradingCard", "ATC")  {  }


  function mint() external onlyOwner {
    uint256 tokenId = nextTokenId;
    nextTokenId = nextTokenId.add(1);
    super._mint(msg.sender, tokenId);
  }


function tokenURI(uint256 _tokenId) public view returns (string _tokenURI) {
    return Strings.strConcat(
        _tokenURI = 'https://storage.googleapis.com/artiststradingcard.com/artcard/',
Strings.uint2str(_tokenId));
  }

}
