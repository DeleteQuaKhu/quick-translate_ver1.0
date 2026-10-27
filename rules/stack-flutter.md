# stack-flutter.md — Flutter

Load this only when the project uses Flutter/Dart.

- `flutter analyze` for lint; `flutter test` for tests; `flutter build` to build.
- Keep widgets small and pure; put logic in plain Dart classes.
- Pin dependencies with exact versions in `pubspec.yaml`; commit `pubspec.lock`.
- Never commit `build/`, `.dart_tool/`, or generated platform folders.
- Rollout to app stores counts as "hard to roll back" in `scripts/tier.md`.
