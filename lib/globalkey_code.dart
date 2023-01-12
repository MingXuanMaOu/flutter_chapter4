import 'package:flutter_chapter4/main.dart';
import 'package:flutter_chapter4/nextpage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home'),
    );
  }
}

class MyHomePage extends StatefulWidget{
  final String title;

  MyHomePage({required this.title});

  @override
  State<StatefulWidget> createState()=>_MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  final GlobalKey<SwitcherWidgetState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SwitcherWidget(
        key: key,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          key.currentState?.changeState();
        },
        child: Text('切换'),
      ),
    );
  }
}

class SwitcherWidget extends StatefulWidget{
  SwitcherWidget({required Key key}):super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SwitcherWidgetState();
  }
}

class SwitcherWidgetState extends State<SwitcherWidget>{
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Switch.adaptive(value: isActive,
            activeColor: Colors.blueAccent,
            onChanged: (bool currentStatus){
          isActive = currentStatus;
          setState((){});
        }),
      ),
    );
  }

  changeState(){
    isActive = !isActive;
    setState((){});
  }
}
