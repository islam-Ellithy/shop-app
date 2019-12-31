import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 70,
                ),
                Text(
                  'Username',
                  style: TextStyle(fontSize: 30),
                ),
                TextField(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Password',
                  style: TextStyle(fontSize: 30),
                ),
                TextField(),
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Container(
                  width: double.infinity,
                  child: RaisedButton(
                    color: Theme.of(context).primaryColor,
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {},
                  ),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
