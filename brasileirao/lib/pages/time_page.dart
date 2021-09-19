import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/Time.dart';
import '../models/Titulo.dart';

class TimePage extends StatefulWidget {
  Time time;
  TimePage({Key key, this.time}) : super(key: key);


  @override
  _TimePageState createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {


  @override
  Widget build(BuildContext context) {



    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: widget.time.cor,
          title: Text(widget.time.nome),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.show_chart),
              text: "Estátisticas",
            ),
            Tab(
              icon: Icon(Icons.grade),
              text: "Títulos",
            )
          ],indicatorColor: Colors.white,
          ),
          centerTitle: true,
        ),
        body: TabBarView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(24),
              child: Image.network(widget.time.brasao.replaceAll("40x40", "100x100")),
              ),
              Text("Pontos: ${widget.time.pontos}", style: TextStyle(fontSize: 25),)
            ],
          ),

          titulos()

        ],),
      ),
    );
  }

  Widget titulos(){

     final quantidade = widget.time.titulos.length;

    return quantidade == 0
        ? Container(
          child: Center(
            child: Text("Nenhum título Ainda!"),
          ),
        )
        : ListView.separated(separatorBuilder: (_, __ ) => Divider(),
                              itemCount: quantidade,
                              itemBuilder: (BuildContext context, int index ){
                return ListTile(
                  leading: Icon(Icons.grade),
                  title: Text(widget.time.titulos[index].campeonato),
                  trailing: Text(widget.time.titulos[index].ano),
          );
        });
  }
}

