#language: pt
Funcionalidade: Verificar Status das Dívidas
  SENDO um temporizador do sistema
  POSSO verificar no Tique o status das dívidas
  PARA QUE possa alterar os status das dívidas na base de dados


Cenário: Verificar dívidas Parcialmente Pagas.
Quando identificar que foi paga parte da dívida uma ou mais parcelas de acordo com a guia que foi enviada para o contribuinte
Então sistema deve atualizar o status para "Parcialmente Paga".

Cenário: Verificar dívidas Dívida Paga.
Quando identificar que foi realizado o pagamento total da dívida ou identificar que foi paga a última parcela não existindo mais pendências de pagamentos no Tique
Então o sistema deve atualizar o status da dívida para “Dívida Paga”. 

Cenário: Mudança status da  Dívida Paga
Quando o sistema alterar o status da dívida
Então deve ser cadastrado um novo registro no histórico da dívida, contendo o protocolo gerado, o status “Dívida Paga”, a data e hora e o usuário que realizou a ação. 

Cenário: Mudança status da Parcialmente Paga
Quando o sistema alterar o status da dívida
Então deve ser cadastrado um novo registro no histórico da dívida, contendo o protocolo gerado, números das parcelas que foram pagas, o status “Parcialmente Paga”, a data e hora e o usuário que realizou a ação. 