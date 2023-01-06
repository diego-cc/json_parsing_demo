# JSON Parsing Demo

This demo provides a basic project structure for the ["DTO"](https://www.okta.com/identity-101/dto/) layer of a Flutter application that uses [Stacked](https://pub.dev/packages/stacked).

The app itself is just a blank screen as we're not concerned about UI here. If you wanna see how this setup is supposed to work in practice, please take a look at the unit tests under the `test/apis/` folder.

## Code generation

Any changes to APIs, DTOs or services require a re-run of `build_runner`. You may watch these changes by running:

```sh
flutter pub run build_runner watch --delete-conflicting-outputs
```

