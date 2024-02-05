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

  Cenário: Cadastro obrigatório com falha
    Quando finalizar a compra sem preencher algum campo obigatório
    Então o sistema deve exibir mensagem de alerta "Preencha todos os campos"

  Cenário: Cadastro sem preencher campos não obrigatório 
    Quando finalizar a compra sem preencher algum campo não obigatório
    Então o cadastro deve ser finalizado com sucesso

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
