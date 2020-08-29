import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Login App',
    home: HomeScreen()
));

class HomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    //TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Center(
              child: Container(
                width: 400,
                height: 1500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50,40,50,10),
                      child: Image.asset('images/logo.png',width: 80,height: 60,),
                    ),


                    Container(
                      padding: EdgeInsets.fromLTRB(30, 200, 30, 1.0),
                      width: 300,
                      child: Material(
                        elevation: 5.0,

                        color: Colors.orange,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: 'User ID',
                              fillColor: Colors.grey[200],
                              filled: true
                          ),
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,

                              color: Colors.grey[1500]
                          ),
                        ),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(30, 1.0, 30, 1.0),
                      width: 300,
                      child: Material(
                        elevation: 5.0,
                        color: Colors.orange,
                        child: TextField(
                          obscureText: true,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: 'Password',
                              fillColor: Colors.grey[100],
                              filled: true

                          ),
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[1500]
                          ),
                        ),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(100, 8.0, 100, 0),
                      width: 150,
                      child: RaisedButton(onPressed: (){},color: Colors.yellow,textColor: Colors.black,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        child: Text('Login',style: TextStyle(
                            fontSize: 20.0
                        ),),),
                    ),


                    Container(
                      padding: EdgeInsets.fromLTRB(100, 1.0, 10, 1.0),
                      child: Text('Want to be a TAT-Zi Master?',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'OpenSans',
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          )
                      ),
                    ),


                    Container(
                      padding: EdgeInsets.fromLTRB(30, 60, 30, 1.0),
                      width: 150,
                      height: 110,
                      child: RaisedButton(onPressed: (){},color: Colors.black,textColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        child: Text('Forget Password',style: TextStyle(
                            fontSize: 15.0
                        ),),),
                    ),


                  ],
                ),
              )
          )
      ),
    );
  }
}