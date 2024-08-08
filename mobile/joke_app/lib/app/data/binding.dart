import 'package:get/get.dart';
import 'package:joke_app/app/data/apis/rest_client.dart';
import 'package:joke_app/app/data/repos/joke_repo.dart';
import 'package:joke_app/app/data/services/joke/joke.api.dart';

/// API Bindings
class AppBinding extends Bindings {
  @override
  Future<void> dependencies() async {
    late final client = RestClient();

    Get
      //* Services
      ..put(JokeApi(client.dioInstance), permanent: true)

      //* Repositories
      ..lazyPut(JokeRepository.new);
  }
}
