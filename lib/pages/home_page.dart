import 'package:flutter/material.dart';
import 'package:mydemoapp4/pages/detail_page.dart';

class HomePage extends StatefulWidget {
  static final  String id = 'home_page';
  //const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String data = 'Button one';

  Future _openDetils() async{

    Map results = await Navigator.of(context).push(new MaterialPageRoute(
        builder: (BuildContext context){
          return DetailPage('Flutter',  22);
        }
        ));
    if(results != null && results.containsKey('data')&& results.containsKey('age')){
     setState(() {
       data = results['data'] + results['age'].toString();
     });
    }else{
      print('Nothing');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
         child: Text( data , style: TextStyle(color: Colors.white),),
          style: TextButton.styleFrom(
            backgroundColor: Colors.green,
          ),
          onPressed: () {
           _openDetils();
          // Navigator.pushReplacementNamed(context,DetailPage.id);
         },
         ),
        ),
    );
  }
}
