#language: pt
Funcionalidade: Consultar Histórico da Dívida
SENDO o consultor 
POSSO consultar o histórico da dívida
PARA QUE eu possa visualizar todas as ações que foram realizadas na dívida

Contexto: Acesso a funcionalidade de Consultar Histórico da Dívida
 Dado que estou na funcionalidade de Consultar Histórico da Dívida
 
 Cenário: Consulta Histórico da Dívida com sucesso
    Quando aciono o link do Histórico da Dívida
    Então o sistema deve buscar na base de dados todos os registros do histórico da dívida.