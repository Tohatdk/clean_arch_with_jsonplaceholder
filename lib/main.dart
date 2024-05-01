import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:progress_bar/di_dart.dart';
import 'package:progress_bar/services/routes/app_rout_config.dart';
import 'package:progress_bar/src/presentation/ui/pages/my_app.dart';
import 'package:progress_bar/services/firebase_messaging/firebase_messaging.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseNotificationService().init();
  setup();

  // FirebaseAuth.instance.authStateChanges().listen((User? user) {
  //   AppRouteConfig.router.refresh();
  // });

  runApp(const MyApp());
}

