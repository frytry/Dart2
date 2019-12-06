import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Unique Calculator',
    home: calcu(),
  ));
}
class calcu extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _calcus();
  }
}
class _calcus extends State<calcu>{
  TextEditingController numOne=TextEditingController();
  TextEditingController numTwo=TextEditingController();
  var displayAdd='';
  var displaySub='';
  var displayMul='';
  var displayResult='';
  final double  _minimumPadding = 5.0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//			resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Unique Calculator'),
        backgroundColor: Colors.green,
      ),

      body: Container(
        margin: EdgeInsets.all(_minimumPadding * 2),
        child: ListView(
          children: <Widget>[

            Padding(
                padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
                child: Row(
                  children: <Widget>[

                    Expanded(child: TextField(
                      keyboardType: TextInputType.number,

                      controller: numOne,
                      decoration: InputDecoration(
                          labelText: 'First Number',
                          hintText: 'Enter First Number',

                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)
                          )
                      ),
                    )),

                    Container(width: _minimumPadding * 5,),

                    Expanded(child: TextField(
                      keyboardType: TextInputType.number,

                      controller: numTwo,
                      decoration: InputDecoration(
                          labelText: 'Second Number',
                          hintText: 'Enter Second Number',

                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)
                          )
                      ),
                    ))


                  ],
                )),

            Padding(
                padding: EdgeInsets.only(bottom: _minimumPadding, top: _minimumPadding),
                child: Row(children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: RaisedButton(
                        hoverColor:Colors.deepOrange,
                        color: Colors.green,
                        textColor: Colors.black,
                        child: Text('Addition', textScaleFactor: 1.5,),
                        onPressed: () {
                          setState(() {
                            this.displayAdd = adi();
                          });
                        },
                      ),
                    ),

                  ),

                  Expanded(
                    child: Text("$displayAdd",textScaleFactor: 1.5,),
                  ),

                ],)),

            Padding(
                padding: EdgeInsets.only(bottom: _minimumPadding, top: _minimumPadding),
                child: Row(children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: RaisedButton(
                        hoverColor:Colors.deepOrange,
                        color: Colors.green,
                        textColor: Colors.black,
                        child: Text('Subtraction', textScaleFactor: 1.5,),
                        onPressed: () {
                          setState(() {
                            this.displaySub = sub();
                          });
                        },
                      ),
                    ),

                  ),

                  Expanded(
                    child: Text("$displaySub",textScaleFactor: 1.5,),
                  ),

                ],)),
            Padding(
                padding: EdgeInsets.only(bottom: _minimumPadding, top: _minimumPadding),
                child: Row(children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: RaisedButton(
                        hoverColor:Colors.deepOrange,
                        color: Colors.green,
                        textColor: Colors.black,
                        child: Text('Multiplication', textScaleFactor: 1.5,),
                        onPressed: () {
                          setState(() {
                            this.displayMul = mul();
                          });
                        },
                      ),
                    ),

                  ),

                  Expanded(
                    child: Text("$displayMul",textScaleFactor: 1.5,),
                  ),

                ],)),
            Padding(
                padding: EdgeInsets.only(bottom: _minimumPadding, top: _minimumPadding),
                child: Row(children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: RaisedButton(
                        hoverColor:Colors.deepOrange,
                        color: Colors.green,
                        textColor: Colors.black,
                        child: Text('Clear', textScaleFactor: 1.5,),
                        onPressed: () {
                          setState(() {
//                            this.displayMul = mul();
                            displayAdd='';
                            displaySub='';
                            displayMul='';
                          });
                        },
                      ),
                    ),

                  ),



                ],))

          ],
        ),
      ),
    );
  }

  String adi(){
    double num1=double.parse(numOne.text);
    double num2=double.parse(numTwo.text);
    double res=num1+num2;
    String result="+> = $res";
    return result;
  }
  String sub(){
    double num1=double.parse(numOne.text);
    double num2=double.parse(numTwo.text);
    double res=num1-num2;
    String result="-> = $res";
    return result;
  }
  String mul(){
    double num1=double.parse(numOne.text);
    double num2=double.parse(numTwo.text);
    double res=num1*num2;
    String result="x> = $res";
    return result;
  }
}
