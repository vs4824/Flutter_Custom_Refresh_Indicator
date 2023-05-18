import 'package:flutter/material.dart';

import '../indicators/check_mark_indicator.dart';
import '../widgets/example_app_bar.dart';
import '../widgets/example_list.dart';

class CheckMarkIndicatorScreen extends StatefulWidget {
  const CheckMarkIndicatorScreen({Key? key}) : super(key: key);

  @override
  _CheckMarkIndicatorScreenState createState() =>
      _CheckMarkIndicatorScreenState();
}

class _CheckMarkIndicatorScreenState extends State<CheckMarkIndicatorScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: appBackgroundColor,
      appBar: ExampleAppBar(),
      body: SafeArea(
        child: CheckMarkIndicator(
          child: ExampleList(),
        ),
      ),
    );
  }
}
