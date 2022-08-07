import 'package:flutter/material.dart';//библиотека material для использования widget
import 'package:url_launcher/url_launcher.dart';//пакет для использования сайта

class MyBody extends StatelessWidget{
  Widget build(BuildContext context) {
    return new Center(child: Column(
       children: [
          new Text('Hello World!'),
          new FlatButton(onPressed: () async {
            const url = 'https://flutter.su';
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Could not launch $url';
            }
          }, child: Text('open site'), color: Colors.red, textColor: Colors.white,),
          new Text('or'),
          new FlatButton(onPressed: () async {
            const url = 'https://flutter.su';
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Could not launch $url';
          }
        }, child: Text('open site'), color: Colors.red, textColor: Colors.white,)]
    ));
  }//функция Widget build(BuildContext context) возвращает объект виджет
}//класс через наследование от уже существующего класса виджета

void main() {
  runApp(
      new MaterialApp(
          debugShowCheckedModeBanner: false,
          home: new Scaffold(
              appBar: new AppBar(title: new Text('Flutter.su')),
              body: new MyBody()
          )
      )
  );
}//заголовок Flutter.su