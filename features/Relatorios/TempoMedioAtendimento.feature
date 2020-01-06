#language: pt
Funcionalidade: Relatório de Tempo Médio de Atendimento
  SENDO o administrador do sistema
  POSSO gerar relatório
  PARA QUE eu possa visualizar o tempo médio de atendimento
  
  Contexto: Acesso a funcionalidade Relatório de Tempo Médio de Atendimento
    Dado que estou na funcionalidade de Relatório de Tempo Médio de Atendimento

  Cenário: Consulta realizada com sucesso em Relatório de Tempo Médio de Atendimento
    Quando preencho campo de Periodo de com a data atual na tela de Relatório de Tempo Médio de Atendimento
    E seleciono a opção Gerar Relatorio
    Então o sistema realiza a pesquisa e retorna o grafico com sucesso

  Cenário: Nenhum resultado encontrado em Relatório de Tempo Médio de Atendimento
    Quando preencho campo de consulta corretamente de Relatório de Tempo Médio de Atendimento
    E seleciono opção Gerar Relatorio
    Então o sistema apresenta a mensagem “Não foi possível gerar o relatório, por favor altere os dados do filtro.”

  Esquema do Cenário: Data Inválido em Relatório de Tempo Médio de Atendimento
    Quando preencho os campos incorretos "<Periodo de >","<Periodo ate>" na tela de Relatório de Tempo Médio de Atendimento
    Então o sistema não retorna registros em  Relatório de Tempo Médio de Atendimento
    E o sistema apresenta a mensagem "Data Inválida."

    Exemplos: 
      | Periodo de | Periodo até |
      | 0000-10-01 | 2019-01-15  |
      | 2019-10-01 | 2019-00-01  |
      | 2019-10-01 | 2019-10-00  |
      | 2019-10-01 | 2019-02-30  |

  Esquema do Cenário: Período Inválido em Relatório de Tempo Médio de Atendimento
    Quando preencho os campos incorretos "<Periodo de >","<Periodo ate>" de Relatório de Tempo Médio de Atendimento
    E seleciono opção Gerar Relatorio
    Então o sistema não retorna registros em   Relatório de Tempo Médio de Atendimento
    E o sistema apresenta a mensagem "Período Inválido."

    Exemplos: 
      | Periodo de | Periodo até |
      | 2019-10-01 | 2019-01-15  |
      |            | 2019-10-01  |