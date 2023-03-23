
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalcButton extends StatelessWidget {
  final Function callback;
  final String text;
  final double textSize;
  final int xbgcolor;
  const CalcButton({Key? key,required this.callback,
  required this.text, this.textSize=28.0,this.xbgcolor=0xff1365C8}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin:const EdgeInsets.all(10.0),
      child: SizedBox(
        width: 65.0,
         height:65.0,
        child: TextButton(onPressed: (){
          callback(text);
        },
            style: TextButton.styleFrom(
foregroundColor: Colors.white,
              backgroundColor: Color(xbgcolor),
              padding: const EdgeInsets.all(16.0),
              textStyle:  TextStyle(fontSize:textSize),
            ),
         child: Text(text,style:GoogleFonts.rubik(

         )),
        )

      )
      );



  }
}

