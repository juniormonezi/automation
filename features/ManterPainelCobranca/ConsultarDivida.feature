#language: pt
Funcionalidade: Consultar Dividas
SENDO o consultor 
POSSO consultar as dívidas que estão atribuídas a mim
PARA QUE eu possa realizar a cobrança das dívidas

 Contexto: Acesso a funcionalidade de Consultar Dividas
 Dado que estou na funcionalidade de Consultar Dividas
 
   Cenário: Consulta realizada com sucesso
    Quando preencho campo de consulta corretamente na tela de consulta de Dividas
    E seleciono a opção Consultar
    Então o sistema realiza a pesquisa e retorna a as dividas com status diferente de Divida Paga com sucesso

  Cenário: Nenhum resultado encontrado
    Quando preencho os campos de pesquisa incorretamente na tela de consulta de Dividas
    E seleciono a opção consultar
    Então o sistema apresenta a mensagem “Nenhum registro encontrado.”