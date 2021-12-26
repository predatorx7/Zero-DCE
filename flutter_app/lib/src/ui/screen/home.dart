import 'package:cat/src/di/cameras.dart';
import 'package:cat/src/di/model_interpretor.dart';
import 'package:cat/src/ui/screen/target.dart';
import 'package:cat/src/ui/widget/camera_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:magnific_core/magnific_core.dart';
import 'package:magnific_ui/magnific_ui.dart';
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
    final cameras = ref.watch(availableCamerasProvider);

    return Scaffold(
      body: cameras.when(
        data: (cameras) {
          if (cameras.isEmpty) {
            return const Center(
              child: Text('No cameras available'),
            );
          }

          return TargetScreen(
            description: cameras.first,
          );

          // return Column(
          //   children: [
          //     const ListTile(
          //       title: Text('Select a camera'),
          //     ),
          //     ListView.builder(
          //       shrinkWrap: true,
          //       itemCount: cameras.length,
          //       itemBuilder: (context, index) {
          //         final camera = cameras[index];
          //         return ListTile(
          //           leading: Icon(getCameraLensIcon(camera.lensDirection)),
          //           title: Text(
          //               '${camera.lensDirection.name.toUpperCase()} CAMERA #${camera.name}'),
          //           onTap: () {
          //             Navigator.of(context).pushNamed(
          //               TargetScreen.routeName,
          //               arguments: camera,
          //             );
          //           },
          //           subtitle: index == 0 ? const Text('recommended') : null,
          //         );
          //       },
          //     ),
          //   ],
          // );
        },
        error: (e, s) {
          logger.severe('Could not get cameras', e, s);
          return const Center(
            child: Text('Something went wrong'),
          );
        },
        loading: () => const Center(
          child: MiniCircularProgressIndicator(),
        ),
      ),
    );
  }
}
