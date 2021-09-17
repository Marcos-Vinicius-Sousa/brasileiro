import 'package:brasileirao/models/Time.dart';



class HomeController{

  List<Time> tabela;

  HomeController() {
    tabela = [
      Time(
          nome:'Corinthians',
          pontos: 75,
          brasao:'https://e.imguol.com/futebol/brasoes/40x40/corinthians.png'
      ),
      Time(
          nome:'Palmeiras',
          pontos: 68,
          brasao:'https://e.imguol.com/futebol/brasoes/40x40/palmeiras.png'
      ),
      Time(
          nome:'Flamengo',
          pontos: 68,
          brasao:'https://e.imguol.com/futebol/brasoes/40x40/flamengo.png'
      ),
      Time(
          nome:'Atlético-MG',
          pontos: 67,
          brasao:'https://e.imguol.com/futebol/brasoes/40x40/atletico-mg.png'
      ),
      Time(
          nome:'Internacional',
          pontos: 65,
          brasao:'https://e.imguol.com/futebol/brasoes/40x40/internacional.png'
      ),
      Time(
          nome:'Fluminense',
          pontos: 62,
          brasao:'https://e.imguol.com/futebol/brasoes/40x40/fluminense.png'
      ),
      Time(
          nome:'Fortaleza',
          pontos: 61,
          brasao:'https://e.imguol.com/futebol/brasoes/40x40/fortaleza.png'
      ),
      Time(
          nome:'São Paulo',
          pontos: 57,
          brasao:'https://e.imguol.com/futebol/brasoes/40x40/sao-paulo.png'
      ),
      Time(
          nome:'Gremio',
          pontos: 56,
          brasao:'https://e.imguol.com/futebol/brasoes/40x40/gremio.png'
      ),
      Time(
          nome:'Bahia',
          pontos: 55,
          brasao:'https://e.imguol.com/futebol/brasoes/40x40/bahia.png'
      ),
      Time(
          nome:'Chapecoense',
          pontos: 54,
          brasao:'https://e.imguol.com/futebol/brasoes/40x40/chapecoense.png'
      ),
      Time(
          nome:'Santos',
          pontos: 52,
          brasao:'https://e.imguol.com/futebol/brasoes/40x40/santos.png'
      ),
      Time(
          nome:'Goias',
          pontos: 49,
          brasao:'https://e.imguol.com/futebol/brasoes/40x40/goias.png'
      ),
      Time(
          nome:'Vasco',
          pontos: 48,
          brasao:'https://e.imguol.com/futebol/brasoes/40x40/vasco.png'
      ),
      Time(
          nome:'Botafogo',
          pontos: 46,
          brasao:'https://e.imguol.com/futebol/brasoes/40x40/botafogo.png'
      ),
      Time(
          nome:'Atlético-GO',
          pontos: 44,
          brasao:'https://e.imguol.com/futebol/brasoes/40x40/atletico-go.png'
      ),

    ];
  }
}