import 'package:app2/API/repositories/repository.dart';
import 'package:app2/appblock/app_block.dart';
import 'package:app2/pages/login/bloc/login_bloc.dart';
import 'package:app2/pages/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MultiBlocProvider(
          providers: [
            BlocProvider<AppBlock>(
              create: (context) =>
                  // AppBlock(RepositoryProvider.of<AppRepository>(context)),
                  AppBlock(),
            ),
            BlocProvider<LoGinBlock>(
              create: (context) => LoGinBlock(),
            )
          ],
          child: RepositoryProvider(
              create: (context) => AppRepository(),
              child: const Scaffold(
                body: LoginPage(),
              )),
        ));
  }
}
