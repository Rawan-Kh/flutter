import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Misbha App',
      home: MisbhaPage(title: 'Misbha App'),
    );
  }
}

class MisbhaPage extends StatefulWidget {
  MisbhaPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MisbhaState createState() => _MisbhaState();
}

class _MisbhaState extends State<MisbhaPage> {
  int counter = 0;
  String name = "سبحان الله";
  int roll = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    if (counter == 15) {
      name = "سبحان الله";
    }
    if (counter == 28) {
      name = "الحمد لله";
    }
    if (counter == 35) {
      name = " لا اله الا الله";
    }
    for (int i = 0; i < 50; i++) {
      if (counter == 46) {
        counter = 0;
        roll = i + roll;
        roll ++;
        name = "سبحان الله" ;
      }
       
    }

    return Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
            title: const Text("Misbha"),
            backgroundColor: Colors.teal,
            centerTitle: true,
            flexibleSpace: Container(
              decoration: const BoxDecoration(),
            )),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "http://islamwallpapers.com/wallpapers/67.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height:200,
                ),
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          color: Colors.white,
                          offset: Offset(2, 2),
                          blurRadius: 2.2,
                        )
                      ]),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  " $counter",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          color: Colors.white,
                          offset: Offset(2, 2),
                          blurRadius: 2.2,
                        )
                      ]),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                      shadowColor: Colors.white,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                        side: BorderSide(
                          color: Colors.white,
                          width: 5,
                        ),
                      ),
                      minimumSize: Size(150, 150),
                    ),
                    child: Text(
                      "اضغط",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
          
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "الدورة رقم $roll:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          roll = 0;
                          counter = 0;
                        });
                      },
                      child: Text(
                        "البدء من جديد",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )));
  }
}
