import "package:app2/appblock/app_block.dart";
import "package:app2/appblock/appstate.dart";
import "package:app2/constant/colors.dart";
import "package:app2/pages/login/bloc/login_bloc.dart";
import "package:app2/pages/login/bloc/login_event.dart";
import "package:app2/pages/login/bloc/login_state.dart";
import "package:app2/pages/login/login_controller.dart";
import "package:app2/widget/widget_TextInput.dart";
import "package:app2/widget/widget_button.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBlock, Appstate>(builder: (context, state) {
      return Container(
        decoration: BoxDecoration(color: MyColors.mainColor),
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.width / 3,
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: MyColors.baseColor),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Login to the system ",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5), letterSpacing: 2),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  MtextInput(
                      title: "Username",
                      handleChange: (String xxx) {
                        BlocProvider.of<LoGinBlock>(context)
                            .add(HandleChangeUsername(username: xxx));
                      }),
                  const SizedBox(
                    height: 50,
                  ),
                  MtextInput(
                      title: "Password",
                      handleChange: (String xxx) {
                        BlocProvider.of<LoGinBlock>(context)
                            .add(HandleChangePassword(password: xxx));
                      }),
                  const SizedBox(
                    height: 50,
                  ),
                  // Text(BlocProvider.of<AppBlock>(context)
                  //     .state
                  //     is Appstate2
                  //     .toString()),
                  MyButton(
                    loading: state is Appstate2,
                    handleClick: () {
                      LoginController(context: context).handleLogin();
                      // String data1 =
                      //     BlocProvider.of<LoGinBlock>(context).state.username ?? "";
                      // String data2 =
                      //     BlocProvider.of<LoGinBlock>(context).state.password ?? "";
                      // print('$data1, $data2');
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "dont have account? SignUp",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5), letterSpacing: 2),
                  )
                ]),
          ),
        ),
      );
    });
  }
}
