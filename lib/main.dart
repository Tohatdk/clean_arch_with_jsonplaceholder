import 'package:flutter/material.dart';
import 'package:progress_bar/di_dart.dart';
import 'package:progress_bar/presentation/ui/pages/my_app.dart';
import 'package:progress_bar/services/firebase_messaging/firebase_messaging.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseNotificationService().init();
  setup();
  runApp(const MyApp());
}

