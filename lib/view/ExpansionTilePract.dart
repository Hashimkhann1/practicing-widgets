
import 'package:flutter/material.dart';

class ExpansionTilePract extends StatelessWidget {
  const ExpansionTilePract({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansion Tile",style: TextStyle(fontSize: 20.0),),
        backgroundColor: Colors.grey[500],
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 20,
            itemBuilder: (context , index){
              return Card(
                child: Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                      title: Text(index.toString()),
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          children: [
                            Text('M Hashim khan'),
                            SizedBox(height: 4.0,),
                            Text('M Hashim khan'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }
        ),
      )
    );
  }
}
