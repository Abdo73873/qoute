import 'package:flutter/material.dart';
import 'package:qoute1/config/routes/routes.dart';
import 'package:qoute1/core/utils/app_colors.dart';
import 'package:qoute1/core/utils/assets_manager.dart';
import 'package:qoute1/core/utils/hex_color.dart';
import 'package:qoute1/features/favouritecode1/presentation/screens/favorite_code.dart';

class QuoteScreen extends StatelessWidget {
  const QuoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('451BAB'),
      body: Center(
        child: InkWell(
            onTap: () => Navigator.pushNamed(
                context,Routes.favouriteCode),
            child: Image.asset(AppImages.booll)),
      ),
    );
  }
}
