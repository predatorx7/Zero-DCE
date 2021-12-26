import 'package:camera/camera.dart';
import 'package:cat/src/di/computer.dart';
import 'package:cat/src/di/model_interpretor.dart';
import 'package:cat/src/ui/widget/camera_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:magnific_core/magnific_core.dart';

class TargetScreen extends ConsumerStatefulWidget {
  const TargetScreen({
    Key? key,
    required this.description,
  }) : super(key: key);

  final CameraDescription description;

  @override
  ConsumerState<TargetScreen> createState() => _TargetScreenState();
}

class _TargetScreenState extends ConsumerState<TargetScreen> {
  final cameraKey = GlobalKey<CameraViewState>();

  CameraViewControlsDelegate? getControls() {
    return cameraKey.currentState;
  }

  late ViewComputer _computer;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      final models = ref.read(modelInterpretorProvider);
      final controls = getControls();
      if (controls == null) {
        logger.warning('Controls is null');
        return;
      }
      if (models == null) {
        logger.warning('Controls is null');
        return;
      }
      _computer = ViewComputer(controls, models);
      _computer.attach();
    });
  }

  @override
  void dispose() {
    _computer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CameraView(
        key: cameraKey,
        description: widget.description,
      ),
    );
  }
}
