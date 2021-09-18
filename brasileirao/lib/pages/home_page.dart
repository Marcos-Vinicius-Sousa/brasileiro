import 'package:brasileirao/models/Time.dart';
import 'package:brasileirao/pages/home_controller.dart';
import 'package:brasileirao/pages/time_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var controller;

  @override
  void initState() {
    super.initState();
    controller = HomeController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Brasileirão"),
        centerTitle: true,
      ),
      body: ListView.separated(
          itemCount: controller.tabela.length,
          itemBuilder: (BuildContext contexto, int time){
            final List<Time>tabela = controller.tabela;

            return ListTile(
              leading: Image.network(tabela[time].brasao),
              title: Text(tabela[time].nome),
              trailing: Text(tabela[time].pontos.toString()),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) => TimePage(key: Key(tabela[time].nome), time: tabela[time],),



                ));
              },
            );
          },
          separatorBuilder: (_, __) => Divider(),
        padding: EdgeInsets.all(16),
          ),
    );
  }
}
