#language: pt
Funcionalidade: Atribuir Carteira ao Usuário
  SENDO gestor ou coordenador
  POSSO atribuir carteiras aos consultores
  PARA QUE o processo de cobrança se inicie

  Contexto: Acesso a funcionalidade de Atribuir Carteira ao Usuário.
    Dado que estou na funcionalidade de Atribuir Carteira ao Usuário.

  Cenário: Cadastrar Atribuir Carteira ao Usuário com sucesso.
    Quando seleciono um usuário que terá sua carteira atribuída.
    E aciono a opção Salvar
    Então o sistema exibi a mensagem "Registro salvo com sucesso."

  Esquema do Cenário: Campos obrigatórios.
    Quando não seleciono um usuário.
    E aciono Salvar
    Então o sistema exibi a mensagem "Campo obrigatório não preenchido."
