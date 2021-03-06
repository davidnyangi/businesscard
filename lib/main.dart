import 'package:flutter/material.dart';

void main() {
  runApp(
      myApp()
  );
}
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Card'),
        ),
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(radius: 40.0,backgroundImage: AssetImage('images/pic.png'),backgroundColor: Colors.white,),
              Text('David Nyangi',
                style: TextStyle(
                    fontFamily:'Pacifico',
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                ),
              ),
              Text('SOFTWARE ENGINEER',
                style: TextStyle(
                    fontFamily:'SourceSansPro',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5,
                    color: Colors.teal.shade100,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0,),
                child: ExpansionTile(
                  leading: Icon(
                    Icons.phone,
                    color:Colors.teal,
                  ),
                  title: Text(
                    'Mobile',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                    ),
                  ),
                  children:<Widget>[
                    ListTile(
                      title: Text('+255 719 633 499'),
                    )
                  ]
                )
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0,),
                child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: ExpansionTile(
                    leading:Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title:Text('Email',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.teal.shade900,
                      ),
                    ),
                    children:<Widget>[
                      ListTile(
                        title: Text('davidnyangi@gmail.com'),
                      )
                    ]
                  )
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0,),
                child: Padding(
                    padding: EdgeInsets.all(1.0),
                    child: ExpansionTile(
                        leading:Icon(
                          Icons.email,
                          color: Colors.teal,
                        ),
                        title:Text('Website Links',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.teal.shade900,
                          ),
                        ),
                        children:<Widget>[
                          ListTile(
                            title: Text('https://sourcerer.io/davidnyangi'),
                          )
                        ]
                    )
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}