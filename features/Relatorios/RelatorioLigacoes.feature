#language: pt
Funcionalidade: Relatório de Ligações
  SENDO SENDO o administrador do sistema 
  POSSO gerar relatório
  PARA QUE eu possa visualizar se foi possível realizar o contato da ligação ou não
  
  Contexto: Acesso a funcionalidade
    Dado que estou na tela de Relatório de Ligações
    
    
    Cenário: Consulta Relatórios de ligações com sucesso
    Quando preencho o campo Período de com preenchimento automático com data atual.
    E aciono o botão Gerar Relatório
    Entao o sistema apresenta o grafico do Relatório com sucesso.
    
    
    Cenário: Nenhum resultado de Relatório encontrado
    Quando preencho o campo Período de com preenchimento automático com data atual.
    E aciono o botão Gerar Relatório
    Entao o sistema apresenta a mensgaem "Não foi possível gerar o relatório, por favor altere os dados do filtro."
    
    Esquema do Cenário: DataInválido em Relatório de Ligacoes
    Quando preencho os campos incorretos "<Periodo de >","<Periodo ate>" na tela de Relatório de Ligacoes
    Então o sistema não retorna registros em  Relatório de Ligacoes
    E o sistema apresenta a mensagem "Data Inválida."

    Exemplos: 
      | Periodo de | Periodo até |
      | 0000-10-01 | 2019-01-15  |
      | 2019-10-01 | 2019-00-01  |
      | 2019-10-01 | 2019-10-00  |
      | 2019-10-01 | 2019-02-30  |

  Esquema do Cenário: Período Inválido em Relatório de Ligacoes
    Quando preencho os campos incorretos "<Periodo de >","<Periodo ate>" na tela de Relatório Ligacoes
    Então o sistema não retorna os registros de Relatório de Ligacoes
    E o sistema apresenta a mensagem "Período Inválido."

    Exemplos: 
      | Periodo de | Periodo até |
      | 2019-10-01 | 2019-01-15  |
      |            | 2019-10-01  |
    
