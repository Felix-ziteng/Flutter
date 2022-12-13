import 'package:flutter/material.dart';
import 'package:flutter_login_signup/src/loginPage.dart';
import 'package:flutter_login_signup/src/signup.dart';
import 'package:flutter_login_signup/src/data/itemlist.dart';
import 'package:google_fonts/google_fonts.dart';

class itemPage extends StatefulWidget {
  itemPage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _itemPageState createState() => _itemPageState();
}

class _itemPageState extends State<itemPage> {

  Widget _getListData(context,index){
    return ListTile(
        title: Text(listData[index]["title"]),
        leading:Image.network(listData[index]["imageUrl"]),
        subtitle:Text(listData[index]["author"])
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount:listData.length,
        itemBuilder:this._getListData
    );
  }
}
