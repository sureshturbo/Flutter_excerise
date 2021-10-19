import 'package:flutter/material.dart';

class Addproduct extends StatefulWidget {
  const Addproduct({Key? key}) : super(key: key);

  @override
  _AddproductState createState() => _AddproductState();
}

class _AddproductState extends State<Addproduct> {
  @override
  Widget build(BuildContext context) {
    var company;

    return Scaffold(
      appBar: AppBar(),
      body: Stack(

        children: [

          Row(
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 10),
                child: ChoiceChip(
                  label: Text("Category1"),
                  selected: true,
                  onSelected: (bool value){},
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 10),
                child: ChoiceChip(
                  label: Text("Category1"),
                  selected: true,
                  onSelected: (bool value){},
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 10),
                child: ChoiceChip(
                  label: Text("Category1"),
                  selected: true,
                  onSelected: (bool value){},
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 10),
                child: ChoiceChip(
                  label: Text("Category1"),
                  selected: true,
                  onSelected: (bool value){},
                ),
              ),
            ],

          ),


          Container(
            padding: EdgeInsets.only(top: 60),
            child: ListTile(

              title:  Text("Tomato"),
              subtitle: Text("Per Price"),

              trailing: Container(
                width: 100,
                child: Row(
                  children: [
                    Icon(Icons.edit, color: Theme.of(context).primaryColor,),
                    Switch(value: true,
                      //onChanged: toggleSwitch,
                      onChanged: (value){
                                 setState(() {

                                 });

                      },
                      activeColor: Theme.of(context).primaryColor,)
                  ],
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}




void toggleSwitch(bool value) {

}


// Widget second() {
//   return Container(
//     //height: 30,
//     child: Column(
//      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Row(
//             //mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Text('data'),
//               Text('data'),
//               // Icon(Icons.edit),
//               // Icon(Icons.access_alarm)
//             ],
//           ),
//         ),
//       ],
//     ),
//   );
// }
