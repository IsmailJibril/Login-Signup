import 'package:flutter/material.dart';
import './Pages/sign_up.dart';
import './Pages/log_in.dart';

class FirstLogin extends StatelessWidget {
  const FirstLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.account_box),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const LogIn(),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.person_add_alt),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const SignUp(),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Welcome',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                          color: Theme.of(context).primaryColor),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Lorem ipsum dolor sit amet',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              Image.asset(
                'assets/car1.jpg',
                width: double.infinity,
                height: 300,
              ),

              const SizedBox(height: 50),

              //
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                width: double.infinity,
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      color: Colors.amber,
                      child: FlatButton(
                        child: Row(
                          children: [
                            Text(
                              'Log In',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 50),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Icon(Icons.login),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => LogIn(),
                            ),
                          );
                        },
                        // shape: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(30.0),
                        // ),
                      ),
                    ),
                    Container(
                      color: Colors.pink,
                      width: double.infinity,
                      margin:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: FlatButton(
                        child: Row(
                          children: [
                            Text(
                              'Sign Up',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 50),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Icon(
                              Icons.fiber_new_outlined,
                              size: 40,
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => SignUp()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.account_circle),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const LogIn(),
            ),
          );
        },
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }
}
