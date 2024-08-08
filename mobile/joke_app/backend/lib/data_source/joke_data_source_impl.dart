import 'package:backend/data_source/interfaces/joke_data_source.dart';
import 'package:backend/database/database_connection.dart';
import 'package:backend/models/jokes/joke.dart';
import 'package:backend/typedefs/joke_types.dart';
import 'package:backend/utils/exceptions/http_exception/not_found_exception.dart';

/// {@template joke_data_source_impl}
/// Joke data source implementation
/// This class is used to connect to the database and perform CRUD operations
/// {@endtemplate}
class JokeDataSourceImpl implements JokeDataSource {
  /// {@macro joke_data_source_impl}
  const JokeDataSourceImpl(this._databaseConnection);
  final DatabaseConnection _databaseConnection;

  @override
  Future<Joke> createJoke(CreateJokeDto joke) async {
    try {
      await _databaseConnection.connect();
      final result = await _databaseConnection.db.query(
        '''
        INSERT INTO jokes (message, liked, voted)
        VALUES (@message, @liked, @voted) RETURNING *
        ''',
        substitutionValues: {
          'message': joke.message,
          'liked': false,
          'voted': false,
        },
      );

      final jokeMap = result.first.toColumnMap();
      return Joke(
        id: jokeMap['id'] as int,
        message: jokeMap['message'] as String,
        createdAt: jokeMap['created_at'] as DateTime,
      );
    } finally {
      await _databaseConnection.close();
    }
  }

  @override
  Future<void> deleteJokeById(JokeId id) async {
    try {
      await _databaseConnection.connect();
      await _databaseConnection.db.query(
        '''
        DELETE FROM jokes
        WHERE id = @id
        ''',
        substitutionValues: {'id': id},
      );
    } finally {
      await _databaseConnection.close();
    }
  }

  @override
  Future<List<Joke>> getAllJoke() async {
    try {
      await _databaseConnection.connect();
      final result = await _databaseConnection.db.query(
        'SELECT * FROM jokes ORDER BY created_at DESC',
      );
      final data =
          result.map((e) => e.toColumnMap()).map(Joke.fromJson).toList();
      return data;
    } finally {
      await _databaseConnection.close();
    }
  }

  @override
  Future<Joke> getJokeById(JokeId id) async {
    try {
      await _databaseConnection.connect();
      final result = await _databaseConnection.db.query(
        'SELECT * FROM jokes WHERE id = @id',
        substitutionValues: {'id': id},
      );
      if (result.isEmpty) {
        throw const NotFoundException('Joke not found');
      }
      return Joke.fromJson(result.first.toColumnMap());
    } finally {
      await _databaseConnection.close();
    }
  }

  @override
  Future<Joke> updateJoke({
    required JokeId id,
    required UpdateJokeDto joke,
  }) async {
    try {
      await _databaseConnection.connect();
      final result = await _databaseConnection.db.query(
        '''
        UPDATE jokes
        SET message = COALESCE(@new_message, message),
            liked = COALESCE(@new_liked, liked),
            voted = COALESCE(@new_voted, voted),
            updated_at = current_timestamp
        WHERE id = @id
        RETURNING *
        ''',
        substitutionValues: {
          'id': id,
          'new_message': joke.message,
          'new_liked': joke.liked,
          'new_voted': joke.voted,
        },
      );
      if (result.isEmpty) {
        throw const NotFoundException('Joke not found');
      }
      return Joke.fromJson(result.first.toColumnMap());
    } finally {
      await _databaseConnection.close();
    }
  }
}
