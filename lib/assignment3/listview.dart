import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
        home: ListView_1(),
      ));
}
class ListView_1 extends StatelessWidget{

  var name =[
    "John Judah",
    "Bisola Akanbi",
    "Eldhose Mark",
    "Andrew John",
    "Arinze David",
    "Elezabeth Rio",
    "John Wick",
    "Aarlo Dayo",
    "Judah John",
    "Rio Akanbo"
  ];

  var number = [
    7025605715,
    8086998483,
    8281483656,
    9188572656,
    9745274909,
    8547236134,
    9946582656,
    9078654312,
    9870765435
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple contact List"),
      ),
      body: ListView.builder(
        itemCount: 9,
          itemBuilder: (context,index)
          {
            return Card(
              child: ListTile(
                leading: Icon(Icons.account_circle,
                    color: Colors.primaries[index % Colors.primaries.length],
                  size: 60 ,
                ),

                title: Text(name[index]),
                subtitle: Text("${number[index]}"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            );
          }),
    );
  }
  
}