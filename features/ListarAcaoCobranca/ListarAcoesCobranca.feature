#language: pt
Funcionalidade: Cenário: Listar Ações de Cobrança.
   
  SENDO gestor ou coordenador
  POSSO listar todas as ações em formato de dashboard
  PARA QUE que eu tenha uma visualização negocial das ações

  Contexto: Acesso a funcionalidade de Listar Ações de Cobrança.
    Dado que estou na funcionalidade de Listar Ações de Cobrança.

  Cenário: Consulta realizado com sucesso.
    Quando preencho os campos <"Nome da Acao">, <"isStatus da Acao">
      | Nome da Ação | Status da Ação |
      | IPTU 2019    |                |
    Então o sistema realiza a pesquisa em tempo real.
