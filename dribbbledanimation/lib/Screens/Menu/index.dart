import 'package:flutter/material.dart';
import 'package:dribbbledanimation/Components/FancyDataCard.dart';
import 'package:dribbbledanimation/ObjectModels/CardDataModel.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key key}) : super(key: key);

  @override
  MenuScreenState createState() => new MenuScreenState();
}

class MenuScreenState extends State<MenuScreen>{

  @override
  Widget build(BuildContext context) {
    List<CardDataModel> menuItems = new List();
    CardDataModel cardDataModel = new CardDataModel(
        "assets/customer_account.png", "Customer Account",
        "Detailed Account Details", "", "", "");
    CardDataModel cardDataModel2 = new CardDataModel(
        "assets/customer_account.png", "Invoice", "Detailed Account Details",
        "", "", "");
    CardDataModel cardDataModel3 = new CardDataModel(
        "assets/customer_account.png", "Orders", "Detailed Account Details", "",
        "", "");
    CardDataModel cardDataModel4 = new CardDataModel(
        "assets/customer_account.png", "ItemBin Card",
        "Detailed Account Details", "", "", "");
    CardDataModel cardDataModel5 = new CardDataModel(
        "assets/customer_account.png", "Cashbook", "Detailed Account Details",
        "", "", "");
    CardDataModel cardDataModel6 = new CardDataModel(
        "assets/customer_account.png", "Receipts", "Detailed Account Details",
        "", "", "");
    CardDataModel cardDataModel7 = new CardDataModel(
        "assets/customer_account.png", "Payments", "Detailed Account Details",
        "", "", "");

    menuItems.add(cardDataModel);
    menuItems.add(cardDataModel2);
    menuItems.add(cardDataModel3);
    menuItems.add(cardDataModel4);
    menuItems.add(cardDataModel5);
    menuItems.add(cardDataModel6);
    menuItems.add(cardDataModel7);


    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('App Tile - Menu'),
      ),
      body: new ListView.builder(
        itemCount: menuItems == null ? 0 : menuItems.length,
        itemBuilder: (BuildContext context, int index) {
          return new GestureDetector( //You need to make my child interactive
              onTap: () => Navigator.pushNamed(context, "/customerTransaction"),
              child: new FancyDataCard(menuItems[index])
          );
        },
      ),
      backgroundColor: Colors.blueAccent,
    );
  }
}
