# Releasing
This document describes our release process, and contains the steps to be followed by an SuperWidgets maintainer at the several stages of a release.

## Steps
1. Ensure that the master branch is building and that tests are passing.
2. Create a branch name `release-vX.Y.Z` from `master` (from now we call it `release branch`)
3. In release branch > `pubspec.yaml`, change the `version: X.Y.Z` in the second line to new version
4. In release branch > `README.md`:
- `Installation`: update dependency of super_widgets to new version
- `Widgets`: update the list with new added widgets
- `Widgets`: update sample code with new added widgets
5. In release branch > `CHANGELOG.md`, add a section for this release
6. Ensure that the release branch is building and that tests are passing
7. Run Flutter Analyzer (`flutter analyze --current-package`) in Android Studio Terminal to ensure no more issues
8. Run `flutter pub pub publish --dry-run` in Android Studio Terminal to test publish package (Refer to [Pub.dev#Publishing package](https://flutter.dev/docs/development/packages-and-plugins/developing-packages). If have any error or warning, let fix it and re-run that command.
9. Create pull request from release branch to master branch
10. In Github, merge that pull request.
11. In Android Studio, switch to master branch, pull code to update.
12. Run `flutter pub pub publish --dry-run` again to ensure no more issues
13. Run `flutter pub pub publish` to publish new version of this package to [Pub.dev](https://pub.dev/packages/super_widgets)
14. [Create new release](https://github.com/fluttervn/super_widgets/releases/new) with:
- `tag version` = `vX.Y.Z`
- `Release title` = `vX.Y.Z - SHORT_DESCRIPTION_WHAT_IN_RELEASE`
- `Describe this release` = Changelog of this release, in Markdown (can be copied from [CHANGELOG.md](https://github.com/fluttervn/super_widgets/blob/master/CHANGELOG.md))
15. It's safe to delete release branch now.
16. It's done.
