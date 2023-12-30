import 'package:flutter/material.dart';

class ListViewSelector extends StatefulWidget {
  ListViewSelector({super.key});

  @override
  State<ListViewSelector> createState() => _ListViewSelectorState();
}

class _ListViewSelectorState extends State<ListViewSelector> {
  List<String> names = ["january" , "February" , "March" , "April" , "May" , "June" , "July" , "August" , "September" , "October" , "November" , "December"];

  List<String> tempArray = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: names.length,
                  itemBuilder: (context , index) {
                return Card(
                  child: ListTile(
                    title: Text(names[index].toString()),
                    trailing: InkWell(
                      onTap: () {
                        setState(() {
                          if(tempArray.contains(names[index].toString())){
                            tempArray.remove(names[index].toString());
                          }else{
                            tempArray.add(names[index].toString());
                          }
                        });
                        // print(tempArray.toString());
                      },
                      child: Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          color: tempArray.contains(names[index]) ? Colors.red : Colors.green,
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Center(
                          child: Text(tempArray.contains(names[index]) ? "Remove" : "Add"),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
