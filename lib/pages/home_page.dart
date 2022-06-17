import '/domain/sessao_cafe.dart';
import '/widget/card_sessao_cafe.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SessaoCafe pacote1 = SessaoCafe(
    imagem: 'https://img.olhardigital.com.br/wp-content/uploads/2021/07/Cafe-2-695x500.jpg',
    titulo: 'CATÁLOGO',
  );
  SessaoCafe pacote2 = SessaoCafe(
    imagem: 'https://images.tcdn.com.br/img/editor/up/738124/Cafe.jpg',
    titulo: 'PAGAMENTO',
  );

  SessaoCafe pacote3 = SessaoCafe(
    imagem: 'https://media.istockphoto.com/photos/cup-of-espresso-with-coffee-beans-picture-id1177900338?k=20&m=1177900338&s=612x612&w=0&h=rwLAoPzPiKdSbcdBFs4-TTt5O1Qpe0EFVY5KRqRPKmI=',
    titulo: 'CARRINHO DE COMPRAS',
  );

  SessaoCafe pacote4 = SessaoCafe(
    imagem: 'https://radioriodejaneiro.digital/wp-content/uploads/2019/08/cafe.jpg',
    titulo: 'SOBRE',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8EFE9),
      appBar: AppBar(
        centerTitle: false,
        title: const Icon(Icons.local_cafe),
        backgroundColor: const Color(0xFF3E2723),
      ),
      body: buildBody(),
    );
  }

  buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF3E2723),
              borderRadius: BorderRadius.circular(16),
            ),
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'QUER UM CAFÉ?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'O melhor do café na palma da sua mão!',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      buildImage('https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Cup-o-cofee-no-spoon.svg/2560px-Cup-o-cofee-no-spoon.svg.png'),
                    ],
                  ),
                ),
                /*const Placeholder(
                  
                )*/
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            height: MediaQuery.of(context).size.height / 1.4,
            child: ListView(
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 1, right: 1),
                    child: Wrap(
                      spacing: 10,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 2.8,
                          width: MediaQuery.of(context).size.width / 2.3,
                          child: CardSessaoCafe(sessaoCafe: pacote1),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 2.8,
                          width: MediaQuery.of(context).size.width / 2.3,
                          child: CardSessaoCafe(sessaoCafe: pacote2),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 2.8,
                          width: MediaQuery.of(context).size.width / 2.3,
                          child: CardSessaoCafe(sessaoCafe: pacote3),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 2.8,
                          width: MediaQuery.of(context).size.width / 2.3,
                          child: CardSessaoCafe(sessaoCafe: pacote4),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF3E2723),
              borderRadius: BorderRadius.circular(16),
            ),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'COFFEE SHOP - 2022',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildImage(final String imagem) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(16),
          ),
          child: Image.network(imagem),
        ),
        Container(
          margin: const EdgeInsets.only(left: 16, top: 20),
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 4,
          ),
        ),
      ],
    );
  }
}
