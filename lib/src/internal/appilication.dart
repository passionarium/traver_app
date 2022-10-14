import 'package:flutter/material.dart';


class MyGoalsApp extends StatefulWidget {
  const MyGoalsApp({super.key});

  @override
  State<MyGoalsApp> createState() => _MyGoalsAppState();
}

class _MyGoalsAppState extends State<MyGoalsApp> {
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
      home: RootPage(),
      title: 'My Goals',
      onGenerateRoute: RouterDevelopImpl.generateRoute,
      initialRoute: RouteName.launch,
    );
  }
}
