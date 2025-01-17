import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  double ilerleme = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sonuç :${ilerleme.toInt()}"),
            Slider(
              max: 100.0,
              min: 0.0,
              value: ilerleme,
              activeColor: Colors.indigo,
              inactiveColor: Colors.yellow,
              onChanged: (double i){
                setState((){
                  ilerleme=i;
                });
              },
            ),
            ElevatedButton(
              child: Text("Göster"),
              onPressed: (){
                print("Slider ilerleme :${ilerleme.toInt()}");
              },
            ),
          ],
        ),
      ),
    );
  }
}
