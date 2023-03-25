import 'package:flutter/material.dart';
import 'package:indrawani_kuis/halaman_utama.dart';

class HalamanLanding extends StatefulWidget {
  const HalamanLanding({Key? key}) : super(key: key);

  @override
  _HalamanLandingState createState() => _HalamanLandingState();
}

class _HalamanLandingState extends State<HalamanLanding> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Kuis Prak. Pemprograman Mobile"),
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'images/logo.png',
                    width: 190,
                    height: 190,
                  ),
                  Text(
                    'Selamat Datang di Kuis Prak. TPM',
                    style: TextStyle(fontSize: 25),
                  ),
                  buttonData(context),
                ]),
          ),
        ]),
      ),
    );
  }
}

Widget buttonData(BuildContext context) {
  return Container(
    padding: const EdgeInsets.only(bottom: 20, left: 60, right: 60, top: 35),
    child: Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
                return HalamanUtama();
              }));
        },
        child: const Text('Get Start'),
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(40),
        ),
      ),
    ),
  );
}
