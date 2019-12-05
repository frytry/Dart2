import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Aditor',
    home: fun(),

  ));
}
class fun extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _funs();
  }
}

class _funs extends State<fun>{
  TextEditingController ctController=TextEditingController();
  var displayResult='';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text('Addition'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: ctController,
            onChanged: (text){
              setState(() {
                this.displayResult=text;
              });
            }
          ),
          RaisedButton(
            child: Text("Click"),
            onPressed: (){
              setState(() {
                this.displayResult=_T();
              });
            },
          ),
          Padding(
            padding: EdgeInsets.all(4),
            child: Text("Text Entred id $displayResult"),
          ),
        ],
      ),
    );
  }
  String _T(){
    double roi = double.parse(ctController.text);
    String result= "$roi";
    return result;
  }
}
