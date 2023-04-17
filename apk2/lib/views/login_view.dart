import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            JudulFormLogin(),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: FormLogin(),
                ),
                Center(child: LogoAplikasi()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FormLogin extends StatelessWidget {
  const FormLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: Card(
        color: Colors.purple[200],
        margin: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      fillColor: Color.fromARGB(255, 248, 246, 246),
                      filled: true),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      fillColor: Color.fromARGB(255, 248, 246, 246),
                      filled: true),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text('login'),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    primary: Colors.red),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LogoAplikasi extends StatelessWidget {
  const LogoAplikasi({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Image.asset(
          'assets/logo.png',
          width: 150,
        ));
  }
}

class JudulFormLogin extends StatelessWidget {
  const JudulFormLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 150, bottom: 50),
      child: Text(
        'Aplikasi\nPendataan Warga',
        style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
