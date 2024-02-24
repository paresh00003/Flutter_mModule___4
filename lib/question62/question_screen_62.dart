import 'package:flutter/material.dart';

class QuestionScreen62 extends StatefulWidget {
  const QuestionScreen62({super.key});

  @override
  State<QuestionScreen62> createState() => _QuestionScreen62State();
}

class _QuestionScreen62State extends State<QuestionScreen62> {

  Widget gettext(String ok)
  {
    return  Text("${ok}",style: TextStyle(

      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.black,


      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Question 62'
            ''),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            ElevatedButton(onPressed: () async {

              var result = await SimpleAlertDailogBox(context);

              print("${result}");

            }, child: Text("Simple Dailog",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),))
          ],
        ),
      )
    );
  }

  Future< String ? > SimpleAlertDailogBox(BuildContext context) async {

   return await showDialog(context: context,
      barrierDismissible: false,
      builder:  (context) {

      return SimpleDialog(

        title: Text('Select College',style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,

        ),),

        children: [

          SimpleDialogOption(

            onPressed: (){

              Navigator.pop(context,'J.z.shah');
            },
            child: gettext("J.z.shah"),
          ),


          SimpleDialogOption(

            onPressed: (){

              Navigator.pop(context,'r.v.patel');
            },
            child: gettext("R.V.Patel"),
          ),


          SimpleDialogOption(

            onPressed: (){

              Navigator.pop(context,'k.p');
            },
            child: gettext("K.P"),
          ),

          SimpleDialogOption(

            onPressed: (){

              Navigator.pop(context,'d.r.b');
            },
            child: gettext("D.R.B"),
          ),


        ],

      );

    },);

  }
}




