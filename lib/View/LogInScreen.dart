import 'dart:ui';

import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget{
  LogInScreen({Key key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen>{
  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  bool isPasswordVisible = false;
  bool signInBtnVisible = true;
  bool signUpBtnVisible = true;
  bool logInFormVisible = false;
  bool cancelBtnVisible = false;
  bool logoVisible = true;

  @override
  Widget build(BuildContext context) {
    double scrWidth = MediaQuery.of(context).size.width;
    double scrHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: scrHeight,
        width: scrWidth,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/Model/Assets/darkBG.jpg'), 
            fit: BoxFit.fill,
          ),
        ),
        child: new BackdropFilter(
          filter: new ImageFilter.blur(
            sigmaX: 5.0,
            sigmaY: 5.0,
          ),
          child: new Container(
            /*decoration: new BoxDecoration(
              color: Colors.white.withOpacity(0.0)
            ),*/
            child: new Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                //-------------------------
                //        SIGN UP
                //-------------------------



                //-------------------------
                //        SIGN IN
                //-------------------------
                new AnimatedPositioned(
                  duration: Duration(milliseconds: 1000),
                  top: !logInFormVisible ? scrHeight * .235 : scrHeight * .285,
                  child: new AnimatedOpacity(
                  opacity: logInFormVisible ? 1.0 : 0.0, 
                  duration: Duration(milliseconds: 1000),
                  child: new Container(
                    width: scrWidth * .75,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: new BorderRadius.all(
                        const Radius.circular(12.0)
                      )
                    ),
                    child: new TextField(
                      enabled: logInFormVisible,
                      decoration: new InputDecoration.collapsed(
                        hintText: "example@domain.com",
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(60, 60, 60, 1),
                          fontSize: scrWidth * .04
                        )
                      ),
                      controller: usernameController,
                      cursorColor: Color.fromRGBO(60, 60, 60, 1),
                      style: TextStyle(
                        color: Color.fromRGBO(60, 60, 60, 1),
                        fontSize: scrWidth * .04
                      ),
                    ),
                  ),
                ),
                ),

                new AnimatedPositioned(
                  duration: Duration(milliseconds: 1000),
                  top: !logInFormVisible ? scrHeight * .355 : scrHeight * .405,
                  child: new AnimatedOpacity(
                  opacity: logInFormVisible ? 1.0 : 0.0, 
                  duration: Duration(milliseconds: 1000),
                  child: new Container(
                    width: scrWidth * .75,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: new BorderRadius.all(
                        const Radius.circular(12.0)
                      )
                    ),
                    child: new TextField(
                      enabled: logInFormVisible,
                      obscureText: !isPasswordVisible,
                      decoration: new InputDecoration.collapsed(
                        hintText: "your password",
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(60, 60, 60, 1),
                          fontSize: scrWidth * .04
                        )
                      ),
                      controller: passwordController,
                      cursorColor: Color.fromRGBO(60, 60, 60, 1),
                      style: TextStyle(
                        color: Color.fromRGBO(60, 60, 60, 1),
                        fontSize: scrWidth * .04
                      ),
                    ),
                  ),
                ),
                ),

                new AnimatedPositioned(
                  top: scrHeight * .405,
                  right: scrWidth * .12,
                  duration: Duration(milliseconds: 1000),
                  child: new AnimatedOpacity(
                    duration: Duration(milliseconds: 1000),
                    opacity: logInFormVisible ? 1.0 : 0.0,
                    child: new Container(
                      width: scrWidth * .15,
                      child: new FlatButton(
                        onPressed: (){
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                        child: Icon(
                          (isPasswordVisible ? Icons.visibility : Icons.visibility_off),
                          color: Color.fromRGBO(60, 60, 60, 1),
                          size: scrWidth * .05,
                        ),
                      ),
                    ),
                  ),
                ),
              
                new AnimatedPositioned(
                  left: scrWidth * .15,
                  top: !logInFormVisible ? scrHeight * .2 : scrHeight * .25,
                  duration: new Duration(milliseconds: 1000),
                  child: new AnimatedOpacity(
                    duration: new Duration(milliseconds: 1000),
                    opacity: logInFormVisible ? 1.0 : 0.0,
                    child: new Container(
                      child: new Text("Email hoặc tên đăng nhập",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: scrWidth * .04,
                        ),
                      ),
                    ),
                  ),
                ),
                new AnimatedPositioned(
                  left: scrWidth * .15,
                  top: !logInFormVisible ?  scrHeight * .32 : scrHeight * .37,
                  duration: new Duration(milliseconds: 1000),
                  child: new AnimatedOpacity(
                    duration: new Duration(milliseconds: 1000),
                    opacity: logInFormVisible ? 1.0 : 0.0,
                    child: new Container(
                      child: new Text("Mật khẩu",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: scrWidth * .04,
                        ),
                      ),
                    ),
                  ),
                ),

                new AnimatedPositioned(
                  top: logoVisible ? scrHeight * .2 : 0,
                
                  duration: Duration(milliseconds: 1000),
                  child: new AnimatedOpacity(                
                    child: new Container(
                      alignment: Alignment.center,
                      child: Image(image: AssetImage(
                        'lib/Model/Assets/name.png'
                      ),
                        //width: scrWidth * .8,
                        //height: scrHeight * .1,
                        //width: logoVisible ? scrWidth * .8 : 0,
                        //height: logoVisible ? scrHeight * .1 : 0,
                      ),
                    ),
                    duration: Duration(milliseconds: 500),
                    opacity: logoVisible ? 1.0 : 0.0,
                  ),
                ),
                new AnimatedPositioned(
                  top: !signInBtnVisible ? scrHeight : (signUpBtnVisible ? scrHeight * .65 : scrHeight * .75),
                  duration: Duration(
                      milliseconds: 1000,
                  ), 
                  child: new AnimatedOpacity(
                    duration: Duration(milliseconds: 1000),
                    opacity: signInBtnVisible ? 1.0 : 0.0,
                    child: new Container(
                      height: scrHeight * .08,
                      width: scrWidth * .7,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white
                        ),
                        borderRadius: BorderRadius.all(
                          const Radius.circular(32.0)
                        ),
                        color: Colors.red[400],
                      ),
                      child: new FlatButton(
                        child: Center(
                          child: new Text("Đăng nhập", 
                            style: TextStyle(
                              color: Colors.white, 
                              fontSize: scrWidth * .05, 
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ),
                        onPressed: (){
                          setState(() {
                            if(signUpBtnVisible){
                              signUpBtnVisible = false;
                              cancelBtnVisible = true;
                              logoVisible = false;
                              logInFormVisible = true;
                            }
                            else{

                            }
                          });
                        },
                      ), 
                    ),
                  ),
                ),
                new AnimatedPositioned(
                  top: signUpBtnVisible ? scrHeight * .75 : scrHeight,
                  duration: Duration(
                      milliseconds: 1000,
                  ), 
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 1000),
                    opacity: signUpBtnVisible ? 1.0 : 0.0,  
                    child: new Container(
                      //height: signUpBtnVisible ? scrHeight * .08 : 0,
                      //width: signUpBtnVisible ? scrWidth * .7 : 0,
                      height: scrHeight * .08,
                      width: scrWidth * .7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          const Radius.circular(32.0)
                        ),
                        color: Colors.white,
                      ),
                      child: new FlatButton(
                        child: Center(
                          child: new Text("Đăng ký", style: TextStyle(color: Colors.red[400], fontSize: scrWidth * .05, fontWeight: FontWeight.w400),)
                        ),
                        onPressed: (){
                          setState(() {
                            if(signInBtnVisible){
                              signInBtnVisible = false;
                              cancelBtnVisible = true;
                              logoVisible = false;
                            }
                          });
                        },
                      ),                  
                    ),
                  ),
                ),
                new AnimatedPositioned(
                  top: scrHeight * .84,
                  duration: Duration(milliseconds: 200),
                  child: new Container(
                    //height: scrHeight * .06,
                    width: scrWidth * .35,
                    child: new FlatButton(
                      child: Center(
                        child: new Text("Quên mật khẩu?", style: TextStyle(color: Colors.white, fontSize: scrWidth * .04, fontWeight: FontWeight.w400),)
                      ),
                      onPressed: (){

                      },
                    ) 
                  ),
                ),
                new AnimatedPositioned(
                  duration: Duration(milliseconds: 200),
                  top: cancelBtnVisible ? scrHeight * .9 : scrHeight,
                  child: new Container(
                    //height: cancelBtnVisible ? scrHeight * .06 : 0,
                    width: scrWidth * .35,
                    child: new FlatButton(
                      child: Center(
                        child: new Text("Huỷ", style: TextStyle(color: Colors.white, fontSize: scrWidth * .04, fontWeight: FontWeight.w400),)
                      ),
                      onPressed: (){
                        setState(() {
                          signInBtnVisible = true;
                          signUpBtnVisible = true;
                          logoVisible = true;
                          cancelBtnVisible = false;
                          logInFormVisible = false;
                        });
                      },
                    ) 
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
}

/*
class SignInScreen extends StatefulWidget{
  SignInScreen({Key key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends  State<SignInScreen>{
  @override
  Widget build(BuildContext context) {
    
    return null;
  }
  
}
*/