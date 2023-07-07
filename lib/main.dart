import 'package:flutter/material.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Doa-se, Suporte Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
              child: ElevatedButton(
                onPressed: () async {
                  var res = '7898206502915'; //await Navigator.push(
                      //context,
                      //MaterialPageRoute(
                       // builder: (context) => const SimpleBarcodeScannerPage(),
                     //));
                  setState(() {
                    if (res is String) {
                      result = res;
                      result = '7898206502915';
                      print(result);
                    }
    if (result == '7898206502915') {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => CafeMarrom(),
    ),
    );
    } else if (result == '7898206502328') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CafeVerde(),
        ),
      );
    }});
                },
              child: const Text('Comece a escanear'),
              ),
            ),
    );
  }
}


class CafeMarrom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
              child: Row(
                children: [
                  Container(
                    width: 200, // Defina a largura desejada aqui
                    child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 200,
                        height: 200,
                        child: Image.network(
                          'https://raw.githubusercontent.com/Farlos123Marlos/doa-se/main/wickboldfrente.jpeg',
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Image.network(
                          'https://raw.githubusercontent.com/Farlos123Marlos/doa-se/main/wickboldfrente.jpeg',
                        ),
                      ),
                  ],),),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 300,
                        height: 300,
                        child:
                          Image.network(
                            'https://raw.githubusercontent.com/Farlos123Marlos/doa-se/main/wickboldfrente.jpeg',
                          ),
                      ),
                    ],),
      const Expanded( child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Produto Ultraprocessado:',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Evite alimentos dessa categoria.\nEste alimento possui aditivos alimentares.',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Categoria:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Pão de Forma',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),),
                ],
              ),
      ),
    );
  }
}

// ignore: use_key_in_widget_constructors
class CafeVerde extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Café Verde',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}