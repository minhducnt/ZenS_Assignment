import 'package:backend/controllers/jokes/joke_controller.dart';
import 'package:backend/utils/request_handlers/not_allowed_request_handler.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  final controller = context.read<JokeController>();

  switch (context.request.method) {
    case HttpMethod.get:
      return controller.index(context.request);
    case HttpMethod.post:
      return controller.store(context.request);
    case HttpMethod.put:
    case HttpMethod.patch:
    case HttpMethod.delete:
    case HttpMethod.head:
    case HttpMethod.options:
      return notAllowedRequestHandler(context);
  }
}
