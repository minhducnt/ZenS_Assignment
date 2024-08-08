import 'dart:developer';

import 'package:dotenv/dotenv.dart';
import 'package:postgres/postgres.dart';

/// {@template database_connection}
/// Database connection class
/// This class is used to connect to the database
/// {@endtemplate}
class DatabaseConnection {
  /// {@macro database_connection}
  DatabaseConnection(this._dotEnv) {
    _host = _dotEnv['DB_HOST'] ?? '';
    _port = int.tryParse(_dotEnv['DB_PORT'] ?? '') ?? 0;
    _database = _dotEnv['DB_DATABASE'] ?? '';
    _username = _dotEnv['DB_USERNAME'] ?? '';
    _password = _dotEnv['DB_PASSWORD'] ?? '';
  }

  final DotEnv _dotEnv;
  late final String _host;
  late final int _port;
  late final String _database;
  late final String _username;
  late final String _password;
  PostgreSQLConnection? _connection;

  /// Get the database connection
  PostgreSQLConnection get db =>
      _connection ??= throw Exception('Database connection not initialized');

  /// Connect to the database with the given credentials
  Future<void> connect() async {
    try {
      _connection = PostgreSQLConnection(
        _host,
        _port,
        _database,
        username: _username,
        password: _password,
      );
      log('Database connection successful');
      return _connection!.open();
    } catch (e) {
      log('Database connection failed: $e');
    }
  }

  /// Close the database connection
  Future<void> close() => _connection!.close();

  /// Seed the database with initial data
  static Future<void> initializeData(DatabaseConnection db) async {
    const checkTableQuery = '''
    SELECT to_regclass('public.jokes');
  ''';

    const createTableQuery = '''
    CREATE TABLE jokes (
      id SERIAL PRIMARY KEY,
      message TEXT,
      liked BOOLEAN DEFAULT FALSE,
      voted BOOLEAN DEFAULT FALSE,
      created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
      updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );
  ''';

    // Connect to the database
    await db.connect();
    final result = await db.db.query(checkTableQuery);

    if (result.isEmpty || result.first[0] == null) {
      await db.db.query(createTableQuery);
      log('Table "jokes" created.');
    } else {
      log('Table "jokes" already exists.');
    }

    final listJokes = <String>[
      'Teacher: "Kids, what does the chicken give you?" Student: "Meat!" Teacher: "Very good! Now what does the pig give you?" Student: "Bacon!" Teacher: "Great! And what does the fat cow give you?" Student: "Homework!"',
      'A child asked his father, "How were people born?" So his father said, "Adam and Eve made babies, then their babies became adults and made babies, and so on." The child then went to his mother, asked her the same question and she told him, "We were monkeys then we evolved to become like we are now." The child ran back to his father and said, "You lied to me!" His father replied, "No, your mom was talking about her side of the family."',
      'The teacher asked Jimmy, "Why is your cat at school today Jimmy?" Jimmy replied crying, "Because I heard my daddy tell my mommy, "I am going to eat that pussy once Jimmy leaves for school today!"',
      'A housewife, an accountant and a lawyer were asked "How much is 2+2?" The housewife replies: "Four!". The accountant says: "I think its either 3 or 4. Let me run those figures through my spreadsheet one more time." The lawyer pulls the drapes, dims the lights and asks in a hushed voice, "How much do you want it to be?"',
    ];

    for (final joke in listJokes) {
      const checkJokeQuery = '''
        SELECT EXISTS(
          SELECT 1
          FROM jokes
          WHERE message = @joke
        );
      ''';

      final existsResult = await db.db.query(
        checkJokeQuery,
        substitutionValues: {
          'joke': joke,
        },
      );

      if (!(existsResult.first[0] as bool)) {
        await db.db.query(
          '''
            INSERT INTO jokes (message) VALUES (@joke)
          ''',
          substitutionValues: {
            'joke': joke,
          },
        );
        log('Inserted joke: $joke');
      } else {
        log('Joke already exists: $joke');
      }
    }
  }
}
