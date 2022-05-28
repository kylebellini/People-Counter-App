import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String appTitle = 'Contador de Pessoas';
  String welcomeMessage = 'Seja bem-vindo(a), pode entrar!';
  String wentInMessage = 'Entrou';
  String wentOutMessage = 'Saiu';
  int peopleAmount = 0;

  void removePerson() {
    setState(() {
      peopleAmount--;
    });
  }

  void addPerson() {
    setState(() {
      peopleAmount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(appTitle),
      ),
      backgroundColor: Colors.grey[850],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            welcomeMessage,
            style: const TextStyle(
                fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Text(
              peopleAmount.toString(),
              style: const TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: addPerson,
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.lightBlue,
                      fixedSize: const Size(100, 50),
                      primary: Colors.grey[850],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: Text(
                    wentInMessage,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )),
              const SizedBox(
                width: 30,
              ),
              TextButton(
                  onPressed: removePerson,
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.lightBlue,
                      fixedSize: const Size(100, 50),
                      primary: Colors.grey[850],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: Text(
                    wentOutMessage,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
