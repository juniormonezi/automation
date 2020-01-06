#language: pt
Funcionalidade: Detalhar Ações de Cobrança
  SENDO gestor ou coordenador
  POSSO visualizar os detalhes das ações
  PARA QUE seja possível analisar o status e realizar a distribuição de carteiras

  Contexto: Acesso a funcionalidade de Detalhar Ações de Cobrança.
    Dado que estou na funcionalidade de Detalhar Ações de Cobrança.

  Cenário: Detalhar ações de cobrança com sucesso.
    Quando verifico a opção de divisão da ação de cobrança.
    E aciono a opção Dividir Carteira
    Então sistema exibe a tabela com as informçoes da carteira.
    E aciono ação Atribuir.
    Então o sistema associa a carteira à um usuário e apresenta a mensagem "Registro salvo com sucesso."

  Cenário: Detalhar ações de cobrança com sucesso.
    Quando verifico a opção de divisão da ação de cobranças.
    E aciono o botão Dividir Carteira.
    Então sistema apresenta a tabela com as informçoes da carteira.
    E aciono ação Visualizar.
    Então o sistema exibe a interface detalahada da carteira e apresenta a mensagem "Registro salvo com sucesso."
