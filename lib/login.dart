import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  _formFilds() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 35, right: 35),
          child: Material(
            elevation: 7,
            borderRadius: BorderRadius.circular(40),
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter Username",
                  contentPadding: EdgeInsets.only(top: 14),
                  hintStyle: TextStyle(color: Colors.grey[400]),
                  prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 12, right: 25),
                      child: Icon(
                        Icons.person_outline,
                      ))),
            ),
          ),
        ),
        Container(
          height: 25,
        ),
        Padding(
          padding: EdgeInsets.only(left: 35, right: 35),
          child: Material(
            elevation: 7,
            borderRadius: BorderRadius.circular(40),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter Password",
                  contentPadding: EdgeInsets.only(top: 14),
                  hintStyle: TextStyle(color: Colors.grey[400]),
                  
                  suffixIcon: Padding(
                      padding: EdgeInsets.only(left: 12, right: 12),
                      child: Icon(
                        Icons.help_outline,
                        color: Colors.grey[400],
                      )),
                  prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 12, right: 25),
                      child: Icon(
                        Icons.lock_outline,
                      ))),
            ),
          ),
        ),
        SizedBox(
            height: 50,
          ),
        RaisedButton(
            elevation: 7,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
            padding: EdgeInsets.only(left: 100, right: 100, top: 13, bottom: 13),
            onPressed: () {},
            color: Colors.pink[500],
            child: Text(
              "Login",
              style: TextStyle(color: Colors.white),
            ),
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.7), BlendMode.overlay),
              image: AssetImage('assets/background.png'),
              fit: BoxFit.cover)),
      child: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 15, top: 30),
              width: double.infinity,
              alignment: Alignment.topLeft,
              child: Icon(
                Icons.menu,
                size: 30,
                color: Colors.pink[200],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 30,
                ),
                Text(
                  "Sign in",
                  style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[400]),
                ),
              ],
            ),
            SizedBox(height: 60,),
            _formFilds(),
             
            
          ],
        ),
      ),
    );
  }
}
