import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerPract extends StatefulWidget {
  ShimmerPract({super.key});

  @override
  State<ShimmerPract> createState() => _ShimmerPractState();
}

class _ShimmerPractState extends State<ShimmerPract> {
  bool enableShimmer = true;

  @override
  void initState() {
    // TODO: implement initState
    // print('nhg');

    // print(enableShimmer);

    super.initState();
    loadData();
  }


  loadData()async {
    await Future.delayed(Duration(seconds: 3));
    setState(() {
      enableShimmer = false;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Shimmer"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          enableShimmer ? Expanded(
            child: ListView.builder(
              itemCount: 10,
                itemBuilder: (context , index) {
                return Shimmer.fromColors(
                  baseColor: Colors.grey.shade300,
                  highlightColor: Colors.grey.shade100,
                  enabled: enableShimmer,
                  child: ListTile(
                    leading: CircleAvatar(radius: 30,backgroundColor: Colors.white,),
                    title: Container(
                      height: 10,
                      width: 100,
                      color: Colors.white,
                    ),
                    subtitle: Container(
                      height: 10,
                      width: 100,
                      color: Colors.white,
                    ),
                  ),
                );
            }),
          ) : Center(
            child: Text("M Hashim",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.grey),),
          )
        ],
      ),
    );
  }
}
