import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "hello world title",
        home: Scaffold(
            appBar: AppBar(
              title: Text("hello world"),
              backgroundColor: Colors.blue,
            ),
            body: Builder(
                builder: (context) => SingleChildScrollView(
                        child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Hello travel',
                                style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue[800]),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                'Discover the world',
                                style: TextStyle(
                                    color: Colors.indigoAccent, fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Image.network(
                                'https://aci.aero/wp-content/uploads/2018/06/map-2.png',
                                height: 350,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: RaisedButton(
                                onPressed: () => contactUS(context),
                                child: Text('contact us'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )))));
  }

  void contactUS(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text('Contact Us'),
            content: Text('Mail us at hello@world.com'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('close'))
            ]);
      },
    );
  }
}
