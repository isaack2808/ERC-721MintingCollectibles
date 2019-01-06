pragma solidity ^0.4.21;

import "zeppelin-solidity/contracts/token/ERC721/ERC721Token.sol";

contract Banksy is ERC721Token {
  uint256 internal nextTokenId = 0;

  constructor() public ERC721Token("Banksy", "BNK") {}

  function mint() external {
    uint256 tokenId = nextTokenId;
    nextTokenId = nextTokenId.add(1);
    super._mint(msg.sender, tokenId);
  }

function tokenURI(uint256 _tokenId)
        public
        view
        returns (string _tokenURI)
    {
        _tokenURI = "https://00e9e64bac41fadc3da283d0eb8df63a7d06ec42d17775c0f8-apidata.googleusercontent.com/download/storage/v1/b/artiststradingcard.com/o/banksy.json";
        bytes memory _tokenURIBytes = bytes(_tokenURI);
        _tokenURIBytes[33] = byte(48+(_tokenId / 10000) % 10);
        _tokenURIBytes[34] = byte(48+(_tokenId / 1000) % 10);
        _tokenURIBytes[35] = byte(48+(_tokenId / 100) % 10);
        _tokenURIBytes[36] = byte(48+(_tokenId / 10) % 10);
        _tokenURIBytes[37] = byte(48+(_tokenId / 1) % 10);

}


}
