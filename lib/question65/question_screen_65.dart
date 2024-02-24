import 'package:assignment_module_4/main.dart';
import 'package:flutter/material.dart';



class Question65 extends StatefulWidget {


  @override
  State<Question65> createState() => _Question17State();
}

class _Question17State extends State<Question65> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text("Question 65"),
      ),

        body: Stack(
          children: [
            InkWell(
              onTap: () {

                Exitfromapp(context);

              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_back),
              ),
            ),

            Center(
              child: Text("Press the back button to show exit alert dialog"),
            )
          ],
        )
    );
  }

  void Exitfromapp(BuildContext context) {

    showDialog(context: context, builder: (context) {

      return AlertDialog(

        title: Text('Are you sure you want to exit the application?'),

        actions: [

          TextButton(onPressed: () {

            Navigator.push(context, MaterialPageRoute(builder: (context) => Homescreen(),));


          }, child: Text("Exit App")),


          TextButton(onPressed: () {

            Navigator.pop(context);

          }, child: Text("Cancel")),



        ],

      );

    },);
  }
}

