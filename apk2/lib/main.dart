import 'dart:js';

import 'package:flutter/material.dart';
import 'package:apk2/providers/dashboard_provider.dart';
import 'package:apk2/views/login_view.dart';
import 'package:providers/provider.dart';

void main(List<String> args) {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (bc) => DashboardProvider()),
      ],
      builder: (context, Widget) {
        return MaterialApp(
          home: LoginView(),
        );
      }));
}

class ChangeNotifierProvider {}
