import 'package:flutter/material.dart';
import 'package:pract1/view/ExpansionTilePract.dart';
import 'package:pract1/view/ListVivePract.dart';
import 'package:pract1/view/list_view_sselector.dart';
import 'package:pract1/view/shimmerPract.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // brightness: Brightness.dark
      ),
      home: SecondClass()
    );
  }
}

class SecondClass extends StatelessWidget {
  const SecondClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Practice"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ExpansionTilePract()));
                print('Hashim khan');
              },
              child: Text("List View",style: TextStyle(color: Colors.white,fontSize: 16.0),),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 16.0)
              ),),
            SizedBox(child: Divider(color: Colors.black12,),width: 200.0,),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ListViewPract()));
              },
              child: Text("List View",style: TextStyle(color: Colors.white,fontSize: 16.0),),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 16.0)
              ),
            ),
            SizedBox(child: Divider(color: Colors.black12,),width: 200.0,),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ListViewSelector()));
              },
              child: Text("List View Selector",style: TextStyle(color: Colors.white,fontSize: 16.0),),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 16.0)
              ),
            ),
            SizedBox(child: Divider(color: Colors.black12,),width: 200.0,),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ShimmerPract()));
              },
              child: Text("Shimmer",style: TextStyle(color: Colors.white,fontSize: 16.0),),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 16.0)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
