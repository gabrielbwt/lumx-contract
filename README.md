# Contrato ERC721 para Atletas

## Sobre o Contrato

Este é um contrato inteligente desenvolvido para a plataforma de vendas de atletas, utilizando o padrão ERC721 para representar cada atleta como um token único no blockchain. O contrato permite a cunhagem, transferência e gerenciamento de propriedade dos tokens de atletas, proporcionando uma maneira segura e transparente de negociar atletas como ativos digitais na nossa plataforma.

## Funcionalidades do Contrato

- *Cunhagem de Tokens*: Permite ao clube ou entidade esportiva cunhar um novo token para cada atleta cadastrado na plataforma.
- *Transferência de Propriedade*: Facilita a compra e venda de atletas, permitindo a transferência segura de propriedade do token entre os usuários.
- *Consulta de Proprietário*: Os usuários podem consultar a qualquer momento quem é o proprietário atual de um determinado token de atleta.
- *Metadata Associado*: Cada token possui metadata associado que inclui detalhes importantes do atleta, como nome, estatísticas e histórico de carreira.

## Tecnologias e Padrões Utilizados

Este contrato é implementado em Solidity, aproveitando as capacidades do Ethereum para contratos inteligentes. Ele segue o padrão ERC721, que é um padrão popular para a criação de tokens não fungíveis (NFTs), garantindo compatibilidade com a maioria dos wallets e outros contratos que suportam este padrão.

## Instalação e Uso

Para utilizar este contrato, siga os passos abaixo:

1. Clone o repositório contendo o contrato:
   bash
   git clone https://github.com/seu-usuario/seu-contrato.git
   
2. Compile o contrato utilizando [Hardhat](https://hardhat.org/) ou [Truffle](https://www.trufflesuite.com/):
   bash
   cd seu-contrato
   npx hardhat compile
   
3. Faça o deploy do contrato na rede Ethereum:
   bash
   npx hardhat run scripts/deploy.js --network mainnet
   

## Interagindo com o Contrato

Você pode interagir com o contrato através de wallets Ethereum que suportam interação com contratos inteligentes, como [Metamask](https://metamask.io/), ou utilizando bibliotecas como [ethers.js](https://docs.ethers.io/v5/) ou [web3.js](https://web3js.readthedocs.io/).

## Licença

Este contrato está licenciado sob a Licença MIT - consulte o arquivo LICENSE.md para mais detalhes.

## Metadata para os NFT's:

# Atletas
- https://bafybeicmt44gvfsywvspsnrc3faqshdrdilu7ojj6ro4l7rsns5sbbi3eq.ipfs.w3s.link/Aaryn%20Rai.json
- https://bafybeihfulpufw2a32bvowq76swnbob5qnizcalq3gvzo6edr6k2y6t574.ipfs.w3s.link/Alex%20Fowler.json
- https://bafybeihb5blqqnovihqcn7zmetg7qxrrdmkuthicae3pmphou6k5xhduwm.ipfs.w3s.link/Alex%20Stirling.json
- https://bafybeihyvuwzebqhrjzw4q52wpytcwfra5yybjepwvxa22papt7kizbuxm.ipfs.w3s.link/Cameron%20Gooden.json
- https://bafybeif24rokdrbjjtlxxv7rfqo6oggi5jgvcxdthxatuaje4ncra4wqny.ipfs.w3s.link/Chris%20Ortiz.json
- https://bafybeiabx6lljivf6somlyfap3szdjs7s663w4rn74jf3ychlu5r6otgsa.ipfs.w3s.link/Donovan%20Mitchell.json
- https://bafybeiaixjli7ghmquzcsex2vkez3njwlxu5f5tdmlxn4smlgr2y5rggty.ipfs.w3s.link/Jalen%20Johnson.json
- https://bafybeihyguoteehfqjgitrhaporzwzd6wu4c4qfztlswkfnpmdvnbxliiq.ipfs.w3s.link/Lauren%20Jackson.json
- https://bafybeigk6azbeg4n6gknlnbw33q5t6mob5euknuyrcbkiiu2ttiryhw5qe.ipfs.w3s.link/Miela%20Goodchild.json
# Base
- https://bafybeihogoq6jhclzm2clilgucmfvytq2cbt7xzm6slmdsz4visvvektge.ipfs.w3s.link/base.json