import 'package:flutter/material.dart';
import '../../core/resources/manager_font_sizes.dart';
import '../../core/resources/manager_strings.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  String? description;
  String? name;
  String? url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ManagerStrings.aboutScreen),
      ),
      body: Container(
        color: Colors.white70,
        child: Center(
          child: Text(
            description ?? '',
            style: const TextStyle(
              fontSize: ManagerFontSizes.s24,
            ),
          ),
        ),
      ),
    );
  }
}
