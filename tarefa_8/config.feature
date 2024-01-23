# language: pt
Funcionalidade: Preparar produtos
Como cliente da EBAC-SHOP 
Quero configurar meu produto de acordo com meu tamanho e gosto 
E escolher a quantidade 
Para depois inserir no carrinho 

  Contexto: 
    Dado que o cliente EBAC-SHOP escolheu um produto

  Cenário: Apenas cor selecionada
    Quando selecionar uma cor
    E clicar em comprar
    Então deve  alertar que falta preencher tamnho e quantidade

  Cenário: Apenas tamanho selecionado
    Quando selecionar um tamanho
    E clicar em comprar
    Então deve alertar que falta preencher cor e quantidade

  Cenário: Apenas quantidade selecionada
    Quando selecionar uma cor
    E clicar em comprar
    Então deve alertar que falta preencher tamnho e cor

  Cenário: Todos as pções selecionadas
    Quando selecionar o tamanho
    E selecionar a cor
    E selecionar a quantidade
    E clicar em comprar
    Então o produto deve ser inserido no carrinho

  Esquema do Cenário: Combinações de seleção
    Quando selecionar  <param_1> do produto
    Mas não selecionar <param_2>
    E não selecionar <param_3>
    E clicar no em comprar
    Então deve alertar que falta preencher <param_2> e <param_3>

    Exemplos: 
      | param_1      | param_2   | param_3      |
      | "cor"        | "tamanho" | "quantidade" |
      | "tamanho"    | "cor"     | "quantidade" |
      | "quantidade" | "tamanho" | "cor"        |

  Esquema do Cenário: Validar quantidadade de produtos
    Dado o cliente que selecionou a cor e tamano de um produto
    Quando selecionar <x> quantidades do produto
    E clicar em comprar
    Então deve exibir a mensagem <msg>

    Exemplos: 
      | x    | msg                              |
      | "1"  | "produto inserido com sucesso"   |
      | "2"  | "produtos inseridos com sucesso" |
      | "3"  | "produtos inseridos com sucesso" |
      | "4"  | "produtos inseridos com sucesso" |
      | "5"  | "produtos inseridos com sucesso" |
      | "6"  | "produtos inseridos com sucesso" |
      | "7"  | "produtos inseridos com sucesso" |
      | "8"  | "produtos inseridos com sucesso" |
      | "9"  | "produtos inseridos com sucesso" |
      | "10" | "produtos inseridos com sucesso" |
      | "11" | "selecione apenas 10 unidades"   |

  Cenário: Compar mais de uma vez
    Dado que o cliente EBAC-SHOP tenha inserido no carrinho <a> unidades de um produto
    Quando tentar inserir a quantidade <b> do mesmo produto
    Então não deve ser permitido inserir esse produto no carrinho

    Exemplos: 
      | a    | b    |
      | "10" | "1"  |
      | "9"  | "2"  |
      | "8"  | "3"  |
      | "7"  | "4"  |
      | "6"  | "5"  |
      | "5"  | "6"  |
      | "4"  | "7"  |
      | "3"  | "8"  |
      | "2"  | "9"  |
      | "1"  | "10" |

  Cenário: Limpar cor
    Dado o cliente que selecionou um produto na EBAC-SHOP
    Quando selecionar a cor
    E clicar em "Limpar"
    Então a opção deve ser deselecionada

  Cenário: Limpar tamanho
    Dado o cliente que selecionou um produto na EBAC-SHOP
    Quando selecionar a tamanho
    E clicar em "Limpar"
    Então a opção deve ser deselecionada

  Cenário: Limpar quantidade
    Dado o cliente que selecionou um produto na EBAC-SHOP
    Quando selecionar a quantidade
    E clicar em "Limpar"
    Então a opção deve ser deselecionada

  Cenário: Limpar cor e tamanho
    Dado o cliente que selecionou um produto na EBAC-SHOP
    Quando selecionar cor
    E selcionar tamanho
    E clicar em "Limpar"
    Então as opções devem ser deselecionadas

  Cenário: Limpar cor e quantidade
    Dado o cliente que selecionou um produto na EBAC-SHOP
    Quando selecionar cor
    E selcionar quantidade
    E clicar em "Limpar"
    Então as opções devem ser deselecionadas

  Cenário: Limpar quantidade e tamanho
    Dado o cliente que selecionou um produto na EBAC-SHOP
    Quando selecionar quantidade
    E selcionar tamanho
    E clicar em "Limpar"
    Então as opções devem ser deselecionadas

  Cenário: Limpar todas as opções
    Quando selecionar todas as opções do produto
    E clicar em "Limpar"
    Então todas as opções devem ser deselecionadas
