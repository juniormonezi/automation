#language: pt
Funcionalidade: Consultar Historico da Cobrança
  SENDO o consultor 
  POSSO consultar o histórico da cobrança
  PARA QUE eu possa visualizar todas as ações que foram realizadas na cobrança

  Contexto: Acesso a funcionalidade Painel de Cobranca
    Dado que estou na funcionalidade de funcionalidade Painel de Cobranca e visualizo o historico da cobranca

  Cenário: Exibir Historico da Cobranca
    Quando o sistema deve buscar na base de dados todos os registros do histórico da cobrança
    Então o sistema realiza a pesquisa e retorna as informações com sucesso,ordenadas com as datas/horas mais recentes no topo.
