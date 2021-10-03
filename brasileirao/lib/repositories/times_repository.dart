import 'dart:collection';

import 'package:brasileirao/models/Time.dart';
import 'package:flutter/material.dart';
import '../models/Titulo.dart';

class TimesRepository extends ChangeNotifier{
  final List<Time> _times = [];

  UnmodifiableListView<Time> get times => UnmodifiableListView(_times);

  void addTitulo({Time time, Titulo titulo}){
    time.titulos.add(titulo);
    notifyListeners();
  }

  void editTitulo({Titulo titulo, String ano , String campeonato}){
    titulo.campeonato = campeonato;
    titulo.ano = ano;
    notifyListeners();
  }

  TimesRepository(){
    _times.addAll([


    Time(
        nome:'Corinthians',
        pontos: 75,
        brasao:'https://e.imguol.com/futebol/brasoes/corinthians.png',
        cor: Colors.black
    ),
    Time(
    nome:'Palmeiras',
    pontos: 68,
    brasao:'https://e.imguol.com/futebol/brasoes/palmeiras.png',
        cor: Colors.green[800]
    ),
    Time(
      nome:'Flamengo',
      pontos: 68,
      brasao:'https://e.imguol.com/futebol/brasoes/flamengo.png', cor: Colors.red[900]
    ),
    Time(
    nome:'Atlético-MG',
    pontos: 67,
    brasao:'https://e.imguol.com/futebol/brasoes/atletico-mg.png',
        cor: Colors.black
    ),
    Time(
    nome:'Internacional',
    pontos: 65,
    brasao:'https://e.imguol.com/futebol/brasoes/internacional.png',
        cor: Colors.red
    ),
    Time(
    nome:'Fluminense',
    pontos: 62,
    brasao:'https://e.imguol.com/futebol/brasoes/fluminense.png',
        cor: Colors.red[900]
    ),
    Time(
    nome:'Fortaleza',
    pontos: 61,
    brasao:'https://e.imguol.com/futebol/brasoes/fortaleza.png',
        cor: Colors.blue[800]
    ),
    Time(
    nome:'São Paulo',
    pontos: 57,
    brasao:'https://e.imguol.com/futebol/brasoes/sao-paulo.png',
        cor: Colors.red
    ),
    Time(
    nome:'Gremio',
    pontos: 56,
    brasao:'https://e.imguol.com/futebol/brasoes/gremio.png',
        cor: Colors.blue[700]
    ),
    Time(
    nome:'Bahia',
    pontos: 55,
    brasao:'https://e.imguol.com/futebol/brasoes/bahia.png',
        cor: Colors.blue
    ),
    Time(
    nome:'Chapecoense',
    pontos: 54,
    brasao:'https://e.imguol.com/futebol/brasoes/chapecoense.png',
        cor: Colors.green
    ),
    Time(
    nome:'Santos',
    pontos: 52,
    brasao:'https://e.imguol.com/futebol/brasoes/santos.png',
        cor: Colors.black
    ),
    Time(
    nome:'Goias',
    pontos: 49,
    brasao:'https://e.imguol.com/futebol/brasoes/goias.png',
        cor: Colors.green
    ),
    Time(
    nome:'Vasco',
    pontos: 48,
    brasao:'https://e.imguol.com/futebol/brasoes/vasco.png',
        cor: Colors.black
    ),
    Time(
    nome:'Botafogo',
    pontos: 46,
    brasao:'https://e.imguol.com/futebol/brasoes/botafogo.png',
        cor: Colors.black
    ),
    Time(
    nome:'Atlético-GO',
    pontos: 44,
    brasao:'https://e.imguol.com/futebol/brasoes/atletico-go.png',
        cor: Colors.red[900]
    ),



    ]);
  }


}