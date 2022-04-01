import 'package:flutter/material.dart';

import '../first_login.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.home_outlined),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) =>const FirstLogin(),
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
                Text(
                  'Welcome',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Theme.of(context).primaryColor),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Sign Up Page',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(height: 10),
                Image.asset('assets/car3.jpg'),
                const field(text: 'UserName', icon: Icons.verified_user_outlined),
                const SizedBox(height: 10),
                const field(text: 'Email', icon: Icons.alternate_email_rounded),
                const SizedBox(height: 10),
                const field(text: 'Passwoed', hide: true, icon: Icons.key),
                const SizedBox(height: 30),
                FlatButton(
                  child: Row(
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 50),
                      ),
                      const SizedBox(width: 20),
                      Icon(Icons.account_circle,
                          color: Theme.of(context).primaryColor),
                    ],
                  ),
                  onPressed: () {
                    print('Succeded New account');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
