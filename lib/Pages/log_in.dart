import 'package:flutter/material.dart';
import '../first_login.dart';
import './sign_up.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log In'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.home_work),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const FirstLogin(),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Expanded(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 10),
                Text('Welcome',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                        color: Theme.of(context).primaryColor)),
                const SizedBox(height: 30),
                const Text('Log In Page',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                const SizedBox(height: 20),
                Image.asset(
                  'assets/car2.jpg',
                  width: double.infinity,
                  height: 250,
                ),
                const field(
                    text: 'UserName', icon: Icons.verified_user_outlined),
                const SizedBox(height: 15),
                const field(text: 'Passwoed', hide: true, icon: Icons.key),
                const SizedBox(height: 30),
                FlatButton(
                  child: Row(
                    children: [
                      Text(
                        'Log In',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 50),
                      ),
                      const SizedBox(width: 20),
                      Icon(Icons.done_outline_outlined,
                          color: Theme.of(context).primaryColor),
                    ],
                  ),
                  onPressed: () {
                    print('Succeded Login');
                  },
                ),
                Row(
                  children: [
                    const Text(
                      'Do you not hav an account !',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.grey),
                    ),
                    FlatButton(
                      child: const Text(
                        'Sign Up ?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.red),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => SignUp()));
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class field extends StatelessWidget {
  final IconData? icon;
  final Color? color;
  final String text;
  final double? size;
  final String? prefix;
  final bool? hide;
  const field({
    Key? key,
    this.icon,
    this.color,
    required this.text,
    this.size,
    this.prefix,
    this.hide,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                ),
                labelText: text,
                prefixIcon: prefix != null
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            prefix!,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      )
                    : const SizedBox.shrink(),
                icon: icon != null
                    ? Icon(
                        icon,
                        size: size ?? 35,
                        color: color ?? Colors.grey,
                      )
                    : const SizedBox.shrink(),
              ),
              obscureText: hide ?? false,
            ),
          ),
        ],
      ),
    );
  }
}
