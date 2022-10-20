import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../core/presentation/pages/launch_page.dart';

import '../routes/routes_impl.dart';
import '../routes/routes_name.dart';

class TraverApp extends StatefulWidget {
  const TraverApp({super.key});

  @override
  State<TraverApp> createState() => _TraverAppState();
}

class _TraverAppState extends State<TraverApp> {
  @override
  Widget build(final BuildContext context) {
    return const MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''),
      ],
      debugShowCheckedModeBanner: false,
      home: LaunchPage(),
      title: 'Traver',
      onGenerateRoute: RouterDevelopImpl.generateRoute,
      initialRoute: RouteName.launch,
    );
  }
}
