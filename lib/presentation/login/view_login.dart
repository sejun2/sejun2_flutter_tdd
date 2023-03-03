import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sejun2_flutter_tdd/presentation/list/view_list.dart';
import 'package:sejun2_flutter_tdd/presentation/login/bloc/login_bloc.dart';
import 'package:sejun2_flutter_tdd/presentation/login/bloc/login_state.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ViewLogin extends StatefulWidget {
  const ViewLogin({Key? key}) : super(key: key);

  @override
  State<ViewLogin> createState() => _ViewLoginState();
}

class _ViewLoginState extends State<ViewLogin> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: BlocConsumer<LoginBloc, LoginState>(
      builder: (BuildContext context, state) {
        if (state.status == LoginStatus.loading) {
          return const CircularProgressIndicator();
        }

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Login'),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    key: const Key('email_text_form_field_key'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: 'Email',
                    ),
                    controller: _emailController,
                  ),
                  TextFormField(
                    key: const Key('password_text_form_field_key'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: 'Password',
                    ),
                    controller: _passwordController,
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if(!_formKey.currentState!.validate()){
                  return;
                }
                context.read<LoginBloc>().login(
                    _emailController.text.toString(),
                    _passwordController.text.toString());
              },
              child: const Text('Login'),
            ),
          ],
        );
      },
      listener: (BuildContext context, Object? state) {
        if ((state as LoginState).status == LoginStatus.success) {
          Fluttertoast.showToast(msg: 'Login Success');
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) => const ViewList()));
        } else if (state.status == LoginStatus.failure) {
          Fluttertoast.showToast(msg: 'Login Failure');
        }
      },
    )));
  }
}
