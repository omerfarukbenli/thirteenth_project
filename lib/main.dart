import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ekran = MediaQuery.of(context);
    final double ekrang = ekran.size.width;
    final double ekrany = ekran.size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('İlham Ver'),
      ),
      body: Padding(
        padding: EdgeInsets.all(ekrany / 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: ekrany / 50),
                child: Image.asset(
                  'assets/e.jpg',
                  width: ekrang / 4,
                ),
              ),
              Text(
                'Steve Jobs',
                style: TextStyle(
                    fontSize: ekrang / 25,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(left: ekrany / 46),
                child: Text(
                  'Dünyayı değiştirebileceklerini düşünecek kadar çılgın olan insanlar, bunu yapan insanlardır.',
                  style: TextStyle(fontSize: ekrang / 25),
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: ekrany / 50),
                child: SizedBox(
                  width: ekrang / 2,
                  height: ekrany / 15,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                    onPressed: () {},
                    child: Text(
                      'İlham Ver',
                      style: TextStyle(fontSize: ekrang / 25),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
