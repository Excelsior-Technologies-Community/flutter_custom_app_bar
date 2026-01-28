import 'package:flutter/material.dart';
import 'package:flutter_custom_app_bar/widgets/primary_app_bar_widgets.dart';
import 'package:flutter_custom_app_bar/widgets/secondary_app_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppbarWidget(title: 'Primary App Bar'),
      body: Column(
        children: [
          SecondaryAppbarWidget(title: 'Secondary App Bar'),
          Expanded(
            child: Center(
              child: Text(
                'Home Screen Content',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
