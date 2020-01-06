#language:pt

Funcionalidade: Enviar Alerta Execucao Fiscal
  SENDO um temporizador do sistema
  POSSO verificar quais dívidas atingiram determinado marco de acordo com o quadro “Execucao Fiscal”
  PARA QUE possa disparar automaticamente a ação correspondente ao marco

  Contexto: Serviço de alertas ativo no sistema SISCOB
    Dado que o temporizador identifica tempo de disparo automaticamente

  Esquema do Cenário: Disparo de acao pre definida em Alerta Execucao Fiscal
    Quando O sistema executa a sua rotina diariamente
    E identifica dividas com status diferente de “Divida Paga” que atingiram os marcos ativos definidos no painel de “Execucao Fiscal” da funcionalidade “Parametros Gerais”, contados a partir da data de vencimento da divida
    Então realiza a acao pre-definida de acordo com o painel

  Esquema do Cenário: Disparo de alerta Execucao Fiscal com sucesso
    Quando O sistema executa a sua rotina diariamente
    E identifica dividas com status diferente de “Divida Paga” que atingiram os marcos ativos definidos no painel de “Execucao Fiscal” da funcionalidade “Parametros Gerais”, contados a partir da data de vencimento da divida
    E identifica que não foi possivel realiza a acao pre-definida de acordo com o painel
    Então O sistema gera um alerta para os administradores do sistema com os dados: data atual, a identificação da dívida, identificação do contribuinte, identificação do imóvel  e Tipo Envio.

  Esquema do Cenário: Nenhum registro encontrado Execucao Fiscal
    Quando O sistema executa a sua rotina diariamente
    E Nao identifica dividas com status diferente de “Divida Paga” que atingiram os marcos ativos definidos no painel de “Execucao Fiscal” da funcionalidade “Parametros Gerais”, contados a partir da data de vencimento da divida
    Então Nao realiza nenhuma acao
