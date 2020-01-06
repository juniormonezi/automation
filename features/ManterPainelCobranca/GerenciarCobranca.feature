#language: pt
Funcionalidade: Gerenciar Cobranca
  SENDO o consultor 
  POSSO visualizar as informações da cobrança
  PARA QUE possa realizar a cobrança das dívidas do contribuinte

  Contexto: Acesso a funcionalidade Painel de Cobranca
    Dado que estou na tela de Painel de Cobranca e visualizo a secao "Gerenciar Cobranca"

  Esquema do Cenário: Iniciar cobranca sem status com sucesso
    Quando O sistema identifica que a cobranca nao possui status
    Então O sistema buscar o endereço do contribuinte no BI da Agetec e atualizar o sistema com o endereço encontrado
    E seleciono a opção Iniciar Cobranca
    Então o sistema deve alterar o status da cobrança para “Cobranca Iniciada"
    E deve cadastrar um registro de historico de inicio da cobranca, contendo o protocolo gerado, o status “Cobranca Iniciada”, a data e hora e o usuario que realizou a acao
    E preencho a campo "Contato Realizado"
    E seleciono a opção salvar em Gerenciar Cobranca
    Então O sistema altera o status da cobrança para “Cobranca Efetuada”
    E deve cadastrar um registro de historico com o mesmo protocolo que foi atribuido ao inicio da cobranca,com os dados do preenchimento e status
    E deve gerar  o protocolo do historico da cobranca

  Esquema do Cenário: obrigatoriedade de campos ao Iniciar cobranca sem status
    Quando O sistema identifica que a cobranca nao possui status
    Então O sistema buscar o endereço do contribuinte no BI da Agetec e atualizar o sistema com o endereço encontrado
    E seleciono a opção Iniciar Cobranca
    Então o sistema deve alterar o status da cobrança para “Cobranca Iniciada"
    E deve cadastrar um registro de historico de inicio da cobranca, contendo o protocolo gerado, o status “Cobranca Iniciada”, a data e hora e o usuario que realizou a acao
    E seleciono a opção salvar em Gerenciar Cobranca
    Então O sistema apresenta a mensagem "Campo obrigatório não preenchido."

  Esquema do Cenário: Reagendar Cobranca com sucesso
    Quando O sistema identifica que a cobranca nao possui status
    Então O sistema buscar o endereço do contribuinte no BI da Agetec e atualizar o sistema com o endereço encontrado
    E seleciono a opção Iniciar Cobranca
    Então o sistema deve alterar o status da cobrança para “Cobranca Iniciada"
    E deve cadastrar um registro de historico de inicio da cobranca, contendo o protocolo gerado, o status “Cobranca Iniciada”, a data e hora e o usuario que realizou a acao
    E preencho os campos Telefone para Contato,Data,Hora
    E seleciono a opção salvar em Gerenciar Cobranca
    Então O sistema altera o status da cobrança para “Cobranca Efetuadacom Reagendamento”
    E deve cadastrar um registro de historico com o mesmo protocolo que foi atribuido ao inicio da cobranca,com os dados do preenchimento e status
    E deve gerar  o protocolo do historico da cobranca com dados do reagendamento

  Esquema do Cenário: obrigatoriedade de campos ao Reagendar Cobranca
    Quando O sistema identifica que a cobranca nao possui status
    Então O sistema buscar o endereço do contribuinte no BI da Agetec e atualizar o sistema com o endereço encontrado
    E seleciono a opção Iniciar Cobranca
    Então o sistema deve alterar o status da cobrança para “Cobranca Iniciada"
    E deve cadastrar um registro de historico de inicio da cobranca, contendo o protocolo gerado, o status “Cobranca Iniciada”, a data e hora e o usuario que realizou a acao
    E seleciono a opção salvar em Gerenciar Cobranca
    Então O sistema apresenta a mensagem "Campo obrigatório não preenchido."

    Exemplos: 
      | Telefone para Contato | Data       | Hora  |
      |                       | 2018-10-01 | 10:30 |
      |           99999999999 |            | 10:30 |
      |           99999999999 | 2018-10-01 |       |
      |                       |            |       |

  Esquema do Cenário: Telefone para contato inválido ao Reagendar Cobranca
    Quando O sistema identifica que a cobranca nao possui status
    Então O sistema buscar o endereço do contribuinte no BI da Agetec e atualizar o sistema com o endereço encontrado
    E seleciono a opção Iniciar Cobranca
    Então o sistema deve alterar o status da cobrança para “Cobranca Iniciada"
    E deve cadastrar um registro de historico de inicio da cobranca, contendo o protocolo gerado, o status “Cobranca Iniciada”, a data e hora e o usuario que realizou a acao
    E preencho os campos obrigatorios e o campo Telefone para contato invalido
    E seleciono a opção salvar em Gerenciar Cobranca
    Então O sistema apresenta a mensagem "Telefone Inválido."

    Exemplos: 
      | Telefone para Contato |
      |            9999999999 |
      |         9999999999999 |
      |                   999 |

  Esquema do Cenário: Data inválida ao Reagendar Cobranca
    Quando O sistema identifica que a cobranca nao possui status
    Então O sistema buscar o endereço do contribuinte no BI da Agetec e atualizar o sistema com o endereço encontrado
    E seleciono a opção Iniciar Cobranca
    Então o sistema deve alterar o status da cobrança para “Cobranca Iniciada"
    E deve cadastrar um registro de historico de inicio da cobranca, contendo o protocolo gerado, o status “Cobranca Iniciada”, a data e hora e o usuario que realizou a acao
    E preencho os campos obrigatorios e o campo data invalido
    E seleciono a opção salvar em Gerenciar Cobranca
    Então O sistema apresenta a mensagem "Data Inválida."

    Exemplos: 
      | Data       |
      | 2018-00-01 |
      | 2018-10-00 |
      | 0000-10-00 |
      | 2018-13-32 |

  Esquema do Cenário: Iniciar cobranca com status Cobrança Efetuada com Reagendamento com sucesso
    Quando O sistema identifica que a cobranca  possui status Cobrança Efetuada com Reagendamento
    Então O sistema buscar o endereço do contribuinte no BI da Agetec e atualizar o sistema com o endereço encontrado
    E seleciono a opção Iniciar Cobranca
    Então o sistema deve alterar o status da cobrança para “Cobranca Iniciada"
    E deve cadastrar um registro de historico de inicio da cobranca, contendo o protocolo gerado, o status “Cobranca Iniciada”, a data e hora e o usuario que realizou a acao
    E preencho a campo "Contato Realizado"
    E seleciono a opção salvar em Gerenciar Cobranca
    Então O sistema altera o status da cobrança para “Cobranca Efetuada”
    E deve cadastrar um registro de historico com o mesmo protocolo que foi atribuido ao inicio da cobranca,com os dados do preenchimento e status
    E deve gerar  o protocolo do historico da cobranca
