//
//  PlaceNew+Extensoin.swift
//  PassionChallenge
//
//  Created by Lucas Migge de Barros on 15/09/22.
//

import Foundation

// Extensão de Recomendations
extension Place {
    
    static func getRecomendations() -> [Place] {
        return [
            Place(
                tagCategorie : [K.artesanato, K.historia, K.culinaria],
                name: "Paço Alfândega",
                adress: "Rua Alfândega, 35 - Bairro do Recife",
                imageURL: "paçoalfandega.png",
                historyArray: [
                    History(imageURL: "paçoalfandega1.png", text: "Construído inicialmente para ser o Convento dos Padres Oratorianos de São Filipe Néri durante meados dos anos 1700, hoje o Shopping Paço Alfândega representa um importante espaço cultural no coração do Recife Antigo. O paço está muito bem localizado entre outros pontos turísticos da cidade, como o Marco Zero, a rua do Bom Jesus e o Museu do Homem do Nordeste, abrigando hoje a sede de empresas ligadas ao Porto Digital, lojas, bares e restaurantes."),
                    History(imageURL: "paçoalfandega2.png", text: "Originalmente o convento era conectado através de um claustro, uma espécie de pátio com um jardim ao centro, a Igreja da Madre de Deus, mas que fora demolido quando o prédio foi adotado para ser a nova sede da Alfândega do porto da cidade no ano de 1826. O espaço serviu como um importante posto comercial ao longo do período do Brasil Imperial."),
                    History(imageURL: "paçoalfandega3.png", text: "Em 1922, o edifício sofreu algumas alterações estruturais devido a um incêndio. Após a obras de recuperação, o espaço foi utilizado para diversos usos, chegando a ser utilizado, em 1932, como um armazém de açúcar. Ao longo do tempo, o edifício sofreu muito pela degradação e abandono."),
                    History(imageURL: "paçoalfandega4.png", text: "Em 2002, o edifício foi reformado para se tornar um shopping center e atender as necessidades turísticas e comerciais da cena tecnológica do Porto Digital. Apesar da modernização, o espaço mantem parte da sua estrutura original, o que serve para despertar a nossa imaginação ao visitar esse importante edifício histórico do Recife.")
                ],
                isSaved:  false,
                calendar: false),
            Place(
                tagCategorie : [K.historia, K.aoArLivre],
                name: "Marco Zero",
                adress: "R. Me. de Deus, 110 - Recife",
                imageURL: "marcozero.png",
                historyArray: [
                    History(imageURL: "marcozero1.png", text: "A Praça do Rio Branco, o verdadeiro nome para o local conhecido popularmente como Marco Zero, é um importante ponto turístico e cultural da cidade de Recife. O Marco zero é a peça central que marca o coração histórico e cultura, próximo a importantes espaços turísticos, esculturas, museus e bares."),
                    History(imageURL: "marcozero2.png", text: "A praça recebeu o apelido de Marco Zero devido ser o marco referencial para todas as medidas de distâncias oficiais das vias rodoviárias da região. Além disso, por ser um espaço aberto e de fácil localização, o Marco Zero serve como ponto de encontro para grupos de dancinha do TikTok, skaeiteiros, bikeiros e da nova cena emo/brega/góticos da cidade."),
                    History(imageURL: "marcozero3.png", text: "Nem sempre o local teve o rosto que tem hoje. Em 1917, a praça contava com a escultura do diplomata brasileiro Barão de Rio branco. Ao longo dos anos a região recebeu algumas modificações, como o alargamento das avenidas e ruas ao entorno."),
                    History(imageURL: "marcozero4.png", text: "Ao longos dos anos 2000, a praça foi recebeu novas alterações. A escultura de Rio Branco foi movida para as margens, sendo o centro agora ocupado por uma pintura de uma Rosa dos Ventos, projetada pelo Artista Local Cícero Dias.")
                ],
                isSaved:  false,
                calendar: false),
            
            Place(
                tagCategorie : [K.historia, K.musica, K.literatura],
                name: "Casa da Cultura",
                adress: "R. Floriano Peixoto, s/n - São José",
                imageURL: "casadacultura.png",
                historyArray: [
                    History(imageURL: "casadacultura1.png", text: "A Casa da Cultura é um centro de comercialização de artesanato da cidade do Recife, Funciona no edifício da antiga Casa de Detenção do Recife, que foi a maior cadeia do Brasil no século XIX e a primeira prisão radial pan-ótica, quando um único vigia pode observar todos os presos, na América Latina. Atualmente  O local é o maior Centro da Cultura e Arte Pernambucana abrigando artesanato de todo o Estado, do litoral ao sertão. Peças em barro ou cerâmica na arte figurativa de Mestre Vitalino : desde bonecas, jogos de xadrez, jogos de damas, bumba-meu-boi, maracatu, frevo, até anjos e presépios etc."),
                    History(imageURL: "casadacultura2.png", text: "Em 6 de agosto de 1848 a Lei provincial 213 autorizou a construção de uma casa de detenção no Recife.Com projeto do engenheiro pernambucano José Mamede Alves Ferreira, foi assinada uma portaria, em 16 de janeiro de 1850, determinando sua construção, que se iniciou no mesmo ano. Em 25 de abril de 1855 a Casa de Detenção foi inaugurada, porém a conclusão da construção só se deu em 1867."),
                    History(imageURL: "casadacultura3.png", text: "O prédio da antiga Casa de Detenção do Recife, em estilo classicista imperial, foi construído em forma de cruz, usando o sistema pan-óptico , ficando as celas dispostas em alas que podiam ser vigiadas facilmente a partir de uma sala central."),
                    History(imageURL: "casadacultura4.png", text: "Em 1973 o presídio foi desativado. Os presos ainda existentes foram transferidos para o Presídio Agrícola de Itamaracá. A ideia de transformar a antiga casa de detenção em centro de cultura e arte foi do artista plástico Francisco Brennand, e o projeto para sua restauração foi elaborado pela arquiteta Lina Bo Bardi. Em 1976, o antigo complexo foi reaberto  como Casa da Cultura.")
                ],
                isSaved:  false,
                calendar: false),
            
            Place(
                tagCategorie : [K.historia, K.culinaria, K.artesanato],
                name: "Mercado da Encruzilhada",
                adress: "R. Dr. José Maria, 2-200 - Encruzilhada",
                imageURL: "mercadoencruzilhada.png",
                historyArray: [
                    History(imageURL: "mercadoencruzilhada1.png", text: "Com uma praça de alimentação,  o mercado possui sabores e preço pra todos os gosto e bolsos. Foi construído em 1924 e inaugurado pelo então governador de Pernambuco, Sérgio Loreto. De cada lado do mercado, ergueram-se dois restaurantes e dois bares. Hoje são 17, divididos entre as alas sul e norte, onde podem ser encontradas pratos típicos durante os horários de café da amanhã e almoço. Na Praça da Alimentação, na ala sul, pode-se saborear uma deliciosa peixada, no Lélis, ou um bacalhau supimpa no Bragantino. A clientela é diversificada."),
                    History(imageURL: "mercadoencruzilhada2.png", text: "O Mercado possui hoje 17 locais de alimentação, divididos entre as alas sul e norte, onde podem ser encontrados pratos típicos durante os horários de café da manhã e almoço."),
                    History(imageURL: "mercadoencruzilhada3.png", text: "Na sua praça de alimentação,  o mercado possui sabores e preço para todos os gostos e bolsos.  Na ala sul, pode-se saborear uma deliciosa peixada, no Lélis, ou um bacalhau supimpa no Bragantino. A clientela é diversificada.")
                ],
                isSaved:  false,
                calendar: false
            ),
            
            Place(
                tagCategorie : [K.literatura, K.culinaria],
                name: "Livraria Jaqueira",
                adress: "R. Me. de Deus, 110 - Recife",
                imageURL: "livrariajaqueira.png",
                historyArray: [
                    History(imageURL: "livrariajaqueira1.png", text: "A Livraria Jaqueira foi fundada no ano de 2006, no bairro de mesmo nome que representa o coração da zona norte do Recife/PE. Nasceu seguindo a tradição da família que iniciou neste ramo em 1969, com uma livraria modesta no bairro da Encruzilhada. A Livraria Jaqueira logo tornou-se referência na cidade."),
                    History(imageURL: "livrariajaqueira2.png", text: "Reconhecida pelo arsenal de serviços e por se conseguir fazer tudo em um só lugar. Cafeteria e adega, gráfica, brinquedos, presentes, escritório, informática, escolar, geek e área Disney."),
                    History(imageURL: "livrariajaqueira3.png", text: "Hoje existem duas lojas físicas: uma na zona norte e outra no Recife Antigo, local de maior cartão postal da cidade!")
                ],
                isSaved:  false,
                calendar: false
            ),
            
            Place(
                tagCategorie : [K.literatura, K.historia, K.aoArLivre],
                name: "Praça do sebo",
                adress: "Av. Guararapes, s/n - Santo Antônio",
                imageURL: "praçadosebo.png",
                historyArray: [
                    History(imageURL: "praçadosebo1.png", text: "Na área central do Recife, próxima a duas movimentadas avenidas, a Guararapes e a Dantas Barreto, uma praça transborda cultura, justamente por abrigar um mercado de livros usados com 19 sebos."),
                    History(imageURL: "praçadosebo2.png", text: "Conhecida como Praça do Sebo, o espaço tem mais de 40 anos de existência. No espaço tem uma grande variedade de livros de todo tipo, com uma clientela fiel que por anos e anos frequenta o local, tanto vindo compra como trocar livros ou até mesmo para vender seus acervos."),
                    History(imageURL: "praçadosebo3.png", text: "Como todo bom Sebo, o local tem aqueles vendedores que têm sempre algo a oferecer. E também é um bom local para se conseguir literatura boa e barata, pois sempre tem a possibilidade de se fazer uma pechincha e buscar algum desconto."),
                ],
                isSaved:  false,
                calendar: false
            ),
            
            Place(
                tagCategorie : [K.culinaria, K.artesanato],
                name: "Restaurante Parraxaxá",
                adress: "R. Igarassu, 40 - Santana",
                imageURL: "parraxaxá.png",
                historyArray: [
                    History(imageURL: "parraxaxá1.png", text: "nais costumam apresentar o forró pé-de-serra durante a noite no restaurante. A decoração aumenta o clima de sertão, com tijolinhos aparentes e uma cerca de vara de marmelo com cascas de ovo, para afastar o mau-olhado, além de móveis rústicos e panela de barro"),
                    History(imageURL: "parraxaxá2.png", text: "Com dois endereços em Recife, oferece pratos para as três principais refeições. Alguns artistas regionais costumam apresentar o forró pé-de-serra durante a noite no restaurante. A decoração aumenta o clima de sertão, com tijolinhos aparentes e uma cerca de vara de marmelo com cascas de ovo, para afastar o mau-olhado, além de móveis rústicos e panela de barro"),
                ],
                isSaved:  false,
                calendar: false
            ),
            
            Place(
                tagCategorie : [K.aoArLivre, K.teatro],
                name: "Parque Dona Lindu",
                adress: "Av. Boa Viagem, s/n - Boa Viagem",
                imageURL: "donalindu.png",
                historyArray: [
                    History(imageURL: "donalindu1.png", text: "O Parque Dona Lindu , esta  localizado na beira mar na praia de Boa Viagem, foi projetado pelo arquiteto Oscar Niemeyer, o nome do parque foi dado em homenagem a mãe do ex-presidente Luiz Inácio Lula da Silva. O Parque Dona Lindu  foi construído numa área de 27.166,68 m², à beira-mar da praia de Boa Viagem, com 60% destinados à área verde."),
                    History(imageURL: "donalindu2.png", text: "No parque esta também localizado o Teatro Luiz Mendonça com uma capacidade de 587 lugares,  e  com um palco reversível para apresentações ao ar livre, nesse caso a capacidade aumenta para mais de 03 mil pessoas."),
                    History(imageURL: "donalindu3.png", text: "O parque possui  ciclovia, pistas para cooper e skate, quadra poliesportiva, playground, áreas para descanso e ginástica. Conta também com teatro, pavilhão para exposições, sanitários, fraldário e central técnica, sendo assim uma excelente opção de lazer na praia mais famosa da cidade."),
                ],
                isSaved:  false,
                calendar: false
            ),
            
            
        ]
        
    }
}
