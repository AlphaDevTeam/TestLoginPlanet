
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dribbbledanimation/Screens/Test/index.dart';

class DropDownScreen extends StatefulWidget {
  const DropDownScreen({Key key}) : super(key: key);

  @override
  DropDownScreenState createState() => new DropDownScreenState();
}

class DropDownScreenState extends State<DropDownScreen>{

  List customerList;

  Future<String> fetchPost() async {
    final response =
    await http.get('http://192.168.1.6:3000/api/Customer?Inactive=0');
    final responseJson = json.decode(response.body);
    print("responseJson  : " + responseJson.toString());
    //CustomerTransaction tt = new CustomerTransaction.fromJson(responseJson);
    print("responseJson  complete....");
    //print("CustomerTransaction  : " + tt.Description);

    this.setState(() {
      customerList = json.decode(response.body);
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
    List<String> customerIDList = new List();
    Map<String,String> customerNameToIDList = new Map();
    if(customerList != null){
      customerList.forEach((element) =>
          customerIDList.add(element['CustomerID'])
      );
    }

    return new Scaffold(
      appBar: new AppBar(title: new Text('Select Customer')),
      body: new ListView(
        children: [

          new Column(
            children: <Widget>[
              new Text("Select Customer : "),
              new DropdownButton<String>(
                items: customerIDList.map((String value) {
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value),
                  );
                }).toList(),
                onChanged: (_) {
                  String custID = _.toString();
                  print(custID);
                  Navigator.of(context).push(new PageRouteBuilder(pageBuilder: (_, __, ___) => new TestScreen(custID)));

                  },
              ),
            ],
          ),
        ],
      ),
    );
  }
}