# language: pt
Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC-SHOP 
Quero fazer concluir meu cadastro    
Para finalizar minha compra 

  Contexto: 
    Dado um cliente que steja na página de checkout da loja EBAC-SHOP

  Cenário: Cadastro obrigatório com sucesso
    Quando preencher todos os campos com asterísco
    E clicar em Finalizar compra
    Então o cadastro deve ser realizado com sucesso

  Esquema do Cenário: Cadastro obrigatório com falha
    Quando finalizar a compra sem preencher algum campo obigatório
    Então o sistema deve exibir mensagem de alerta "Preencha todos os campos"
      
  Cenário: Cadastro sem preencer nome da empresa
    Quando acessar a tela de checkout
    E preencher todos os dados com asterísco
    Mas não preencher o campo "Nome da empresa(opcional)"
    E clicar em Finalizar compra
    Então o cadastro deve ser realizado

  Cenário: Cadastro sem preencer o campo país (opcional)
    Quando acessar a tela de checkout
    E preencher todos os dados com asterísco
    Mas não preencher o campo "País(opcional)"
    E clicar em Finalizar compra
    Então o cadastro deve ser realizado

  Cenário: Mensagem de erro para e-mai inválido
    Dado um cliente que tenha preenchido dos os campos obrigatótios do cadastro
    Quando clicar em finalizar a compra com um endereço de <Email> inválido
    Então o sistema deve exibir uma mensagem de erro

    Exemplos: 
      | Email           |
      | "teste.com.br"  |
      | "teste@"        |
      | "teste@.com.br" |
      | "teste@.com"    |
      | "teste@.br"     |
      | "teste@."       |
