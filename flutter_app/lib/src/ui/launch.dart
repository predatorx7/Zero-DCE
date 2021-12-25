import 'package:app_boot/app_boot.dart';
import 'package:app_boot/screen/launch.dart';
import 'package:cat/src/commons/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:magnific_core/magnific_core.dart';

import 'widget/splash.dart';

class AppLaunchScreen extends ConsumerStatefulWidget {
  static const routeName = '/';

  final String? routePath;
  final String reRoutePath;

  const AppLaunchScreen({
    Key? key,
    required this.routePath,
    required this.reRoutePath,
  }) : super(key: key);

  @override
  ConsumerState<AppLaunchScreen> createState() => _AppLaunchScreenState();
}

class _AppLaunchScreenState extends ConsumerState<AppLaunchScreen> {
  late SplashAnimatingNotifier _animatingNotifier;
  @override
  void initState() {
    super.initState();
    _animatingNotifier = SplashAnimatingNotifier();
    _animatingNotifier.onStarted();
  }

  @override
  void dispose() {
    _animatingNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LaunchScreen<DependencyObject>(
      routePath: widget.routePath,
      reRoutePath: widget.reRoutePath,
      dependencyObjectProvider: (context) {
        return AppDependency(context, ref);
      },
      onError: (e, s) {
        logger.severe('Error on launch screen', e, s);
      },
      animatingNotifier: _animatingNotifier,
      child: AppSplashFragment(
        animatingNotifier: _animatingNotifier,
      ),
    );
  }
}
