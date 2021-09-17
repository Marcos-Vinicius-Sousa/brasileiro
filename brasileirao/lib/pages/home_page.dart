import 'package:brasileirao/pages/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  var controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Brasileirão"),
        centerTitle: true,
      ),
      body: ListView.separated(
          itemCount: controller.tabela.length,
          itemBuilder: (BuildContext contexto, int i){
            final tabela = controller.tabela;

            return ListTile(
              leading: Image.network(tabela[i].brasao),
              title: Text(tabela[i].nome),
              trailing: Text(tabela[i].pontos.toString()),
            );
          },
          separatorBuilder: (_, __) => Divider(),
        padding: EdgeInsets.all(16),
          ),
    );
  }
}
