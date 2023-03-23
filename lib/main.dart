import 'package:calculadora/widgets/calcButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _history="";
  String _expression="";
  void clear(String text){
    setState(() {
      _expression = "";
    });
  }

  void allClear(String text){
setState(() {
  _history = "";
  _expression = "";

});
  }
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Calculadora",
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor:const Color(0xff2CC8FE),
        body:Container(
          alignment: Alignment.bottomRight,
          padding: const EdgeInsets.all(12.0),
          child:   Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Container(
              child: Padding(padding: EdgeInsets.only(right: 12.0),
                child: Text(_history,style:GoogleFonts.rubik(color: Colors.white,fontSize: 24.0),),
              ),

            ),
              Container(
                alignment: const Alignment(1.0,1.0),
                padding:const  EdgeInsets.all(12.0),
                child: Text(_expression,style: GoogleFonts.rubik(color: Colors.white,fontSize: 24.0),),
              ),  Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
 CalcButton(
xbgcolor:0xff185C37 ,
  text: "AC",
  callback: allClear,
  textSize: 20,
),
                  CalcButton(
                    xbgcolor: 0xffC75450,
                    text: "C",
                    callback: clear,
                    textSize: 20,
                  ),
                  CalcButton(
                    text: "+",
                    callback: allClear,
                    textSize: 20,
                  ),
                  CalcButton(
                    text: "*",
                    callback: allClear,
                    textSize: 20,
                  ),
                ],

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(
                    text: "AC",
                    callback: allClear,
                    textSize: 20,
                  ),
                  CalcButton(
                    text: "C",
                    callback: allClear,
                    textSize: 20,
                  ),
                  CalcButton(
                    text: "%",
                    callback: allClear,
                    textSize: 20,
                  ),
                  CalcButton(
                    text: "/",
                    callback: allClear,
                    textSize: 20,
                  ),
                ],

              ),
            ],

          ),


        )


      )
    );
  }
}
