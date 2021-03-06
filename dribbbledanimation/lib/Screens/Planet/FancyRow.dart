import 'package:flutter/material.dart';
import 'package:dribbbledanimation/ObjectModels/CustomerTransaction.dart';

class FancyRow extends StatelessWidget {

  final CustomerTransaction customerTransaction;
  FancyRow(this.customerTransaction);

  @override
  Widget build(BuildContext context) {

    String getIcon(String description){
      if(description.contains('Receipt')){
        return "assets/receipt.png";
      }else{
        return "assets/invoice.png";
      }
    }
    final planetThumbnail = new Container(
      margin: new EdgeInsets.symmetric(
          vertical: 16.0
      ),
      alignment: FractionalOffset.centerLeft,
      child: new Image(
        image: AssetImage(getIcon(customerTransaction.Description)),
        height: 92.0,
        width: 92.0,
      ),
    );

    final baseTextStyle = const TextStyle(
        fontFamily: 'Poppins'
    );
    final regularTextStyle = baseTextStyle.copyWith(
        color: const Color(0xffb6b2df),
        fontSize: 9.0,
        fontWeight: FontWeight.w400
    );
    final subHeaderTextStyle = regularTextStyle.copyWith(
        fontSize: 12.0
    );
    final headerTextStyle = baseTextStyle.copyWith(
        color: Colors.white,
        fontSize: 18.0,
        fontWeight: FontWeight.w600
    );

    Widget _planetValue({String value, IconData icon}) {
      return new Row(
          children: <Widget>[
            new Icon(icon, size: 12.0 , color: Colors.lightGreen),
            new Container(width: 4.0),
            new Text(value, style: regularTextStyle),
          ]
      );
    }


    final planetCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(50.0, 14.0, 14.0, 14.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 2.0),
          new Text(customerTransaction.Description, style: headerTextStyle),
          new Container(height: 2.0),
          new Text(customerTransaction.Terminal + " - " + customerTransaction.AUser, style: subHeaderTextStyle),
          new Container(
              margin: new EdgeInsets.symmetric(vertical: 8.0 , horizontal: 5.0),
              height: 3.0,
              width: 50.0,
              color: new Color(0xff00c6ff)
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                  child: _planetValue(
                      value: 'Credit : ' + customerTransaction.CrAmount.toString(),
                      icon: Icons.remove_circle)

              ),
              new Expanded(
                  child: _planetValue(
                      value: 'Debit : ' + customerTransaction.DrAmount.toString(),
                      icon: Icons.add_circle)
              ),
              new Expanded(
                  child: _planetValue(
                      value: 'Balance : ' + customerTransaction.BalanceAmount.toString(),
                      icon: Icons.account_balance_wallet)
              )
            ],
          ),
        ],
      ),
    );


    final planetCard = new Container(
      child: planetCardContent,
      height: 124.0,
      margin: new EdgeInsets.only(left: 46.0),
      decoration: new BoxDecoration(
        color: new Color(0xFF333366),
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: new Offset(0.0, 10.0),
          ),
        ],
      ),
    );


    return new Container(
        height: 120.0,
        margin: const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: 10.0,
        ),
        child: new Stack(
          children: <Widget>[
            planetCard,
            planetThumbnail,
          ],
        )
    );
  }
}