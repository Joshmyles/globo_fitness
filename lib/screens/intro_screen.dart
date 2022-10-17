import 'package:flutter/material.dart';
import '../shared/menu_drawer.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Globo Fitness')),
        drawer: MenuDrawer(),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            switch (index) {
              case 0:
                Navigator.pushNamed(context, '/');
                break;
              case 1:
                Navigator.pushNamed(context, '/bmi');
                break;
            }
          },
          items:[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
            ), //BottomNavigationBarItem
            BottomNavigationBarItem(
              icon: Icon(Icons.monitor_weight),
              label: 'BMI'
            ), //BottomNavigationBarItem
          ]
        )
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/bobby5.jpeg'),
            fit: BoxFit.cover,
          )),
          child: Center(
              child: Container(
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white70,
            ),
            child:
                Text('Commit to be fit, date to be great \nwith Globo Fitness',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, shadows: [
                      Shadow(
                        offset: Offset(1, 1),
                        blurRadius: 2,
                        color: Colors.grey,
                      )
                    ])),
          )),
        ));
  }
}
