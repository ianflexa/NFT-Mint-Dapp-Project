// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@1001-digital/erc721-extensions/contracts/RandomlyAssigned.sol";


contract TheRea1Final is ERC721, Ownable, RandomlyAssigned {
  using Strings for uint256;
  
  uint256 public currentSupply = 0;
  //limite de nft por address TESTESSS
  uint256 public nftPerAddressLimit = 5;
  //custo de ether por address
  uint256 public cost = 0.001 ether;
  
  string public baseURI = "ipfs://QmQsCEXXM7snYhde8QWuiVaQaXcAep82PbAi7VTSoKcxF1/";

  //salva a quantidade de nfts por address
  mapping(address => uint256) public addressMintedBalance;

 
  constructor(uint256 _totalSupply, uint256 _startFrom) 
    ERC721("Rea1 Project Final", "R341s")
    RandomlyAssigned(_totalSupply, _startFrom) // Max. x NFTs available; Start counting from 1 (instead of 0)
    {
       for (uint256 a = 1; a <= 5; a++) {
            mint(1);
        }
    }

  function _baseURI() internal view virtual override returns (string memory) {
    return baseURI;
  }


  function mint (uint256 _mintAmount)
      public
      payable
  {
      require( tokenCount() + 1 <= totalSupply(), "Can't mint more than what's available on collection");
      require( availableTokenCount() - 1 >= 0, "Can't mint more than available token count"); 
      require( tx.origin == msg.sender, "Can't mint through a custom contract");
      // mudanca de logica para facilitar o entendimento
      if (msg.sender != owner()) {  
        require(msg.value >= cost * _mintAmount, "insufficient funds");
        require(addressMintedBalance[msg.sender] + _mintAmount <= nftPerAddressLimit, "This address already minted the limit permitted.");
        
      }
      
      // loop na quantidade de nfts mintados
      for (uint256 i = 1; i <= _mintAmount; i++) {
        uint256 id = nextToken();
        addressMintedBalance[msg.sender]++;
        _safeMint(msg.sender, id);
        currentSupply++;
      }
  }

  function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
    require(
      _exists(tokenId),
      "ERC721Metadata: URI query for nonexistant token"
    );

    string memory currentBaseURI = _baseURI();
    return bytes(currentBaseURI).length > 0
        ? string(abi.encodePacked(currentBaseURI, tokenId.toString(), ".json"))
        : "";
  }
  
  function withdraw() public payable onlyOwner {
    require(payable(msg.sender).send(address(this).balance));
  }

}