import 'dart:io';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: QuizApp(),
    ),
  ));
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              main1(context);
            },
            child: Text('เริ่มคำถามข้อที่ 1-6'),
          ),
          ElevatedButton(
            onPressed: () {
              main2(context);
            },
            child: Text('เริ่มคำถามข้อที่ 7-10'),
          ),
        ],
      ),
    );
  }
}

void main1(BuildContext context) {
  TextEditingController answerController1 = TextEditingController();
  TextEditingController answerController2 = TextEditingController();
  TextEditingController answerController3 = TextEditingController();
  TextEditingController answerController4 = TextEditingController();
  TextEditingController answerController5 = TextEditingController();
  TextEditingController answerController6 = TextEditingController();

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('เริ่มคำถามข้อที่ 1-6'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildQuestion('1. อะไรคือส่วนประกอบหลักของรถ?'),
              buildAnswerField(answerController1),
              buildQuestion('2. อะไรคือประเภทของรถยนต์ที่พบบ่อย?'),
              buildAnswerField(answerController2),
              buildQuestion('3. อะไรคือระบบขับเคลื่อนที่พบบ่อยในรถ?'),
              buildAnswerField(answerController3),
              buildQuestion('4. อะไรคือเครื่องยนต์ที่ใช้ในรถยนต์?'),
              buildAnswerField(answerController4),
              buildQuestion('5. อะไรคือเทคโนโลยีใหม่ ๆ ในรถยนต์?'),
              buildAnswerField(answerController5),
              buildQuestion('6. อะไรคือข้อดีของการใช้รถยนต์?'),
              buildAnswerField(answerController6),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('OK'),
          ),
        ],
      );
    },
  );
}

void main2(BuildContext context) {
  TextEditingController answerController7 = TextEditingController();
  TextEditingController answerController8 = TextEditingController();
  TextEditingController answerController9 = TextEditingController();
  TextEditingController answerController10 = TextEditingController();

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('เริ่มคำถามข้อที่ 7-10'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildQuestion('7.  อะไรคือข้อเสียของการใช้รถยนต์?'),
              buildAnswerField(answerController7),
              buildQuestion('8. อะไรคือวิธีการประหยัดน้ำมันรถ?'),
              buildAnswerField(answerController8),
              buildQuestion('9. อะไรคือมารยาทในการขับขี่บนท้องถนน?'),
              buildAnswerField(answerController9),
              buildQuestion(
                  '10. อะไรคือสิ่งที่ควรทำเมื่อเกิดอุบัติเหตุบนท้องถนน?'),
              buildAnswerField(answerController10),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('OK'),
          ),
        ],
      );
    },
  );
}

Widget buildQuestion(String questionText) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8.0),
    child: Text(
      questionText,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
  );
}

Widget buildAnswerField(TextEditingController controller) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 4.0),
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'กรอกคำตอบ',
      ),
    ),
  );
}
