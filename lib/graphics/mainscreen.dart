import 'package:flutter/material.dart';

import 'modules/controller.dart';
import 'modules/musis_display.dart';
import 'modules/piano.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [controller, musicDisplay, piano]));
  }
}
