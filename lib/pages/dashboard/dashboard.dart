import 'package:app2/appblock/app_block.dart';
import 'package:app2/appblock/appstate.dart';
import 'package:app2/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Dashboard",
            style: TextStyle(
                color: MyColors.baseColor, fontWeight: FontWeight.w700),
          ),
        ),
        body: const Column(children: [
          // Text('Welcome ${state.user ?? ["username"]}')
        ]),
      );
    });
  }
}
