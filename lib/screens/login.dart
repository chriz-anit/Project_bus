import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);
  
  @override
  State<Login> createState() => _LoginState();
}


class _LoginState extends State<Login> {
  bool _isObcscure = true;
  bool _rememberMe = false;

  Widget _buildUserTF() {
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'UserID',
          style: TextStyle(
            color: Color.fromARGB(255, 88, 88, 88),
            fontFamily: 'OpenSans',
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          child: const TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 117, 154, 255), width: 2.0),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 88, 88, 88), width: 1.0),
            ),
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.directions_bus,
                color: Color.fromARGB(255, 117, 154, 255),
              ),
              hintText: 'Enter userid',
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordTF() {

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Password',
            style: TextStyle(
              color: Color.fromARGB(255, 88, 88, 88),
              fontFamily: 'OpenSans',
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10.0),
        
          Container(
            alignment: Alignment.centerLeft,
            height: 60.0,
            child: TextField(
              obscureText: _isObcscure,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'OpenSans',
                ),
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(
                    _isObcscure ? Icons.visibility : Icons.visibility_off,
                    color: Color.fromARGB(255, 117, 154, 255),
                  ),
                  onPressed: () {
                      setState(() {_isObcscure = !_isObcscure;});
                  },
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 117, 154, 255), width: 2.0),
                ),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 88, 88, 88), width: 1.0),
                ),
                contentPadding: const EdgeInsets.only(top: 14.0),
                prefixIcon: const Icon(
                  Icons.lock,
                  color: Color.fromARGB(255, 117, 154, 255),
                ),
                hintText: 'Enter password',
              ),
            ),
          ),
        ],
      );
  }

  Widget _buildLoginBtn() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () => print('Login Button Pressed'),
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Color.fromARGB(255, 117, 154, 255),
        child: const Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 117, 154, 255),
      ),*/
      resizeToAvoidBottomInset: false,
      body: /*AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: */Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                right: 0,
                child: Image.asset(
                  "assets/top1.png",
                  width: size.width
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Image.asset(
                  "assets/top2.png",
                  width: size.width
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  "assets/bottom1.png",
                  width: size.width
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  "assets/bottom2.png",
                  width: size.width
                ),
              ),
              
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(height: 100.0),
                      const Text(
                        'Sign In',
                        style: TextStyle(
                          color: Color.fromARGB(255, 117, 154, 255),
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      
                      const SizedBox(height: 30.0),
                      _buildUserTF(),
                      SizedBox(height: 30.0,),
                      _buildPasswordTF(),
                      //_buildForgotPasswordBtn(),
                     // _buildRememberMeCheckbox(),
                      _buildLoginBtn(),
                      /*_buildSignInWithText(),
                      _buildSocialBtnRow(),
                      _buildSignupBtn(),*/
                    ],
                  ),
                ),
              )
            ],
      
          /*),
        ),*/
      ),
    );
  }
}