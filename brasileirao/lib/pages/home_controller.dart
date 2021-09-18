import 'package:brasileirao/models/Time.dart';
import '../models/Titulo.dart';
import '../repositories/times_repository.dart';



class HomeController{

  TimesRepository timesRepository;

  List<Time> get tabela => timesRepository.times;

  HomeController() {
    timesRepository = TimesRepository();
  }
}