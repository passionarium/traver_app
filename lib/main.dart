import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import 'generated/l10n.dart';
import 'src/internal/appilication.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await S.load(Locale(Intl.systemLocale.substring(0, 2)));

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const TraverApp());
}

