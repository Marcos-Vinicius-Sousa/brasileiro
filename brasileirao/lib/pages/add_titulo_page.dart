import 'package:brasileirao/models/Time.dart';
import 'package:brasileirao/models/Titulo.dart';
import 'package:flutter/material.dart';

class AddTituloPage extends StatefulWidget {

  Time time;
  ValueChanged<Titulo> onSave;
  AddTituloPage({Key key, this.time, this.onSave}) : super(key: key);

  @override
  _AddTituloPageState createState() => _AddTituloPageState();
}

class _AddTituloPageState extends State<AddTituloPage> {

  final _campeonato = TextEditingController();
  final _ano = TextEditingController();
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Adicionar Título"),
      backgroundColor: widget.time.cor,
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
                  labelText: 'Ano'
                ),
                keyboardType: TextInputType.number,
                validator: (value){
                  if(value.isEmpty){
                    return 'Informe o ano do título';
                  }
                  return null;
                }
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
              child: TextFormField(
                  controller: _campeonato,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Campeonato'
                  ),
                  validator: (value){
                    if(value.isEmpty){
                      return 'Informe o nome do campeonato';
                    }
                    return null;
                  }
              ),
            ),
            Expanded(child: Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.all(24.0),
              child:ElevatedButton(
                onPressed: (){
                  if(_formKey.currentState.validate()){
                    widget.onSave(
                      Titulo(campeonato: _campeonato.text, ano: _ano.text));
                  }
                },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.check),
                      Padding(padding: EdgeInsets.all(16.0)),
                      Text("Salvar",style: TextStyle(
                          fontSize: 20
                      ),)
                    ],
                  )
              ),
            ))
          ],
        ),
      ),
    );
  }
}
