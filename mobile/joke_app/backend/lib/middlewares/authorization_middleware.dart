import 'package:backend/controllers/jokes/joke_controller.dart';
import 'package:backend/data_source/interfaces/joke_data_source.dart';
import 'package:backend/data_source/joke_data_source_impl.dart';
import 'package:backend/database/database_connection.dart';
import 'package:backend/repositories/jokes/interface/joke_repository.dart';
import 'package:backend/repositories/jokes/joke_repository_impl.dart';
import 'package:backend/utils/exceptions/http_exception/unauthorized_exception.dart';
import 'package:dart_frog/dart_frog.dart';

/// {@template authorization_middleware}
/// This is the authorization middleware
/// It checks if the request has a valid token
/// {@endtemplate}
///
Handler authorizationMiddleware(Handler handler) {
  return (context) async {
    try {
      context = _handleAuthDependencies(context);
      return handler(context);
    } on UnauthorizedException catch (e) {
      return Response.json(
        body: {'message': e.message},
        statusCode: e.statusCode,
      );
    }
  };
}

RequestContext _handleAuthDependencies(
  RequestContext context,
) {
  final db = context.read<DatabaseConnection>();

  final jokeDs = JokeDataSourceImpl(db);
  final jokeRepo = JokeRepositoryImpl(jokeDs);
  final jokeController = JokeController(jokeRepo);

  return context
      .provide<JokeController>(() => jokeController)
      .provide<JokeRepository>(() => jokeRepo)
      .provide<JokeDataSource>(() => jokeDs);
}
