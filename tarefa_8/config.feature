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

  Cenário: Todos as opções selecionadas
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
      | "0"  | "selecione a quantidade"         |
      | "1"  | "produtos inseridos com sucesso" |
      | "10" | "produtos inseridos com sucesso" |
      | "11" | "selecione apenas 10 unidades"   |

  Cenário: Compar mais de uma vez
    Dado que o cliente EBAC-SHOP tenha inserido no carrinho <a> unidades de um produto
    Quando tentar inserir a quantidade <b> do mesmo produto
    Então não deve ser permitido inserir esse produto no carrinho

    Exemplos: 
      | a    | b    |
      | "10" | "1"  |
      | "1"  | "10" |

  Cenário: Limpar opções
    Dado que os campos "cor", "tamanho" e "quantidade foram seleionados
    Quando clicar em "Limpar"
    Então todas as opções devem ser deselecionadas
