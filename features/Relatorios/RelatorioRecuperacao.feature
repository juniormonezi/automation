#language: pt
Funcionalidade: Relatório de Recuperação
  SENDO o administrador do sistema
  POSSO gerar relatório
  PARA QUE eu possa visualizar os valores de recuperação comparados com os valores de dívidas.

  Contexto: Acesso a funcionalidade Relatório de Recuperação
    Dado que estou na funcionalidade de Relatório de Recuperação
    
   
  Cenário: Consulta realizada com sucesso em Relatório de Recuperação
    Quando preencho campo de Periodo de com a data atual na tela de Relatório de Recuperação
    E seleciono a opção Gerar Relatorio
    Então o sistema deve gerar o relatório de acordo com os filtros selecionados

  Cenário: Nenhum resultado encontrado em Relatório de Recuperação
    Quando preencho campo de consulta corretamente na tela de Relatório de Recuperação
    E seleciono a opção Gerar Relatorio
    Então o sistema apresenta a mensagem “Não foi possível gerar o relatório, por favor altere os dados do filtro.”

  Esquema do Cenário: DataInválido em Relatório de Recuperação
    Quando preencho os campos incorretos "<Periodo de >","<Periodo ate>" na tela de Relatório de Recuperação
    E seleciono a opção Gerar Relatorio
    Então o sistema não retorna registros em   Relatório de Recuperação
    E o sistema apresenta a mensagem "Data Inválida."

    Exemplos: 
      | Periodo de | Periodo até |
      | 0000-10-01 | 2019-01-15  |
      | 2019-10-01 | 2019-00-01  |
      | 2019-10-01 | 2019-10-00  |
      | 2019-10-01 | 2019-02-30  |

  Esquema do Cenário: Período Inválido em Relatório de Recuperação
    Quando preencher os campos incorretos "<Periodo de >","<Periodo ate>" na tela de Relatório de Recuperação
    E seleciono opção Gerar Relatorio
    Então o sistema não retorna registros em  Relatório de Recuperação
    E o sistema apresenta a mensagem "Período Inválido."

    Exemplos: 
      | Periodo de | Periodo até |
      | 2019-10-01 | 2019-01-15  |
      |            | 2019-10-01  |
