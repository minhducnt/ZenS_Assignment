import 'package:dio/dio.dart';
import 'package:joke_app/app/data/models/joke.dart';
import 'package:retrofit/retrofit.dart';

part 'joke.api.g.dart';

@RestApi()
abstract class JokeApi {
  factory JokeApi(Dio dio) = _JokeApi;

  static const jokePrefix = 'jokes';
  static const jokeUpdate = '$jokePrefix/{jokeId}';

  @GET(jokePrefix)
  Future<HttpResponse<List<Joke>>> getJokes();

  @PUT(jokeUpdate)
  Future<HttpResponse<void>> updateJoke(
    @Path() int jokeId,
    @Body() Map<String, dynamic> value,
  );
}
