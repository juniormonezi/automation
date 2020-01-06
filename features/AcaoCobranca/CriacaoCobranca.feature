#language : pt
Funcionalidade: Consultar Tipos de Benefícios Fiscais.
  SENDO o gestor ou coordenador
  POSSO realizar solicitação de criação de ação de cobrança para o BI via integração
  PARA QUE seja possível a criação de ações de cobranças no sistema

  Contexto: Acesso a funcionalidade
    Dado que estou na tela de Cadastro de Ação de Cobrança

  Cenário: Cadastro Ação de Cobrança realizado com sucesso
    Quando preencho o campo Nome da Ação de Cobrança
      | Nome da Ação de Cobrança |
      | IPTU 2018                |
    E seleciono o primeiro Radionbutton para dívida em outra ação não cobrada
    E seleciono o primeiro Radionbutton para dívida em outra ação cobrada
    E Preencho o campo Tributo e Competência com um valor da Lista
    E seleciono a opção Gerar Ação de Cobrança
    Então o sistema exibe a mensagem  de confirmação "Após confirmada a criação da ação de cobrança, serão importadas todas as dívidas para o sistema de acordo com todos os filtros informados. Deseja confirmar?"
    Quando confirmo a mensagem
    Então o sistema deve realizar a integração com o BI da AGETEC passando os filtros preenchidos pelo usuário
    E o BI deve retornar o nome do arquivo que será processado futuramente pelo sistema
    E o sistema deve criar a nova solicitação de ação de cobrança, armazenando as informações na base de dados
    E insere o status da solicitação deve ser “Aguardando Processamento”
    E o sistema apresenta a mensagem "Registro salvo com sucesso."

  Cenário: Cadastro Ação de Cobrança realizado com sucesso
    Quando preencho o campo Nome da Ação de Cobrança
      | Nome da Ação de Cobrança |
      | IPTU 2018                |
    E seleciono o primeiro Radionbutton para dívida em outra ação não cobrada
    E seleciono o segundo Radionbutton para dívida em outra ação cobrada
    E Preencho o campo Tributo e Competência com um valor da Lista
    E seleciono a opção Gerar Ação de Cobrança
    Então o sistema exibe a mensagem  de confirmação "Após confirmada a criação da ação de cobrança, serão importadas todas as dívidas para o sistema de acordo com todos os filtros informados. Deseja confirmar?"
    Quando confirmo a mensagem
    Então o sistema deve realizar a integração com o BI da AGETEC passando os filtros preenchidos pelo usuário
    E o BI deve retornar o nome do arquivo que será processado futuramente pelo sistema
    E o sistema deve criar a nova solicitação de ação de cobrança, armazenando as informações na base de dados
    E insere o status da solicitação deve ser “Aguardando Processamento”
    E o sistema apresenta a mensagem "Registro salvo com sucesso."

  Cenário: Cadastro Ação de Cobrança realizado com sucesso
    Quando preencho o campo Nome da Ação de Cobrança
      | Nome da Ação de Cobrança |
      | IPTU 2018                |
    E seleciono o segundo Radionbutton para dívida em outra ação não cobrada
    E seleciono o segundo Radionbutton para dívida em outra ação cobrada
    E Preencho o campo Tributo e Competência com um valor da Lista
    E seleciono a opção Gerar Ação de Cobrança
    Então o sistema exibe a mensagem  de confirmação "Após confirmada a criação da ação de cobrança, serão importadas todas as dívidas para o sistema de acordo com todos os filtros informados. Deseja confirmar?"
    Quando confirmo a mensagem
    Então o sistema deve realizar a integração com o BI da AGETEC passando os filtros preenchidos pelo usuário
    E o BI deve retornar o nome do arquivo que será processado futuramente pelo sistema
    E o sistema deve criar a nova solicitação de ação de cobrança, armazenando as informações na base de dados
    E insere o status da solicitação deve ser “Aguardando Processamento”
    E o sistema apresenta a mensagem "Registro salvo com sucesso."

  Cenário: Cadastro Ação de Cobrança realizado com sucesso
    Quando preencho o campo Nome da Ação de Cobrança
      | Nome da Ação de Cobrança |
      | IPTU 2018                |
    E seleciono o segundo Radionbutton para dívida em outra ação não cobrada
    E seleciono o primeiro Radionbutton para dívida em outra ação cobrada
    E Preencho o campo Tributo e Competência com um valor da Lista
    E seleciono a opção Gerar Ação de Cobrança
    Então o sistema exibe a mensagem  de confirmação "Após confirmada a criação da ação de cobrança, serão importadas todas as dívidas para o sistema de acordo com todos os filtros informados. Deseja confirmar?"
    Quando confirmo a mensagem
    Então o sistema deve realizar a integração com o BI da AGETEC passando os filtros preenchidos pelo usuário
    E o BI deve retornar o nome do arquivo que será processado futuramente pelo sistema
    E o sistema deve criar a nova solicitação de ação de cobrança, armazenando as informações na base de dados
    E insere o status da solicitação deve ser “Aguardando Processamento”
    E o sistema apresenta a mensagem "Registro salvo com sucesso."

  Cenário: Obrigatoriedade de campos
    Quando em Ação de Cobrança não preencho os campos Nome da Ação de Cobrança, RadioButton para dívida não cobrada, RadioButton para dívida não cobrada, Tributo, Competência
    E seleciono a opção Gerar Ação de Cobrança
    Então Ação de cobrança não persiste as informações na base de dados
    E o sistema exibe a mensagem "Campo obrigatório não preenchido."

  Esquema do Cenário: Campo data preenchido incorreto
    Quando preencho o campo Nome da Ação de Cobrança
      | Nome da Ação de Cobrança |
      | IPTU 2018                |
    E seleciono o primeiro Radionbutton para dívida em outra ação não cobrada
    E seleciono o primeiro Radionbutton para dívida em outra ação cobrada
    E Preencho o campo Tributo e Competência com um valor da Lista
    E preencho o campo "<Data de Criação>"
      | Data de Criação |
      | 2019-10-32      |
      | 2019-13-02      |
      | 0000-12-02      |
    E seleciono a opção Gerar Ação de Cobrança
    Então Ação de cobrança não persiste as informações na base de dados
    E o sistema exibe a mensagem "Data Inválida."

  Esquema do Cenário: Campo CPF/CNPJ com CPF preenchido incorreto
    Quando preencho o campo Nome da Ação de Cobrança
      | Nome da Ação de Cobrança |
      | IPTU 2018                |
    E seleciono o primeiro Radionbutton para dívida em outra ação não cobrada
    E seleciono o primeiro Radionbutton para dívida em outra ação cobrada
    E Preencho o campo Tributo e Competência com um valor da Lista
    E preencho o campo "<CPF/CNPJ>"
      | CPF/CNPJ       |
      | 000.000.000.00 |
      | 395.870.398.96 |
      |    395.870.398 |
    E seleciono a opção Gerar Ação de Cobrança
    Então Ação de cobrança não persiste as informações na base de dados
    E o sistema exibe a mensagem "CPF Inválido."

  Esquema do Cenário: Campo CPF/CNPJ com CNPJ preenchido incorreto
    Quando preencho o campo Nome da Ação de Cobrança
      | Nome da Ação de Cobrança |
      | IPTU 2018                |
    E seleciono o primeiro Radionbutton para dívida em outra ação não cobrada
    E seleciono o primeiro Radionbutton para dívida em outra ação cobrada
    E Preencho o campo Tributo e Competência com um valor da Lista
    E preencho o campo "<CPF/CNPJ>"
      | CPF/CNPJ               |
      | 98.644.005/0001-00     |
      | 000.000.000.00/0000-00 |
      | 98.644.005/0001        |
    E seleciono a opção Gerar Ação de Cobrança
    Então Ação de cobrança não persiste as informações na base de dados
    E o sistema exibe a mensagem "CNPJ Inválido."
