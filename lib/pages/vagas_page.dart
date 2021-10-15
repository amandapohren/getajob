import 'package:flutter/material.dart';
import 'package:flutter_login_signup/pages/vaga01_page.dart';
import 'package:flutter_login_signup/CardItemModel.dart';
import 'package:share/share.dart';

class VagasPage extends StatefulWidget {
  VagasPage({Key key}) : super(key: key);

  @override
  _VagasPageState createState() => _VagasPageState();
}

class _VagasPageState extends State<VagasPage> with TickerProviderStateMixin{
  var appColors = [Colors.blue,Color.fromRGBO(99, 138, 223, 1.0),Color.fromRGBO(111, 194, 173, 1.0)];
  var cardIndex = 0;
  ScrollController scrollController;
  var currentColor = Colors.blue;

  var cardsList = [CardItemModel("Consultor de TI  - Home Office -        Porto Alegre-RS", Icons.work, 12, 0.24),CardItemModel("Analista de Infraestrutura de TI  - Canoas- RS", Icons.work, 12, 0.24),CardItemModel("Desenvolvedor Front End -            São Leopoldo-RS", Icons.work, 12, 0.24)];


  AnimationController animationController;
  ColorTween colorTween;
  CurvedAnimation curvedAnimation;

  @override
  void initState() {
    super.initState();
    scrollController = new ScrollController();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: Text("get@Job"),
        backgroundColor: appColors [ cardIndex ],
        actions: [
             Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ),
          Icon(Icons.account_circle),
        ],
      ),
      body:new Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 16.0),
              child: Text("últimas vagas adicionadas", style: TextStyle(color: Colors.grey),),
            ),
          Container(
            height: 600.0,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              controller: scrollController,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, position) {
                return GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Card(
                      child: Container(
                        width: 200.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Icon(cardsList[position].icon, color: appColors[position],),
                                  Icon(Icons.favorite, color: Colors.red,),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 130),
                                  ),
                                  IconButton(icon:Icon(Icons.share),
                                      onPressed:(){
                                        Share.share('check out my website https://example.com');}
                                  ),
                                  ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
                                    child: Text("${cardsList[position].tasksRemaining}  Postagens", style: TextStyle(color: Colors.grey),),
                                  ),
                                     ElevatedButton(
                                      child: const Text('Saiba Mais', style: TextStyle(fontSize: 20.0),),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => Vaga01Page()),
                                           );
                                      }
                                  ),
                                  Divider(),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 4.0),
                                    child: Text("${cardsList[position].cardTitle}", style: TextStyle(fontSize: 28.0),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: LinearProgressIndicator(value: cardsList[position].taskCompletion,),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                    ),
                  ),
                  onHorizontalDragEnd: (details) {

                    animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
                    curvedAnimation = CurvedAnimation(parent: animationController, curve: Curves.fastOutSlowIn);
                    animationController.addListener(() {
                      setState(() {
                        currentColor = colorTween.evaluate(curvedAnimation);
                      });
                    });

                    if(details.velocity.pixelsPerSecond.dx > 0) {
                      if(cardIndex>0) {
                        cardIndex--;
                        colorTween = ColorTween(begin:currentColor,end:appColors[cardIndex]);
                      }
                    }else {
                      if(cardIndex<2) {
                        cardIndex++;
                        colorTween = ColorTween(begin: currentColor,
                            end: appColors[cardIndex]);
                      }
                    }
                    setState(() {
                      scrollController.animateTo((cardIndex)*256.0, duration: Duration(milliseconds: 500), curve: Curves.fastOutSlowIn);
                    });

                    colorTween.animate(curvedAnimation);

                    animationController.forward( );

                  },
                );
              },
            ),
          ),
          ],
        ),
      ),
    );
  }
}





