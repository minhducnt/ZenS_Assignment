import 'package:data_channel/data_channel.dart';
import 'package:get/get.dart';
import 'package:joke_app/app/data/apis/exception_handler.dart';
import 'package:joke_app/app/data/models/common/alert.model.dart';
import 'package:joke_app/app/data/models/joke.dart';
import 'package:joke_app/app/data/services/joke/joke.api.dart';
import 'package:retrofit/dio.dart';

class JokeRepository extends GetxService {
  final JokeApi _jokeApi = Get.find<JokeApi>();

  Future<DC<AlertModel, HttpResponse<List<Joke>>>> fetchJokeList() async {
    return exceptionHandler(() async {
      final response = await _jokeApi.getJokes();
      return DC.data(response);
    });
  }

  Future<DC<AlertModel, HttpResponse<void>>> updateJoke(
    int jokeId,
    Map<String, dynamic> value,
  ) async {
    return exceptionHandler(() async {
      final response = await _jokeApi.updateJoke(jokeId, value);
      return DC.data(response);
    });
  }
}
