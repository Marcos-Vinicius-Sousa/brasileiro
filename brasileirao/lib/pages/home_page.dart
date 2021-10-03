import 'package:brasileirao/models/Time.dart';
import 'package:brasileirao/pages/home_controller.dart';
import 'package:brasileirao/pages/time_page.dart';
import 'package:brasileirao/repositories/times_repository.dart';
import 'package:brasileirao/widgets/brasao.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

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
      body: Consumer<TimesRepository>(
        builder: (context, repositorio, child)
        {
          return ListView.separated(
                  itemCount: repositorio.times.length,
                    itemBuilder: (BuildContext contexto, int time){
                    final List<Time>tabela = repositorio.times;

                    return ListTile(
                    leading: Brasao(
                        image: tabela[time].brasao,
                        width: 50),
                    title: Text(tabela[time].nome),
                    subtitle: Text("Titulos: ${tabela[time].titulos.length}"),
                    trailing: Text(tabela[time].pontos.toString()),
                    onTap: (){
                      Get.to(() => TimePage(
                        key: Key(tabela[time].nome),
                        time: tabela[time],
                      ));
                    /*Navigator.push(context, MaterialPageRoute(
                    builder: (_) => TimePage(key: Key(tabela[time].nome), time: tabela[time],),
                          )); */
                        },
                      );
                    },
                    separatorBuilder: (_, __) => Divider(),
                    padding: EdgeInsets.all(16),
                      );
        }

      ),
    );
  }
}
