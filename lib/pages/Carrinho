import 'package:flutter/material.dart';

class Carrinho extends StatefulWidget {
  const Carrinho({Key? key}) : super(key: key);

  @override
  State<Carrinho> createState() => _CarrinhoState();
}

class _CarrinhoState extends State<Carrinho> {
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

  buildBody(){
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
                buildImage('https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Cup-o-cofee-no-spoon.svg/2560px-Cup-o-cofee-no-spoon.svg.png'),
                const Text(
                  'Coffe House',
                  style: TextStyle(
                    color: Color(0xFF3E2723),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Pedido n468',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                buildMiniCard('Informações de Pedido'),
                buildMiniCard('Resumo de Valores'),
                buildMiniCard('Valor'),
                buildMiniCard('Endereço de Entrega'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildMiniCard(final String titulo){
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFF8EFE9),
              borderRadius: BorderRadius.circular(16),
            ),
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(titulo),
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
