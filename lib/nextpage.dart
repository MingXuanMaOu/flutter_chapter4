import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('第二个界面'),
      ),
      body: Center(
        child: Text(
          '第二个界面',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}