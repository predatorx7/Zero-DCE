import 'package:app_boot/app_boot.dart';
import 'package:cat/src/navigation/config.dart';
import 'package:cat/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CatApp extends ConsumerWidget {
  const CatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = currentSettings;
    final _nav = ref.read(navigationProvider);

    return MaterialApp(
      title: settings.appName,
      theme: settings.theme,
      darkTheme: settings.theme,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      navigatorKey: _nav.navigatorKey,
      onGenerateRoute: _nav.onGenerateRoute,
      onUnknownRoute: _nav.onUnknownRoute,
      localizationsDelegates: const [
        ...AppLocalizations.localizationsDelegates,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
