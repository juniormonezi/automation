#language: pt
Funcionalidade: Emitir Guia
  SENDO o consultor
  POSSO emitir e enviar a guia da dívida
  PARA QUE o contribuinte possa realizar o pagamento

  Contexto: Acesso a funcionalidade de Emitir Guia
    Dado que estou na funcionalidade de Emitir Guia

  Cenário: Criar Massa em Emitir Guia
    Então a massa para execução dos testes é criada em emitir guia

  Esquema do Cenário: Emissão de guia por e-mail realizada com sucesso
    Quando seleciono a opção "1" na forma de envio em emitir guia
    E preencho o campo "<email/telefone>" em emitir guia
    E seleciona a opção salvar em emitir guia
    Então o sistema gera a guia de pagamento com sucesso em emitir guia

    Exemplos: 
      | email/telefone              |
      | mockemail@mockserver.com.br |

  Esquema do Cenário: Emissão de guia por whatsapp realizada com sucesso
    Quando seleciono a opção "2" na forma de envio em emitir guia
    E preencho o campo "<email/telefone>" em emitir guia
    E seleciona a opção salvar em emitir guia
    Então o sistema gera a guia de pagamento com sucesso em emitir guia

    Exemplos: 
      | email/telefone |
      |    16997777777 |

  Esquema do Cenário: Emissão de guia por sms realizada com sucesso
    Quando seleciono a opção "3" na forma de envio em emitir guia
    E preencho o campo "<email/telefone>" em emitir guia
    E seleciona a opção salvar em emitir guia
    Então o sistema gera a guia de pagamento com sucesso em emitir guia

    Exemplos: 
      | email/telefone |
      |    16988888888 |

  Esquema do Cenário: Emissão de guia por e-mail,whatsapp e sms, realizada com sucesso
    Quando seleciono todas as opções  na forma de envio em emitir guia
    E preencho o campo "<e-mail>, <whatsapp>, <sms>" em emitir guia
    E seleciona a opção salvar em emitir guia
    Então o sistema gera a guia de pagamento com sucesso em emitir guia

    Exemplos: 
      | e-mail             | whatsapp    | sms         |
      | teste@teste.com.br | 16988888888 | 16999999999 |

  Esquema do Cenário: Emissão de guia por e-mail,whatsapp e sms, não preenchido
    Quando seleciono todas as opções  na forma de envio em emitir guia
    E preencho o campo "<e-mail>, <whatsapp>, <sms>" em emitir guia
    E seleciona a opção salvar em emitir guia
    Então o sistema não gera a guia de pagamento com sucesso em emitir guia
    E o sistema apresenta a mensagem "Campo obrigatório não preenchido."

    Exemplos: 
      | e-mail             | whatsapp    | sms         |
      | teste@teste.com.br |             |             |
      |                    | 16988888888 |             |
      |                    |             | 16999999999 |
      |                    |             |             |

  Esquema do Cenário: Emissão de guia com forma de envio não preenchido
    Quando seleciono a opção "" na forma de envio em emitir guia
    E preencho o campo "<email/telefone>" em emitir guia
    E seleciona a opção salvar em emitir guia
    Então o sistema não gera a guia de pagamento com sucesso em emitir guia
    E o sistema apresenta a mensagem "Campo obrigatório não preenchido."

    Exemplos: 
      | email/telefone |
      |                |

  Esquema do Cenário: Emissão de guia com e-mail não preenchido
    Quando seleciono a opção "1" na forma de envio em emitir guia
    E preencho o campo "<email/telefone>" em emitir guia
    E seleciona a opção salvar em emitir guia
    Então o sistema não gera a guia de pagamento com sucesso em emitir guia
    E o sistema apresenta a mensagem "Campo obrigatório não preenchido."

    Exemplos: 
      | email/telefone |
      |                |

  Esquema do Cenário: Emissão de guia com whatsapp não preenchido
    Quando seleciono a opção "2" na forma de envio em emitir guia
    E preencho o campo "<email/telefone>" em emitir guia
    E seleciona a opção salvar em emitir guia
    Então o sistema não gera a guia de pagamento com sucesso em emitir guia
    E o sistema apresenta a mensagem "Campo obrigatório não preenchido."

    Exemplos: 
      | email/telefone |
      |                |

  Esquema do Cenário: Emissão de guia com sms não preenchido
    Quando seleciono a opção "3" na forma de envio em emitir guia
    E preencho o campo "<email/telefone>" em emitir guia
    E seleciona a opção salvar em emitir guia
    Então o sistema não gera a guia de pagamento com sucesso em emitir guia
    E o sistema apresenta a mensagem "Campo obrigatório não preenchido."

    Exemplos: 
      | email/telefone |
      |                |
