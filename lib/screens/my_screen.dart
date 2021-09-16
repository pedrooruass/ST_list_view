import 'package:flutter/material.dart';
import 'package:list_view/models/tile_model.dart';

class MyScreen extends StatelessWidget {
  //  COLOÇÕES DE DADOS
  final List<TileModel> listaDeTiles = [
    TileModel(name: "Pedro", age: 15,image: "assets/logos/apple.png"),
    TileModel(name: "Matheus", age: 37, image: "assets/logos/samsung.png"),
    TileModel(name: "Malu", age: 15, image: "assets/logos/twitter.png"),
    TileModel(name: "Elon Musk", age: 49, image: "assets/logos/nasa.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("ListView", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(10),
        itemCount: listaDeTiles.length,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: ListTile(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(
                        listaDeTiles[index].name,
                        style: TextStyle(color: Colors.red),
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Idade: ${listaDeTiles[index].age}",
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              tileColor: Colors.black,
              title: Text(
                "Nome: ${listaDeTiles[index].name}",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "Idade: ${listaDeTiles[index].age}",
                style: TextStyle(color: Colors.white),
              ),
              leading: Container(
                height: 50,
                width: 60,
                child: Image.asset(listaDeTiles[index].image),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: 10);
        },
      ),
    );
  }
}

// ListView.separated(
//         itemCount: listaDeNomes.length,
//         itemBuilder: (context, index) {
//           return Text(listaDeNomes[index]);
//         },
//         separatorBuilder: (context, index) {
//           return Text("-----------------");
//         },
//       ),
