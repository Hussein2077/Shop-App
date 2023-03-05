import 'package:flutter/material.dart';
import 'package:shop_app/view/widgets/custm_text_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 150, horizontal: 40),
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Text(
                    'Login',
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: Colors.teal,
                          fontSize: 35,
                        ),
                  ),
                ),
                const SizedBox(height: 30),
                const CustomTextForm(
                  label: 'Email',
                  hint: 'Enter Your Email',
                  icon: Icon(Icons.email_outlined),
                  obscure: false,
                  type: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomTextForm(
                  label: 'Password',
                  hint: 'Enter Your Password',
                  icon: Icon(Icons.lock_outline_rounded),
                  obscure: true,
                  type: TextInputType.text,
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(16)),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Submit',
                        style: TextStyle(color: Colors.white),
                      )),

                ), const SizedBox(
                  height: 3,
                ),
               Padding(
                 padding: const EdgeInsets.only(left: 45),
                 child: Row(
                   children: [
                     const Text('Don\'n have an account? '),
                     TextButton(onPressed: (){

                     }, child: const Text('Register now'))
                   ],
                 ),
               ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
