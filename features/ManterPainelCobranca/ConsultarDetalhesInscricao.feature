#language: pt
Funcionalidade: Consultar Detalhes da Inscrição
SENDO o consultor 
POSSO consultar os detalhes da inscrição
PARA QUE possa visualizar os detalhes da inscrição no momento da cobrança

Contexto: Acesso a funcionalidade de Consultar Detalhes da Inscrição
 Dado que estou na funcionalidade de Consultar Detalhes da Inscrição
 
 Cenário: Consulta realizada com sucesso
    Quando aciono o link no Numero da Inscrição
    Então o sistema abre a modal que realizada uma integração com o BI da Agetec para obtenção dos dados da inscrição.