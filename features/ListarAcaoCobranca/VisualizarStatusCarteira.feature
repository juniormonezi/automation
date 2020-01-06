#language: pt
Funcionalidade: Visualizar Status da Carteira
  SENDO gestor ou coordenador
  POSSO visualizar os detalhes da carteira atribuída
  PARA QUE seja possível analisar o andamento das cobranças da carteira.

  Contexto: Acesso a funcionalidade de Visualizar Status da Carteira.
    Dado que estou na funcionalidade de Visualizar Status da Carteira.

  Cenário: Visualizar status carteira Andamento com sucesso.
    Quando visualiza o gráfico Andamento.
    Então sistema deve exibir a quantidade de inscrições ja cobradas.

  Cenário: Visualizar status carteira Contato com sucesso.
    Quando visualiza o gráfico Contato.
    Então sistema deve exibir a quantidade tentativas de contato que obtiveram sucesso ou não.
