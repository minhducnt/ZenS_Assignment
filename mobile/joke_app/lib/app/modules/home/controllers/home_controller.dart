import 'dart:math';

import 'package:get/get.dart';
import 'package:joke_app/app/data/models/joke.dart';
import 'package:joke_app/app/global/constants/enums/systems.dart';
import 'package:joke_app/app/global/utils/ui_utils.dart';
import 'package:joke_app/app/global/utils/utils.dart';
import 'package:joke_app/app/global/widgets/base/base_controller.dart';

import '../../../data/repos/joke_repo.dart';

class HomeController extends BaseController {
  /// Dependencies
  final jokeRepo = Get.find<JokeRepository>();

  /// Variables
  final jokeMessage = ''.obs, jokeId = 0.obs;
  RxBool allVoted = false.obs;
  List<Joke> listJokes = [];
  final Random _random = Random();

  /// Lifecycle
  @override
  void onInit() {
    fetchJokes();
    super.onInit();
  }

  /// Methods
  Future<void> fetchJokes() async {
    showLoading();

    try {
      final response = await jokeRepo.fetchJokeList();
      if (response.hasData) {
        listJokes = response.data!.data;
        randomJoke();

        // Check if all jokes have been voted on
        allVoted.value = listJokes.every((joke) => joke.voted == true);
      }
    } catch (e) {
      await AppUtils.showSnackBar(
        message: localeLang.somethingWentWrongTryAgain,
        type: SnackBarType.error,
      );
    }

    hideLoading();
  }

  Future<void> randomJoke() async {
    if (listJokes.isEmpty) {
      jokeMessage.value = '';
      return;
    }

    // Check if all jokes have been voted on
    allVoted.value = listJokes.every((joke) => joke.voted == true);
    if (allVoted.value) {
      jokeMessage.value = localeLang.thatsAllFolks;
      return;
    }

    int randomIndex;
    do {
      randomIndex = _random.nextInt(listJokes.length);
    } while (listJokes[randomIndex].voted == true);

    jokeId.value = listJokes[randomIndex].id ?? 0;
    jokeMessage.value = listJokes[randomIndex].message ?? '';
  }

  Future<void> voteJoke(int jokeId, String message, bool isLike) async {
    final value = {'message': message, 'liked': isLike, 'voted': true};
    final response = await jokeRepo.updateJoke(jokeId, value);
    if (response.hasData) {
      fetchJokes();
    } else {
      await AppUtils.showSnackBar(
        message: localeLang.somethingWentWrongTryAgain,
        type: SnackBarType.error,
      );
    }
  }
}
