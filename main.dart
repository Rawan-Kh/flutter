import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 
void main() {
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  // root widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MY PROFILE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
 
class MyHomePage extends StatelessWidget {
//   MyHomePage({Key key = const Key("any_key")}) : super(key: key);
 
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
 
// class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar:AppBar(
        title: Text("My Profile"),
        centerTitle: true,
      ),
      body: profileView()
    );
  }
 
  Widget profileView() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 50,0 ,50),
          child: Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 70,
                child: ClipOval(child: Image.asset('image/ab51f86455b2f201c133d8b0e9ed8404stefan-kunze-eWFdaPRFjwE-unsplash.jpg', height: 150, width: 150, fit: BoxFit.cover,),),
              ),
            ],
          ),
        ),
        
        Expanded(
          child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color:  Color(0xFF2E80C4),
          ),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("Name",style: TextStyle(color: Colors.white70,fontSize: 20, fontWeight: FontWeight.bold),),
                subtitle: Text("User Name"),
                leading:Icon(Icons.account_circle_rounded, color: Colors.white),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
          
               ListTile(
                title: Text("Email",style: TextStyle(color: Colors.white70,fontSize: 20, fontWeight: FontWeight.bold),),
                subtitle: Text("rawanKHsalama@gmail.com"),
                leading:Icon(Icons.email_rounded, color: Colors.white,),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
        
           ListTile(
                title: Text("Phone",style: TextStyle(color: Colors.white70,fontSize: 20, fontWeight: FontWeight.bold),),
                subtitle: Text("01555980247"),
                leading:Icon(Icons.phone_in_talk_rounded , color: Colors.white,),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
             
            ],
          ),
        ))
      ],
    );
  }
}