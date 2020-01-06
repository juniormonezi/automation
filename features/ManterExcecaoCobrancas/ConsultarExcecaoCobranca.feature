#language: pt
Funcionalidade: Consultar Exeção de Cobrança
  SENDO o administrador do sistema
  POSSO listar as exceções de cobranças
  PARA QUE eu possa verificar quais inscrições estarão isentas de cobrança.

  Contexto: Acesso a funcionalidade
    Dado que estou na tela de Consulta de Exeção de Cobrança

  Cenário: Consulta realizada com sucesso
    Quando preencho os campos de pesquisa corretamente
    E seleciono a opção consultar
    Então o sistema realiza a pesquisa com sucesso

  Cenário: Nenhum resultado encontrado
    Quando preencho os campos de pesquisa incorretamente
    E seleciono a opção consultar
    Então o sistema não retorna resultados
