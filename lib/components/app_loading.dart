// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLoading extends StatelessWidget {
  const AppLoading({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return Center(child: CircularProgressIndicator());
    }
    return const CupertinoActivityIndicator();
  }
}
