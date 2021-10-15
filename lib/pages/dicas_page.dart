import 'package:flutter/material.dart';
import 'package:flutter_login_signup/pages/curriculo_page.dart';
import 'package:flutter_login_signup/pages/entrevista_page.dart';

class DicasPage extends StatefulWidget {
  DicasPage({Key key}) : super(key: key);


  @override
  _DicasPageState createState() => _DicasPageState();
}

class _DicasPageState extends State<DicasPage> {

  @override
    Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("get@Job"),
          actions: [
          Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
      ),
            Icon(Icons.account_circle),
      ],
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Card(
                color: Colors.blue[100],
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/images/curriculo.jpg"),
                      Divider(),
                    ElevatedButton(
                    child: const Text('Melhore seu Currículo', style: TextStyle(fontSize: 20.0),),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CurriculoPage()),
                        );
                      }
                    ),
                   ],
                 ),
               ),
        ),


              Card(
                color: Colors.blue[100],
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/images/entrevista.jpg"),
                      Divider(),
                      ElevatedButton(
                      child: const Text('Prepare-se para as Entrevistas', style: TextStyle(fontSize: 20.0),),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EntrevistaPage()),
                        );
                      }
                      ),
                    ],
                  ),
                ),
              ),
            ],
      ),
    ),
      ),
   );
  }
}
