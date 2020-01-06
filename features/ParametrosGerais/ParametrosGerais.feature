#language: pt
Funcionalidade: Parâmetros Gerais
  SENDO o administrador do sistema
  POSSO configurar os parâmetros
  PARA QUE o sistema execute as atividades de forma automatizada

  Contexto: Acesso a funcionalidade de parametros gerais
    Dado que estou na funcionalidade parametros gerais

  Cenario: Mock Informacoes
    Dado moco as informacoes de inscricao divida
      | id | descricao       | status | isNoventaDias | isNoventaEUmDias | isNoventaESeisDias | isCentoESeisDias |
      |  1 | Envio de sms    | true   | false         | false            | false              | false            |
      |  2 | Envio Whatsapp  | true   | false         | false            | false              | false            |
      |  3 | Envio de E-mail | true   | false         | false            | false              | false            |
      |  4 | Ligação         | true   | false         | false            | false              | false            |
      |  5 | Protesto        | true   | false         | false            | false              | false            |
      |  6 | Negativação     | true   | false         | false            | false              | false            |
    Dado moco as informacoes de Cobranca Administrativa
      | id | descricao       | status | isCincoDias | isQuinzeDias | isTrintaDias | isSessentaDias | isSessentaEUmDias | isSessentaESeisDias |
      |  1 | Envio de sms    | true   | false       | false        | false        | false          | false             | false               |
      |  2 | Envio Whatsapp  | true   | false       | false        | false        | false          | false             | false               |
      |  3 | Envio de E-mail | true   | false       | false        | false        | false          | false             | false               |
      |  4 | Central (DICOB) | true   | false       | false        | false        | false          | false             | false               |
      |  5 | Ligação         | true   | false       | false        | false        | false          | false             | false               |
      |  6 | 2º Via Cobrança | true   | false       | false        | false        | false          | false             | false               |
      |  7 | Site PMGC       | true   | false       | false        | false        | false          | false             | false               |

  Esquema do Cenário: Atualização com sucesso
    Quando parametros gerais seleciono os campos corretamente "<id>", "<isCobrancaJudicial>", "<isExecucaoFiscal>", "<isRelatorio>", "<quantidadeCobrancaJudicial>", "<quantidadeExecucaoFiscal>" , "<quantidadeAtualizacaoRelatorio>","<quantidadeProcessamentoArquivo>"
    E parametros gerais seleciono a opção salvar
    Então parametros gerais persiste as informações na base de dados
    E o sistema exibe a mensagem "Registro salvo com sucesso."

    Exemplos: 
      | id | isCobrancaJudicial | isExecucaoFiscal | isRelatorio |quantidadeCobrancaJudicial | quantidadeExecucaoFiscal | quantidadeAtualizacaoRelatorio |quantidadeProcessamentoArquivo|
      |  1 | true               | true             | true        |                        150|                      210 |                              1 |                             3|
      |  1 | true               | false            | false       |                        150|                      210 |                              1 |                             3|  
      |  1 | false              | true             | false       |                        150|                      210 |                              1 |                             3|
      |  1 | false              | false            | true        |                        150|                     210  |                              1 |                             3|
  
  Cenário: Atualização com sucesso Inscrição divida
    Quando parametros inscrição divida seleciono os campos corretamente
      | id | descricao       | status | isNoventaDias | isNoventaEUmDias | isNoventaESeisDias | isCentoESeisDias |
      |  1 | Envio de sms    | true   | true          | false            | false              | false            |
      |  2 | Envio Whatsapp  | true   | true          | false            | false              | false            |
      |  3 | Envio de E-mail | true   | false         | true             | false              | false            |
      |  4 | Ligação         | true   | false         | false            | true               | false            |
      |  5 | Protesto        | true   | false         | false            | false              | true             |
      |  6 | Negativação     | true   | false         | false            | false              | true             |
    E parametros gerais seleciono a opção salvar
    Então parametros inscrição divida persiste as informações na base de dados
    E o sistema exibe a mensagem "Registro salvo com sucesso."

  Cenário: Atualização com sucesso Cobrança Administrativa
    Quando parametros cobrança administrativa seleciono os campos corretamente
      | id | descricao       | status | isCincoDias | isQuinzeDias | isTrintaDias | isSessentaDias | isSessentaEUmDias | isSessentaESeisDias |
      |  1 | Envio de sms    | true   | true        | true         | false        | true           | false             | false               |
      |  2 | Envio Whatsapp  | true   | true        | true         | false        | true           | false             | false               |
      |  3 | Envio de E-mail | true   | true        | true         | false        | true           | true              | false               |
      |  4 | Central (DICOB) | true   | true        | false        | false        | false          | false             | false               |
      |  5 | Ligação         | true   | false       | false        | true         | false          | false             | true                |
      |  6 | 2º Via Cobrança | true   | false       | false        | false        | false          | false             | false               |
      |  7 | Site PMGC       | true   | false       | false        | false        | false          | false             | false               |
    E parametros gerais seleciono a opção salvar
    Então parametros cobrança administrativa persiste as informações na base de dados
    E o sistema exibe a mensagem "Registro salvo com sucesso."

  Cenário: Atualização sem sucesso Cobrança Administrativa
    Quando parametros cobrança administrativa seleciono os campos erroneamente
      | id | descricao | status | isCincoDias | isQuinzeDias | isTrintaDias | isSessentaDias | isSessentaEUmDias | isSessentaESeisDias |
    E parametros gerais seleciono a opção salvar
    Então parametros cobrança administrativa não persiste as informações na base de dados

  Cenário: Atualização sem sucesso Inscrição divida
    Quando parametros inscrição divida seleciono os campos erroneamente
      | id | descricao | status | isNoventaDias | isNoventaEUmDias | isNoventaESeisDias | isCentoESeisDias |
    E parametros gerais seleciono a opção salvar
    Então parametros inscrição divida não persiste as informações na base de dados
    
    Cenário: Atualização sem sucesso Processamento Arquivo
    Quando parametros cobrança administrativa seleciono os campos erroneamente
      | id | descricao | status | isCincoDias | isQuinzeDias | isTrintaDias | isSessentaDias | isSessentaEUmDias | isSessentaESeisDias |
    E parametros gerais seleciono a opção salvar
    Então parametros cobrança administrativa não persiste as informações na base de dados

  Esquema do Cenário: Atualização sem sucesso
    Quando parametros gerais seleciono os campos erroneamente "<id>", "<isCobrancaJudicial>", "<isExecucaoFiscal>", "<isRelatorio>", "<quantidadeCobrancaJudicial>", "<quantidadeExecucaoFiscal>" , "<quantidadeProcessamentoArquivo>"
    E parametros gerais seleciono a opção salvar
    Então parametros gerais não persiste as informações na base de dados

    Exemplos: 
      | id | isCobrancaJudicial | isExecucaoFiscal | isRelatorio | quantidadeCobrancaJudicial | quantidadeExecucaoFiscal | quantidadeAtualizacaoRelatorio |quantidadeAtualizacaoRelatorio|quantidadeProcessamentoArquivo|
      |    |                    |                  |             |                            |                          |                                |                              |                              |
      |    | false              | false            | true        |                        150 |                      210 |                              1 |                              |                              |
