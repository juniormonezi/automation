#language: pt
Funcionalidade: Relatório de Media de Ligacoes
  SENDO o administrador do sistema
  POSSO gerar relatório
  PARA QUE eu possa visualizar a média de ligações de atendimento

  Contexto: Acesso a funcionalidade Relatório de Media de Ligacoes
    Dado que estou na funcionalidade de Relatório de Media de Ligacoes

  Cenário: Consulta realizada com sucesso em Relatório de Media de Ligacoes
    Quando preencho campo de Periodo de com a data atual na tela de Relatório de Media de Ligacoes
    E seleciono a opção Gerar Relatorio
    Então o sistema realiza a pesquisa e retorna o grafico com sucesso

  Cenário: Nenhum resultado encontrado em Relatório de Media de Ligacoes
    Quando preencho campo de consulta corretamente na tela de Relatório de Media de Ligacoes
    E seleciono a opção Gerar Relatorio
    Então o sistema apresenta a mensagem “Não foi possível gerar o relatório, por favor altere os dados do filtro.”

  Esquema do Cenário: DataInválido em Relatório de Media de Ligacoes
    Quando preencho os campos incorretos "<Periodo de >","<Periodo ate>" na tela de Relatório de Media de Ligacoes
    Então o sistema não retorna registros em  Relatório de Media de Ligacoes
    E o sistema apresenta a mensagem "Data Inválida."

    Exemplos: 
      | Periodo de | Periodo até |
      | 0000-10-01 | 2019-01-15  |
      | 2019-10-01 | 2019-00-01  |
      | 2019-10-01 | 2019-10-00  |
      | 2019-10-01 | 2019-02-30  |

  Esquema do Cenário: Período Inválido em Relatório de Media de Ligacoes
    Quando preencho os campos incorretos "<Periodo de >","<Periodo ate>" na tela de Relatório de Media de Ligacoes
    E seleciono a opção Gerar Relatorio
    Então o sistema não retorna registros em   Relatório de Media de Ligacoes
    E o sistema apresenta a mensagem "Período Inválido."

    Exemplos: 
      | Periodo de | Periodo até |
      | 2019-10-01 | 2019-01-15  |
      |            | 2019-10-01  |