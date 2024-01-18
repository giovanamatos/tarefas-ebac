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

  Cenário: Todos aopções selecionadas
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

  Esquema do Cenário: Limpar uma opção
    Quando selecionar <opcao>
    E clicar em "Limpar"
    Então a opção deve ser deselecionada

    Exemplos: 
      | opcao        |
      | "cor"        |
      | "tamanho"    |
      | "quantidade" |

  Esquema do Cenário: Limpar duas opções
    Quando selecionar <opcao_1>
    E selcionar <opcao_2>
    E clicar em "Limpar"
    Então as opções devem ser deselecionadas

    Exemplos: 
      | opcao     | opcao_2      |
      | "cor"     | "tamanho"    |
      | "cor"     | "quantidade" |
      | "tamanho" | "quantidade" |

  Cenário: Limpar todas as opções
    Quando selecionar todas as opções do produto
    E clicar em "limpar"
    Então todas as opções devem ser deselecionadas
