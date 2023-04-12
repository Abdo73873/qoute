import 'package:flutter/material.dart';
import 'package:qoute1/core/utils/app_colors.dart';
import 'package:qoute1/core/utils/assets_manager.dart';
import 'package:qoute1/core/utils/hex_color.dart';

class FavouriteCodeScreen extends StatefulWidget {
  const FavouriteCodeScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteCodeScreen> createState() => _FavouriteCodeScreenState();
}

class _FavouriteCodeScreenState extends State<FavouriteCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:HexColor('451BAB'),
      body: Center(
        child: Text('FavouriteCodeScreen',
        style: TextStyle(
          fontSize: 30.0,
          color: Colors.white,
        ),),
      ),
    );
  }
}
