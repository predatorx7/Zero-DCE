import 'package:cat/src/di/model_interpretor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nil/nil.dart';
import 'package:tflite_flutter/tflite_flutter.dart' as tfl;

import 'failed.dart';

class HomeScreen extends ConsumerStatefulWidget {
  static const String routeName = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  tfl.Interpreter? interpreter;

  @override
  void initState() {
    super.initState();
    interpreter = ref.read(modelInterpretorProvider);
    if (interpreter == null) {
      Future.microtask(() {
        Navigator.of(context).pushNamedAndRemoveUntil(
          DownloadFailedScreen.routeName,
          (route) => false,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (interpreter == null) {
      return nil;
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('ALL SET'),
      ),
    );
  }
}
