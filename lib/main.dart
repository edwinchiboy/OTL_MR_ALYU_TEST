import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Sign In App';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: Scaffold(
        //appBar: AppBar(title: const Text(_title)),
        backgroundColor: Colors.black,
        body: MySignInScreen(),
      ),
    );
  }
}

class MySignInScreen extends StatefulWidget {
  const MySignInScreen({Key? key}) : super(key: key);

  @override
  State<MySignInScreen> createState() => _MySignInScreenState();
}

class _MySignInScreenState extends State<MySignInScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                bottom: 10,
                top: 90,
              ),
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Image(
                image: AssetImage('assets/water_droplet.jpg'),
                height: 130,
                width: 90,
                fit: BoxFit.fill,
              ),
            ),
            Container(
                margin: const EdgeInsets.only(
                  bottom: 30,
                ),
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Dropium',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                )),
            Container(
              margin: const EdgeInsets.only(
                bottom: 10,
              ),
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  label: const Center(
                    child: Text(
                      "Username",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 10,
              ),
              padding: const EdgeInsets.all(10),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  label: const Center(
                    child: Text(
                      "........",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 15),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    //print('Hi there');
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [Colors.red, Colors.yellow]),
                        borderRadius: BorderRadius.circular(30)),
                    child: Container(
                      // width: 00,
                      height: 50,
                      alignment: Alignment.center,
                      child: const Text(
                        'Log In',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: TextButton(
                child: const Text(
                  'Forgot your password?',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
                onPressed: () {},
              ),
            )
          ],
        ));
  }
}
