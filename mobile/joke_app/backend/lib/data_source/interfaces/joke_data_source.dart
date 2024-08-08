import 'package:backend/models/jokes/joke.dart';
import 'package:backend/typedefs/joke_types.dart';

/// {@template joke_data_source}
/// An interface for a jokes data source.
/// 🔍 This interface defines a set of functions for interacting
// with a data source that stores `joke` items.
/// {@endtemplate}
///
abstract class JokeDataSource {
  /// Returns a list of all `joke` items in the data source
  Future<List<Joke>> getAllJoke();

  /// Returns a `joke` item with the given [id] from the data source
  /// If no `joke` item with the given [id] exists, returns `null`
  Future<Joke> getJokeById(JokeId id);

  /// Creates a new `joke` item in the data source
  Future<Joke> createJoke(CreateJokeDto joke);

  /// Updates an existing `joke` item in the data source
  Future<Joke> updateJoke({
    required JokeId id,
    required UpdateJokeDto joke,
  });

  /// Deletes a `joke` item with the given [id] from the data source
  Future<void> deleteJokeById(JokeId id);
}
