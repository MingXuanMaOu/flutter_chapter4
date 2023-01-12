import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_chapter4/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: LocalkeyPage(title: 'LocalkeyPage'),
    );
  }
}

class LocalkeyPage extends StatefulWidget{
  final String title;

  LocalkeyPage({required this.title});

  @override
  State<StatefulWidget> createState() => _LocalkeyPageState();
}

class _LocalkeyPageState extends State<LocalkeyPage>{
  late List<Widget> _widgetList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _widgetList = [
      new StatelessContainer(randomColor: Colors.deepPurpleAccent,),
      new StatelessContainer(randomColor: Colors.green,)
    ];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _widgetList,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.repeat),
        tooltip: '颜色切换',
        onPressed: (){
          setState((){
            _widgetList.insert(0, _widgetList.removeAt(1));
          });
        },
      ),
    );
  }
}

class StatelessContainer extends StatefulWidget{
  late final Color randomColor;

  StatelessContainer({this.randomColor = Colors.red});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StatefulContainerState();
  }
}

class _StatefulContainerState extends State<StatelessContainer>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      key: UniqueKey(),
      width: 200,
      height: 200,
      color: widget.randomColor,
    );
  }
}



















