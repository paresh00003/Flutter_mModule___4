import 'package:flutter/material.dart';
import 'package:intl/intl.dart';



class QuestionScreen66 extends StatefulWidget {
  const QuestionScreen66({super.key});

  @override
  State<QuestionScreen66> createState() => _QuestionScreen66State();
}

class _QuestionScreen66State extends State<QuestionScreen66> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Question 66'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              onPressed: () async {
                var selectedDate = await showPicker(context);
                if (selectedDate != null) {
                  String formattedDate =
                  DateFormat('yyyy-MM-dd').format(selectedDate);
                  print(formattedDate);
                }
              },
              child: Text('Show Date Picker Dialog'),
            )

          ],
        ),
      ),
    );
  }

  Future<DateTime?> showPicker(BuildContext context) async {
    return await showDatePicker(
      context: context,
      initialDate: DateTime(2011, 9, 10),
      firstDate: DateTime(1947),
      lastDate: DateTime.now(),
    );
  }
}


