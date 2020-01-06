#language: pt
Funcionalidade: Criação de Incluir Inscrições
  SENDO gestor ou coordenador
  POSSO realizar consultas no BI através de integração
  PARA QUE seja feita a inclusão de dívidas de outras inscrições na ação de cobranças.

  Contexto: Acesso a funcionalidade de incluir inscrições
    Dado que estou na funcionalidade de incluir inscrições

  Cenário: Cadastro de Incluir Inscrições com sucesso
    Quando preencho o campo cpf/cnpj ou número da inscrição corretamente
      | CPF / CNPJ     | Número da Inscrição  |
      |    99999999999 | 12345678901234567890 |
      | 99999999999999 | 12345678901234567890 |
      |    99999999999 |                      |
      |                | 12345678901234567890 |
    E seleciono a opção Consultar
    Então ao ser acionado, deve buscar via integração com BI da AGETEC, todas as dívidas referentes aos filtros informados.
    E Aciono o botão confirmar.
    Então o sistema deve incluir as dívidas das incrições selecionadas.

  Esquema do Cenário: Campos obrigatórios
    Quando não preencho os campo <"cpf/cnpj"> e <"número da inscrição"> corretamente
      | CPF / CNPJ | Número da Inscrição |
      |            |                     |
    E seleciono a opção consultar
    Então o sistema exibe a mensagem "Campo obrigatório não preenchido."

  Esquema do Cenário: Item selecionado Obrigatório
    Quando preencho o campo cpf/cnpj ou número da inscrição corretamente
      | CPF / CNPJ     | Número da Inscrição  |
      |    99999999999 | 12345678901234567890 |
      | 99999999999999 | 12345678901234567890 |
      |    99999999999 |                      |
      |                | 12345678901234567890 |
    E seleciono a opção Consultar
    Então não seleciono nenhuma dividas das incrições.
    E Aciono o botão confirmar.
    Então o sistema exibe a mensagem "É necessária a seleção de pelo menos um registro".

  Esquema do Cenário: dívidas já selecionadas não foram pagas.
    Quando preencho o campo cpf/cnpj ou número da inscrição corretamente.
      | CPF / CNPJ     | Número da Inscrição  |
      |    99999999999 | 12345678901234567890 |
      | 99999999999999 | 12345678901234567890 |
      |    99999999999 |                      |
      |                | 12345678901234567890 |
    E seleciono a opção Consultar
    Então seleciono dividas das incrições que já estão em outra ação de cobrança e as mesmas não foram cobradas.
    E Aciono o botão confirmar.
    Então o sistema exibe a mensagem "Foi identificado que existem dívidas selecionadas que já estão em outra ação de cobrança e as mesmas ainda não foram cobradas. O que deve ser feito?".
    E inclui a dívidas selecionadas.
    Então o sistema deve persistir os registros com o status inicial “Sem Cobrança”. Caso a dívida selecionada já esteja em outra ação de cobrança, deve ser mantido o mesmo status que já possui.

  Esquema do Cenário: dívidas já selecionadas já foram pagas.
    Quando preencho o campo cpf/cnpj ou número da inscrição corretamente.
      | CPF / CNPJ     | Número da Inscrição  |
      |    99999999999 | 12345678901234567890 |
      | 99999999999999 | 12345678901234567890 |
      |    99999999999 |                      |
      |                | 12345678901234567890 |
    E seleciono a opção Consultar
    Então seleciono dividas das incrições que já estão em outra ação de cobrança e as mesmas ja foram cobradas.
    E Aciono o botão confirmar.
    Então o sistema exibe a mensagem "Foi identificado que existem dívidas selecionadas que já estão em outra ação de cobrança e as mesmas já foram cobradas. O que deve ser feito?".
    E inclui as dívidas selecionadas.
    Então o sistema deve persistir os registros com o status inicial “Sem Cobrança”. Caso a dívida selecionada já esteja em outra ação de cobrança, deve ser mantido o mesmo status que já possui.
