import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../models/Titulo.dart';
import 'package:brasileirao/repositories/times_repository.dart';

class EditTituloPage extends StatefulWidget {
  Titulo titulo;
  EditTituloPage({Key key, this.titulo}) : super(key: key);

  @override
  _EditTituloPageState createState() => _EditTituloPageState();
}

class _EditTituloPageState extends State<EditTituloPage> {

  final _campeonato = TextEditingController();
  final _ano = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _ano.text = widget.titulo.ano;
    _campeonato.text = widget.titulo.campeonato;
  }

  editar(){
    Provider.of<TimesRepository>(context, listen: false).editTitulo(
      titulo: widget.titulo,
      campeonato: _campeonato.text,
      ano: _ano.text
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Editar Título"),
        backgroundColor: Colors.grey[800],
        actions: [IconButton(icon: Icon(Icons.check), onPressed: editar)],
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(24),
              child: TextFormField(
                controller: _ano,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Ano"),
                keyboardType: TextInputType.number,
                validator: (value){
                  if(value.isEmpty){
                    return "Informe o ano do título";
                  }
                  return null;
                },

                )
              ),
            Padding(
              padding: EdgeInsets.all(24),
                child: TextFormField(
                  controller: _campeonato,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Campeoanto"),

                  validator: (value){
                    if(value.isEmpty){
                      return "Informe o nome do campeonato";
                    }
                    return null;
                  },

                )
            )
          ],
        ),
      ),
    );
  }
}
