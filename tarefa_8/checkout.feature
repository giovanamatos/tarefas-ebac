# language: pt
Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC-SHOP 
Quero fazer concluir meu cadastro    
Para finalizar minha compra 

  Contexto: 
    Dado um cliente que tenha comprado na loja EBAC-SHOP

  Cenário: Cadastro obrigatório com sucesso
    Quando preencher todos os campos com asterísco
    E clicar em Finalizar compra
    Então o cadastro deve ser realizado com sucesso

  Esquema do Cenário: Cadastro obrigatório com falha
    Quando acessar a tela de checkout
    E preencher os campos obrigatótios com <Nome>,<Sobrenome>,<Endereço>,<Cidade>,<CEP>,<Telefone>,<Endereço de e-mail>
    E clicar em Finalizar compra
    Então o sistema deve exibir mensagem de alerta

    Exemplos: 
      | Nome      | Sobrenome | País     | Endereço    | Cidade   | CEP         | Telefone   | Endereço de e-mail |
      | "Beatriz" | "Souza"   | "Brasil" | "Rua 2, 23" | "Brotas" | "04000-002" | "34267878" | ""                 |
      | "Beatriz" | "Souza"   | "Brasil" | "Rua 2, 23" | "Brotas" | "04000-002" | ""         | "teste@teste.com"  |
      | "Beatriz" | "Souza"   | "Brasil" | "Rua 2, 23" | "Brotas" | ""          | "34267878" | "teste@teste.com"  |
      | "Beatriz" | "Souza"   | "Brasil" | "Rua 2, 23" | ""       | "04000-002" | "34267878" | "teste@teste.com"  |
      | "Beatriz" | "Souza"   | "Brasil" | ""          | "Brotas" | "04000-002" | "34267878" | "teste@teste.com"  |
      | "Beatriz" | ""        | ""       | "Rua 2, 23" | "Brotas" | "04000-002" | "34267878" | "teste@teste.com"  |
      | ""        | "Souza"   | "Brasil" | "Rua 2, 23" | "Brotas" | "04000-002" | "34267878" | "teste@teste.com"  |
      | ""        | ""        | ""       | ""          | ""       | ""          | ""         | ""                 |
      | "Beatriz" | "Souza"   | "Brasil" | "Rua 2, 23" | "Brotas" | "04000-002" | ""         | ""                 |
      | "Beatriz" | "Souza"   | "Brasil" | "Rua 2, 23" | "Brotas" | ""          | ""         | ""                 |
      | "Beatriz" | "Souza"   | "Brasil" | "Rua 2, 23" | ""       | ""          | ""         | ""                 |
      | "Beatriz" | "Souza"   | "Brasil" | ""          | ""       | ""          | ""         | ""                 |
      | "Beatriz" | "Souza"   | ""       | ""          | ""       | ""          | ""         | ""                 |
      | "Beatriz" | ""        | ""       | ""          | ""       | ""          | ""         | ""                 |
      | "Beatriz" | ""        | "Brasil" | ""          | "Brotas" | ""          | "34267878" | ""                 |
      | ""        | "Souza"   | ""       | "Rua 2, 23" | ""       | "04000-002" | ""         | "teste@teste.com"  |
      | ""        | "Souza"   | "Brasil" | "Rua 2, 23" | "Brotas" | "04000-002" | "34267878" | "teste@teste.com"  |
      | ""        | "Souza"   | ""       | "Rua 2, 23" | "Brotas" | "04000-002" | "34267878" | "teste@teste.com"  |
      | ""        | "Souza"   | ""       | ""          | "Brotas" | "04000-002" | "34267878" | "teste@teste.com"  |
      | ""        | "Souza"   | ""       | ""          | ""       | "04000-002" | "34267878" | "teste@teste.com"  |
      | ""        | "Souza"   | ""       | ""          | ""       | ""          | "34267878" | "teste@teste.com"  |
      | ""        | "Souza"   | ""       | ""          | ""       | ""          | ""         | "teste@teste.com"  |
      | ""        | "Souza"   | ""       | ""          | ""       | ""          | ""         | ""                 |
      | ""        | ""        | "Brasil" | "Rua 2, 23" | "Brotas" | "04000-002" | "34267878" | "teste@teste.com"  |
      | ""        | ""        | "Brasil" | ""          | "Brotas" | "04000-002" | "34267878" | "teste@teste.com"  |
      | ""        | ""        | "Brasil" | ""          | ""       | "04000-002" | "34267878" | "teste@teste.com"  |
      | ""        | ""        | "Brasil" | ""          | ""       | ""          | "34267878" | "teste@teste.com"  |
      | ""        | ""        | "Brasil" | ""          | ""       | ""          | ""         | "teste@teste.com"  |
      | ""        | ""        | "Brasil" | ""          | ""       | ""          | ""         | ""                 |
      | ""        | ""        | ""       | "Rua 2, 23" | "Brotas" | "04000-002" | "34267878" | "teste@teste.com"  |
      | ""        | ""        | ""       | "Rua 2, 23" | ""       | "04000-002" | "34267878" | "teste@teste.com"  |
      | ""        | ""        | ""       | "Rua 2, 23" | ""       | ""          | "34267878" | "teste@teste.com"  |
      | ""        | ""        | ""       | "Rua 2, 23" | ""       | ""          | ""         | "teste@teste.com"  |
      | ""        | ""        | ""       | "Rua 2, 23" | ""       | ""          | ""         | ""                 |
      | ""        | ""        | ""       | ""          | "Brotas" | "04000-002" | "34267878" | "teste@teste.com"  |
      | ""        | ""        | ""       | ""          | "Brotas" | ""          | "34267878" | "teste@teste.com"  |
      | ""        | ""        | ""       | ""          | "Brotas" | ""          | "34267878" | "teste@teste.com"  |
      | ""        | ""        | ""       | ""          | "Brotas" | ""          | ""         | "teste@teste.com"  |
      | ""        | ""        | ""       | ""          | "Brotas" | ""          | ""         | ""                 |
      | ""        | ""        | ""       | ""          | ""       | "04000-002" | "34267878" | "teste@teste.com"  |
      | ""        | ""        | ""       | ""          | ""       | "04000-002" | ""         | "teste@teste.com"  |
      | ""        | ""        | ""       | ""          | ""       | "04000-002" | ""         | ""                 |
      | "Beatriz" | "Souza"   | "Brasil" | "Rua 2, 23" | ""       | "04000-002" | ""         | ""                 |
      | "Beatriz" | "Souza"   | "Brasil" | ""          | ""       | "04000-002" | ""         | ""                 |
      | "Beatriz" | "Souza"   | ""       | ""          | ""       | "04000-002" | ""         | ""                 |
      | "Beatriz" | ""        | ""       | ""          | ""       | "04000-002" | ""         | ""                 |
      
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
