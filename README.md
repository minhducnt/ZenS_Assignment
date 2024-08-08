# **HLS Interview**

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]
[![Powered by Dart Frog][dart_frog_badge]][dart_frog_link]
[![Powered by Mason][mason_badge]][mason_link]
[![Maintained with Melos][melos_badge]][melos_link]

## Assignment role for Flutter Developer position at ZenS Technology Joint Stock Company

## Submission

Please read the README.md to run the project.

A full-stack to-do app written in [Flutter][flutter_link] and [dart_frog][dart_frog_link], using a mono repository and driven by [`melos`][melos_link].

## Getting Started

To run the app, clone the repository and follow the setup instructions for the [backend][backend_link] and [`frontend`][frontend_link]. Once setup is complete, run the app.

## Initial Setup

### Setup Melos

To set up [`Melos`][melos_link], run the following command to activate [`Melos`][melos_link]:

```bash
dart pub global activate melos
```

Once [`Melos`][melos_link] is activated, run the following command to bootstrap it:

```bash
melos bootstrap
```

This command will download and install all the required dependencies for [`Melos`][melos_link].

### Setup backend

[dart_frog][dart_frog_link] is the server-side framework used in the [backend][backend_link] of our app. To set up [dart_frog][dart_frog_link], run the following command:

```bash
dart pub global activate dart_frog_cli
```

This command will download and install the [dart_frog][dart_frog_link] CLI, which can be used to run [dart_frog][dart_frog_link] projects. Once [dart_frog][dart_frog_link] is installed, you can run the todo app's backend.

```bash
melos run backend:dev
```

### Setup frontend

To set up the frontend, you need to install the [Flutter][flutter_link] SDK on your machine. You can follow the instructions on [Flutter][flutter_link]'s official website to install [Flutter][flutter_link].

To run the [Flutter][flutter_link] app, use the following command in the [frontend][frontend_link] directory:

```bash
flutter run
```

[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[mason_badge]: https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[dart_frog_badge]: https://img.shields.io/endpoint?url=https://tinyurl.com/dartfrog-badge
[melos_badge]: https://img.shields.io/badge/maintained%20with-melos-f700ff.svg?style=flat-square

<!--  -->

[mason_link]: https://github.com/felangel/mason
[melos_link]: https://github.com/invertase/melos
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[dart_frog_link]: https://dartfrog.vgv.dev
[flutter_link]: https://flutter.dev

<!--  -->

<!--  -->

[backend_link]: ./backend/
[frontend_link]: ./frontend/
