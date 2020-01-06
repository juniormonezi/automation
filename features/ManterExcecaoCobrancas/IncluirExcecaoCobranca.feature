#language: pt
Funcionalidade: Incluir Exceção de Cobrança
  SENDO o administrador do sistema
  POSSO listar todos os imóveis relacionados 
  PARA QUE possa selecionar quais terão exceção de cobrança.

  Contexto: Acesso a funcionalidade de inclusão de Exceção de Cobrança
    Dado que estou na funcionalidade de inclusão de Exceção de Cobrança

  Cenário: Cadastro de exceção de cobrança
    Quando preencho todos os campos corretamente
      | Nº Inscrição | CPF         | Nome   | Tributo | Competência | Endereço            | Bairro |
      |     12234566 | 11111111111 | Junior |         |        1234 | Rua, 15 de Novembro | Centro |
    E seleciono a opção Consultar
    Então o sistema deve realizar a pesquisa na base de dados Tique Front e retornar os registros que atendem os critérios.
   
