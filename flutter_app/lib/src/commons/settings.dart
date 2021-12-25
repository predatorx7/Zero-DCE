import 'package:app_boot/app_boot.dart';
import 'package:cat/src/di/model_interpretor.dart';
import 'package:cat/src/model/tflite.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'theme.dart';

class SettingsFor {
  static const main = SettingsIdentifier('main');
}

class AppDependency with DependencyObject {
  final BuildContext context;
  final WidgetRef ref;

  const AppDependency(this.context, this.ref);
}

final mainAppSettings = AppSettings<Object, DependencyObject>(
  flavorName: 'main',
  appName: 'Cat',
  dependencies: (input) async {
    final _input = input as AppDependency;
    await _input.ref
        .read(modelInterpretorProvider.notifier)
        .supplyModel(RemoteModelNames.lightWeight18);
  },
  theme: AppTheme.regular,
  identifier: SettingsFor.main,
);
