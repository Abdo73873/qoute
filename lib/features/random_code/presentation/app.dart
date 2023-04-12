import 'package:flutter/material.dart';
import 'package:qoute1/config/routes/routes.dart';
import 'package:qoute1/core/utils/app_colors.dart';
import 'package:qoute1/core/utils/app_string.dart';
import 'package:qoute1/core/utils/hex_color.dart';

import '../../../file_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppString.appName,
      theme: ThemeData(
        // is not restarted.
        primarySwatch: AppColor.primary,
        primaryColor: HexColor('673ab7'),
      ),
      home:  const FileManage(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
