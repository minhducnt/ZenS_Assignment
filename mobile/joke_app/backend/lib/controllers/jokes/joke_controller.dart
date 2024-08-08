import 'dart:async';
import 'dart:io';

import 'package:backend/controllers/http_controller.dart';
import 'package:backend/models/jokes/joke.dart';
import 'package:backend/repositories/jokes/interface/joke_repository.dart';
import 'package:backend/typedefs/joke_types.dart';
import 'package:dart_frog/dart_frog.dart';

/// {@template joke_controller}
// This is the controller for the `joke` resource
// Use this class to handle requests to the `joke` resource
/// {@endtemplate}
class JokeController extends HttpController {
  /// {@macro joke_controller}
  JokeController(this._repo);

  final JokeRepository _repo;

  @override
  FutureOr<Response> index(Request request) async {
    final res = await _repo.getJokes();
    return res.fold(
      (left) => Response.json(
        body: {'message': left.message},
        statusCode: left.statusCode,
      ),
      (right) => Response.json(
        body: right.map((e) => e.toJson()).toList(),
      ),
    );
  }

  @override
  FutureOr<Response> show(Request request, String id) {
    final jokeId = mapJokeId(id);
    if (jokeId.isLeft) {
      return Response.json(
        body: {'message': jokeId.left.message},
        statusCode: jokeId.left.statusCode,
      );
    }
    return _repo.getJokeById(jokeId.right).then((res) {
      return res.fold(
        (left) => Response.json(
          body: {'message': left.message},
          statusCode: left.statusCode,
        ),
        (right) => Response.json(
          body: right.toJson(),
        ),
      );
    });
  }

  @override
  FutureOr<Response> destroy(Request request, String id) async {
    final jokeId = mapJokeId(id);
    if (jokeId.isLeft) {
      return Response.json(
        body: {'message': jokeId.left.message},
        statusCode: jokeId.left.statusCode,
      );
    }
    final res = await _repo.deleteJoke(jokeId.right);
    return res.fold(
      (left) => Response.json(
        body: {'message': left.message},
        statusCode: left.statusCode,
      ),
      (right) => Response.json(body: {'message': 'OK'}),
    );
  }

  @override
  FutureOr<Response> store(Request request) {
    return parseJson(request).then((parsedBody) {
      if (parsedBody.isLeft) {
        return Response.json(
          body: {'message': parsedBody.left.message},
          statusCode: parsedBody.left.statusCode,
        );
      }
      final json = parsedBody.right;
      final createJokeDto = CreateJokeDto.validated(json);
      if (createJokeDto.isLeft) {
        return Response.json(
          body: {
            'message': createJokeDto.left.message,
            'errors': createJokeDto.left.errors,
          },
          statusCode: createJokeDto.left.statusCode,
        );
      }
      return _repo.createJoke(createJokeDto.right).then((res) {
        return res.fold(
          (left) => Response.json(
            body: {'message': left.message},
            statusCode: left.statusCode,
          ),
          (right) => Response.json(
            body: right.toJson(),
            statusCode: HttpStatus.created,
          ),
        );
      });
    });
  }

  @override
  FutureOr<Response> update(Request request, String id) async {
    final parsedBody = await parseJson(request);
    final jokeId = mapJokeId(id);
    if (jokeId.isLeft) {
      return Response.json(
        body: {'message': jokeId.left.message},
        statusCode: jokeId.left.statusCode,
      );
    }
    if (parsedBody.isLeft) {
      return Response.json(
        body: {'message': parsedBody.left.message},
        statusCode: parsedBody.left.statusCode,
      );
    }

    final json = parsedBody.right;
    final updateJokeDto = UpdateJokeDto.validated(json);
    if (updateJokeDto.isLeft) {
      return Response.json(
        body: {
          'message': updateJokeDto.left.message,
          'errors': updateJokeDto.left.errors,
        },
        statusCode: updateJokeDto.left.statusCode,
      );
    }
    final res = await _repo.updateJoke(
      id: jokeId.right,
      updateJokeDto: updateJokeDto.right,
    );
    return res.fold(
      (left) => Response.json(
        body: {'message': left.message},
        statusCode: left.statusCode,
      ),
      (right) => Response.json(
        body: right.toJson(),
      ),
    );
  }
}
