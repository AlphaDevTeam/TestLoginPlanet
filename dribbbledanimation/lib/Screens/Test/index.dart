import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:dribbbledanimation/ObjectModels/CustomerTransaction.dart';
import 'package:dribbbledanimation/Screens/Planet/DataListFancy.dart';
import 'package:dribbbledanimation/Screens/Planet/FancyRow.dart';
import 'package:http/http.dart' as http;

class TestScreen extends StatefulWidget {
  String customerID;
  TestScreen(this.customerID,{Key key}) : super(key: key);

  @override
  TestScreenState createState() => new TestScreenState(customerID);
}

class TestScreenState extends State<TestScreen>{

  String customerID;
  TestScreenState(this.customerID);
  List data;


  Future<String> fetchPost() async {
    print("Getting " + customerID);
    final response = await http.get('http://192.168.1.6:3000/api/CustomerTransaction?CustomerID=' + customerID);
    final responseJson = json.decode(response.body);
    print("responseJson  : " + responseJson.toString());
    //CustomerTransaction tt = new CustomerTransaction.fromJson(responseJson);
    print("responseJson  complete....");
    //print("CustomerTransaction  : " + tt.Description);

    this.setState(() {
      data = json.decode(response.body);
    });

    return "Success!";
  }

  @override
  void initState() {
    super.initState();
    this.fetchPost();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (BuildContext context, int index) {
            CustomerTransaction customerTransaction = new CustomerTransaction.fromJson(data[index]);
            print("test : " + customerTransaction.Description);
            return new FancyRow(customerTransaction);
          },
        ),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }

}
