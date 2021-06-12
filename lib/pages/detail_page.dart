import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  static final String id = 'detail_page';
 // const DetailPage({Key? key}) : super(key: key);

    final String name;
    final int age ;

  DetailPage(this.name,  this.age);
  

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: (){
            Navigator.of(context).pop({'data': 'Dart', 'age': 33});
          },
        child:  Text((widget.name + widget.age.toString()), style: TextStyle(color: Colors.white),),
          style: TextButton.styleFrom(
            backgroundColor: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}
