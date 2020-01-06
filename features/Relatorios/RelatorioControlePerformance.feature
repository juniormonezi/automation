#language: pt
Funcionalidade: Relatório de Controle de Performance
  SENDO o administrador do sistema
  POSSO gerar relatório
  PARA QUE eu possa visualizar o controle de performance de ligações do time de consultores

  Contexto: Acesso a funcionalidade Relatório de Controle de Performance
    Dado que estou na funcionalidade de Relatório de Controle de Performance

  Cenário: Consulta realizada com sucesso em Relatório de Controle de Performance
    Quando preencho campo de Periodo de com a data atual na tela de Relatório de Controle de Performance
    E seleciono a opção Gerar Relatorio
    Então o sistema realiza a pesquisa e retorna o grafico com sucesso

  Cenário: Nenhum resultado encontrado em Relatório de Controle de Performance
    Quando preencho campo de consulta corretamente na tela de Relatório de Controle de Performance
    E seleciono a opção Gerar Relatorio
    Então o sistema apresenta a mensagem “Não foi possível gerar o relatório, por favor altere os dados do filtro.”

  Esquema do Cenário: DataInválido em Relatório de Controle de Performance
    Quando preencho os campos incorretos "<Periodo de >","<Periodo ate>" na tela de Relatório de Controle de Performance
    E seleciono a opção Gerar Relatorio
    Então o sistema não retorna registros em   Relatório de Controle de Performance
    E o sistema apresenta a mensagem "Data Inválida."

    Exemplos: 
      | Periodo de | Periodo até |
      | 0000-10-01 | 2019-01-15  |
      | 2019-10-01 | 2019-00-01  |
      | 2019-10-01 | 2019-10-00  |
      | 2019-10-01 | 2019-02-30  |

  Esquema do Cenário: Período Inválido em Relatório de Controle de Performance
    Quando preencho os campos incorretos "<Periodo de >","<Periodo ate>" na tela de Relatório de Controle de Performance
    E seleciono a opção Gerar Relatorio
    Então o sistema não retorna registros em  Relatório de Controle de Performance
    E o sistema apresenta a mensagem "Período Inválido."

    Exemplos: 
      | Periodo de | Periodo até |
      | 2019-10-01 | 2019-01-15  |
      |            | 2019-10-01  |
