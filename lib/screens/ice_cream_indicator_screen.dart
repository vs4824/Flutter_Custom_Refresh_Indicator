import 'package:flutter/material.dart';

import '../indicators/ice_cream_indicator.dart';
import '../widgets/example_app_bar.dart';
import '../widgets/example_list.dart';

class IceCreamIndicatorScreen extends StatefulWidget {
  const IceCreamIndicatorScreen({Key? key}) : super(key: key);

  @override
  _IceCreamIndicatorScreenState createState() =>
      _IceCreamIndicatorScreenState();
}

class _IceCreamIndicatorScreenState extends State<IceCreamIndicatorScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: appBackgroundColor,
      appBar: ExampleAppBar(),
      body: SafeArea(
        child: IceCreamIndicator(
          child: ExampleList(),
        ),
      ),
    );
  }
}
