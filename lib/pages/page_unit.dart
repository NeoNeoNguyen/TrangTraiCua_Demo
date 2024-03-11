// ignore_for_file: unused_import, sized_box_for_whitespace, avoid_unnecessary_containers, avoid_print, prefer_const_constructors, unnecessary_new, unused_element, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class Unit1 extends StatefulWidget {
  const Unit1({super.key});

  @override
  State<Unit1> createState() => _Unit1State();
}

String _dropdownvalue = 'Lọc';

// List of items in our dropdown menu
var items = [
  'Lọc',
  'Item 2',
  'Item 3',
];

class _Unit1State extends State<Unit1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Color(0xFF087EBF),
          onPressed: () {},
        ),
        title: Text(
          "UNIT 1A",
          style:
              TextStyle(color: Color(0xFF087EBF), fontWeight: FontWeight.bold),
        ),
      ),
      body: new ListView(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
              value: _dropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _dropdownvalue = newValue!;
                });
              },
            ),
          ),
          new SizedBox(height: 20.0),
          new Container(
            child: new ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              physics: ScrollPhysics(),
              itemBuilder: (context, index) {
                return new Column(
                  children: <Widget>[
                    new Container(
                      height: 21.0,
                      color: Colors.white,
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                         Icon(Icons.format_list_numbered,
                              color: Colors.white),
                         Padding(
                              padding: const EdgeInsets.only(right: 5.0)),
                         Text('Hàng ${index + 1}',
                              style: new TextStyle(
                                  fontSize: 15.0, color: Colors.grey),
                              textAlign: TextAlign.left),
                        ],
                      ),
                    ),
                    new Container(
                      height: 240.0,
                      child: new ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Card(
                            elevation: 5.0,
                            child: Container(
                              height: MediaQuery.of(context).size.width / 2,
                              width: MediaQuery.of(context).size.width / 2,
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Item ${index + 1}'),
                                  SizedBox(height: 10,),
                                  Image.network(''),
                                  SizedBox(height: 10,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      TextButton(
                                        style: ButtonStyle(
                                          foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                        ),
                                        onPressed: () { 
                                          Navigator.of(context).pop();
                                       }, 
                                       child: Text('KIỂM TRA & VỆ SINH | 1'),                                   
                                      ),
                                      TextButton(
                                        style: ButtonStyle(
                                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                        ),
                                        onPressed: () { 
                                          Navigator.of(context).pop();
                                       }, 
                                       child: Text('CHUYỂN HỘP'),                                       
                                      )
                                    ],
                                  )
                                ],
                              ) 
                            ),
                          );
                        },
                      ),
                    ),
                   SizedBox(height: 20.0),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
