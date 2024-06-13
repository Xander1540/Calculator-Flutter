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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade900),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Stateful'),
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

  var no1controller = TextEditingController();
  var no2controller = TextEditingController();
  var ans='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade600,
        title: Center(child: Text(widget.title, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),
      ),
      body: Container(
        color: Colors.blueAccent.shade100,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no1controller,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2controller,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1controller.text.toString());
                        var no2 = int.parse(no2controller.text.toString());
                        ans = (no1+no2).toString();
                        setState(() {

                        });
                      },
                          child: Text('Add', style: TextStyle(color: Colors.white)),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue.shade400,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)
                          )),
                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1controller.text.toString());
                        var no2 = int.parse(no2controller.text.toString());
                        ans = (no1-no2).toString();
                        setState(() {

                        });
                      },
                          child: Text('Sub', style: TextStyle(color: Colors.white)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.shade400,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                          )),
                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1controller.text.toString());
                        var no2 = int.parse(no2controller.text.toString());
                        ans = (no1*no2).toString();
                        setState(() {

                        });
                      },
                          child: Text('Mul', style: TextStyle(color: Colors.white)),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue.shade400,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)
                          )),
                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1controller.text.toString());
                        var no2 = int.parse(no2controller.text.toString());
                        ans = (no1/no2).toString();
                        setState(() {

                        });
                      },
                          child: Text('Div', style: TextStyle(color: Colors.white)),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.shade400,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)
                      ),)
                    ],
                  ),
                ),
                Text('Result: $ans', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
