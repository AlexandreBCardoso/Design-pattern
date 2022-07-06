# Propósito
O **Observer** é um padrão de projeto comportamental que permite que você defina um mecanismo de assinatura para notificar múltiplos objetos sobre quaisquer eventos que aconteçam com o objeto que eles estão observando.

**Também conhecido como:** Observador, Assinante do evento, Event-Subscriber, Escutador, Listener

## 😞 Problema

Imagine que você tem dois tipos de objetos: um Cliente e uma Loja. O cliente está muito interessado em uma marca particular de um produto que logo deverá estar disponível na loja.

O cliente pode visitar a loja todos os dias e checar a disponibilidade do produto. Mas enquanto o produto ainda está a caminho, a maioria desses visitas serão em vão.

Por outro lado, a loja poderia mandar milhares de emails (que poderiam ser considerados como spam) para todos os clientes cada vez que um novo produto se torna disponível. Isso salvaria alguns clientes de incontáveis viagens até a loja. Porém, ao mesmo tempo, irritaria outros clientes que não estão interessados em novos produtos.

Parece que temos um conflito. Ou o cliente gasta tempo verificando a disponibilidade do produto ou a loja gasta recursos notificando os clientes errados.

## 😃 Solução

O **objeto** que tem um estado interessante é quase sempre chamado de **sujeito**(_subject_), mas já que ele também vai notificar outros objetos sobre as mudanças em seu estado, nós vamos chamá-lo de **publicador**(_publisher_). Todos os outros **objetos** que querem saber das mudanças do estado do **publicador**(_publisher’s) são chamados de **assinantes**(_subscribers_).

Agora, sempre que um evento importante acontece com a publicadora, ele passa para seus assinantes e chama um método específico de notificação em seus objetos.

Aplicações reais podem ter dúzias de diferentes classes assinantes que estão interessadas em acompanhar eventos da mesma classe publicadora. Você não iria querer acoplar a publicadora a todas essas classes. Além disso, você pode nem estar ciente de algumas delas de antemão se a sua classe publicadora deve ser usada por outras pessoas.

É por isso que é crucial que todos os assinantes implementem a mesma interface e que a publicadora comunique-se com eles apenas através daquela interface. Essa interface deve declarar o método de notificação junto com um conjunto de parâmetros que a publicadora pode usar para passar alguns dados contextuais junto com a notificação.

## Analogia com o mundo real
Se você assinar um jornal ou uma revista, você não vai mais precisar ir até a banca e ver se a próxima edição está disponível. Ao invés disso a publicadora manda novas edições diretamente para sua caixa de correio após a publicação ou até mesmo com antecedência.

A publicadora mantém uma lista de assinantes e sabe em quais revistas eles estão interessados. Os assinantes podem deixar essa lista a qualquer momento quando desejarem que a publicadora pare de enviar novas revistas para eles.
