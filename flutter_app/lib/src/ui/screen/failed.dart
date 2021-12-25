import 'package:flutter/material.dart';

class DownloadFailedScreen extends StatelessWidget {
  static const String routeName = '/failed';
  const DownloadFailedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(),
          const Icon(
            Icons.warning_rounded,
            size: 100,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('Something went wrong'),
        ],
      ),
    );
  }
}
