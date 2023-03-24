import 'package:bilingual/lang/localization_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('welcome'.tr),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      LocalizationService().changeLocale('English');
                    },
                    child: const Text('English')),
                TextButton(
                    onPressed: () {
                      LocalizationService().changeLocale('Indonesia');
                    },
                    child: const Text('Indonesia')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
