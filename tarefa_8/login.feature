# language: pt
Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP 
Quero fazer o login (autenticação) na plataforma   
Para visualizar meus pedidos 

  Contexto: 
    Dado que um cliente cadastrado com itens no carrinho acesse a plataforma EBAC-SHOP

  Cenário: Login válido
    Quando inserir email e senha corretos
    Então cliente deve ser redirecionado para tela de checkout

  Cenário: Validação do login inválido
    Quando inserir <email> no campo "Username or email address"
    E inserir <senha> no campo "Password"
    E clica em "Login"
    Então o cliente deve <resultado>

    Exemplos: 
      | email                | senha       | resultado                    |
      | "valido@email.com"   | "incorreta" | "Usuário ou senha inválidos” |
      | "invalido@email.com" | "incorreta" | "Usuário ou senha inválidos” |
      | "invalido@email.com" | "correta"   | "Usuário ou senha inválidos” |
      | "invalido@email.com" | " "         | "Usuário ou senha inválidos” |
      | "valido@email.com"   | " "         | "Usuário ou senha inválidos” |
      | " "                  | "incorreta" | "Usuário ou senha inválidos” |
      | " "                  | "correta"   | "Usuário ou senha inválidos” |
      | " "                  | " "         | "Usuário ou senha inválidos” |
