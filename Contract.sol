// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";

contract AthleteNFT is ERC721URIStorage {
    using Counters for Counters.Counter;

    Counters.Counter public tokenIdCounter;

    // Variável para armazenar os metadados
    string public InitialMetadata = "https://bafybeif7vf33a3wtybtkvz7xffluk6rz6dtjk3x7mfb7oaudly53ivlizy.ipfs.w3s.link/base.json";
    string public metadata;
    uint256[] public auxiliar;
    address[] public auxiliar2;

    constructor() ERC721("Tortoise", "TORT") {
        safeMint(msg.sender);
    }

    event MetadataUpdated(string newMetadata);

    // Função para atualizar os metadados
    function updateMetadata(string memory newMetadata, uint256 key) public {
        metadata = newMetadata;
        fakeMint(auxiliar[key]);
        emit MetadataUpdated(newMetadata);
    }

    function safeMint(address to) public {
        uint256 tokenId = tokenIdCounter.current();
        tokenIdCounter.increment();

        _safeMint(to, tokenId);
        auxiliar.push(tokenId);
        auxiliar2.push(to);
        _setTokenURI(tokenId, InitialMetadata);
    }

    function fakeMint(uint256 tokenId) public {
        _setTokenURI(tokenId, metadata);
    }

    // Função para transferir NFTs de um endereço para outro
    function transferNFT(
        address from,
        address to,
        uint256 tokenId
    ) public {
        _transfer(from, to, tokenId);
    }

        // Função que retorna um array dinâmico de uint256
    function listNFTsIdsAndOwners() public view returns (uint256[] memory, address[] memory, string[] memory) {
        uint256[] memory tokenIds = new uint256[](tokenIdCounter.current());
        address[] memory owners = new address[](tokenIdCounter.current());
        string[] memory metadatas = new string[](tokenIdCounter.current());
        for (uint256 i = 0; i < tokenIdCounter.current(); i++) {
            tokenIds[i] = auxiliar[i];
            owners[i] = auxiliar2[i];
            metadatas[i] = tokenURI(i);
        }
        return (tokenIds, owners, metadatas);
    }
}