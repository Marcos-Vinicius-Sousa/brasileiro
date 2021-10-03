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
        brasao:'https://logodetimes.com/times/corinthians/logo-do-corinthians-256.png',
        cor: Colors.black
    ),
    Time(
    nome:'Palmeiras',
    pontos: 68,
    brasao:'https://logodetimes.com/times/palmeiras/logo-palmeiras-256.png',
        cor: Colors.green[800]
    ),
    Time(
      nome:'Flamengo',
      pontos: 68,
      brasao:'https://logodetimes.com/times/flamengo/logo-flamengo-256.png', cor: Colors.red[900]
    ),
    Time(
    nome:'Atlético-MG',
    pontos: 67,
    brasao:'https://logodetimes.com/times/atletico-mineiro/logo-atletico-mineiro-256.png',
        cor: Colors.black
    ),
    Time(
    nome:'Internacional',
    pontos: 65,
    brasao:'https://logodetimes.com/times/internacional/logo-internacional-256.png',
        cor: Colors.red
    ),
    Time(
    nome:'Fluminense',
    pontos: 62,
    brasao:'https://logodetimes.com/times/fluminense/logo-fluminense-256.png',
        cor: Colors.red[900]
    ),
    Time(
    nome:'Fortaleza',
    pontos: 61,
    brasao:'https://logodetimes.com/times/fortaleza/logo-fortaleza-256.png',
        cor: Colors.blue[800]
    ),
    Time(
    nome:'São Paulo',
    pontos: 57,
    brasao:'https://logodetimes.com/times/sao-paulo/logo-sao-paulo-256.png',
        cor: Colors.red
    ),
    Time(
    nome:'Gremio',
    pontos: 56,
    brasao:'https://logodetimes.com/times/gremio/logo-gremio-256.png',
        cor: Colors.blue[700]
    ),
    Time(
    nome:'Bahia',
    pontos: 55,
    brasao:'https://logodetimes.com/times/bahia/logo-bahia-256.png',
        cor: Colors.blue
    ),
    Time(
    nome:'Chapecoense',
    pontos: 54,
    brasao:'https://logodetimes.com/times/chapecoense/logo-chapecoense-256.png',
        cor: Colors.green
    ),
    Time(
    nome:'Santos',
    pontos: 52,
    brasao:'https://logodetimes.com/times/santos/logo-santos-256.png',
        cor: Colors.black
    ),
    Time(
    nome:'Goias',
    pontos: 49,
    brasao:'https://logodetimes.com/times/goias/logo-goias-novo-256.png',
        cor: Colors.green
    ),
    Time(
    nome:'Vasco',
    pontos: 48,
    brasao:'https://logodetimes.com/times/vasco-da-gama/logo-vasco-da-gama-256.png',
        cor: Colors.black
    ),
    Time(
    nome:'Botafogo',
    pontos: 46,
    brasao:'https://logodetimes.com/times/botafogo/logo-botafogo-256.png',
        cor: Colors.black
    ),
    Time(
    nome:'Atlético-GO',
    pontos: 44,
    brasao:'https://logodetimes.com/times/atletico-goianiense/logo-atletico-goianiense-com-estrela-256.png',
        cor: Colors.red[900]
    ),



    ]);
  }


}