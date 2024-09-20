import 'package:first_web/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';


Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        Provider<WebRouter>(
          lazy: false,
          create: ((context) => WebRouter()),
        ),
      ],
      child: Builder(builder: (context) {
        final router = Provider.of<WebRouter>(context, listen: false).router;
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerDelegate: router.routerDelegate,
          routeInformationParser: router.routeInformationParser,
          routeInformationProvider: router.routeInformationProvider,
          title: 'Sample Template',
        );
      }),
    );
  }
}
