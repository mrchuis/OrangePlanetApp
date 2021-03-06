import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FeedbackScreen extends StatelessWidget {

  final _subjectController = TextEditingController(text: 'Ошибка в приложении ');
  final _bodyController = TextEditingController(text: 'Не работает ');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Обратная связь')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  controller: _subjectController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Тема',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  controller: _bodyController,
                   maxLines: 10,
                    decoration: InputDecoration(
                      labelText: 'Поделитесь подробностями, что произошло', border: OutlineInputBorder()
                    ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: RaisedButton(
                  elevation: 2,
                  child: Text("ОТПРАВИТЬ СООБЩЕНИЕ", style: TextStyle(fontSize: 14)),
                  onPressed: ()=>_sendEmail(),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }

  _sendEmail() async {
    String toMailId = 'orangeplanetcamp@gmail.com';
    String subject = _subjectController.text;
    String body = _bodyController.text;

    var url = 'mailto:$toMailId?subject=$subject&body=$body';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}