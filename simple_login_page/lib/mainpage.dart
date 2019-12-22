import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  // method for small circle, take 2/3 from the phone screen
  double getSmallDiamter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiamter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text(
      //     "Demo App",
      //     style: TextStyle(color: Colors.white),
      //   ),
      //   backgroundColor: Colors.brown,
      // ),
      backgroundColor: Colors.grey[300],
      body: Stack(
        children: <Widget>[
          // Lingkaran Kecil
          Positioned(
            right: -getSmallDiamter(context) / 3,
            top: -getSmallDiamter(context) / 3,
            child: Container(
              width: getSmallDiamter(context),
              height: getSmallDiamter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Colors.amber, Colors.lime],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),
          // Lingkaran Besar
          Positioned(
            left: -getBigDiamter(context) / 4,
            top: -getBigDiamter(context) / 4,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                      child: Text(
                    "百度",
                    style: TextStyle(
                      fontSize: 50,
                      fontFamily: "ZCOOLKuaiLe",
                      color: Colors.white,
                    ),
                  )),
                  Center(
                      child: Text(
                    "App",
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: "Pacifico",
                        color: Colors.white),
                  )),
                ],
              ),
              width: getBigDiamter(context),
              height: getBigDiamter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Colors.amber, Colors.green],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),
          // Lingkaran Kecil di Pojok kanan bawah
          Positioned(
            right: -getBigDiamter(context) / 2,
            bottom: -getBigDiamter(context) / 2,
            child: Container(
              width: getBigDiamter(context),
              height: getBigDiamter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Colors.blueGrey[100], Colors.grey[200]],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),
          // Align the textfield and icons
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: <Widget>[
                // Textfield login page
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                  // Textfield
                  child: Column(
                    children: <Widget>[
                      // Email
                      TextField(
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.email,
                            color: Colors.green,
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green)),
                          labelText: "Email: ",
                          labelStyle: TextStyle(color: Colors.green),
                        ),
                      ),
                      // Password
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.vpn_key,
                            color: Colors.green,
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green)),
                          labelText: "Password: ",
                          labelStyle: TextStyle(color: Colors.green),
                        ),
                      ),
                    ],
                  ),
                ),
                // Forget Password
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                    child: Text(
                      "FORGET PASSWORD?",
                      style: TextStyle(color: Colors.green, fontSize: 16),
                    ),
                  ),
                ),
                // SIGN IN Button + Icons
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      // SIGN IN
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 40,
                        child: Material(
                          borderRadius: BorderRadius.circular(20),
                          elevation: 5,
                          child: Container(
                            // inkwell
                            child: Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.transparent,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                splashColor: Colors.green,
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    "SIGN IN",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                    colors: [Colors.green, Colors.lime],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter)),
                          ),
                        ),
                      ),
                      // The Icons
                      FloatingActionButton(
                        onPressed: () {},
                        mini: true,
                        elevation: 5,
                        child: Image(
                          image: AssetImage("assets/images/fb.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                        mini: true,
                        elevation: 5,
                        child: Image(
                          image: AssetImage("assets/images/tw.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                        mini: true,
                        elevation: 5,
                        child: Image(
                          image: AssetImage("assets/images/ig.png"),
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
                // SIGN UP
                Container(
                  child: Material(
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "DONT HAVE AN ACCOUNT? ",
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.w700),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text("SIGN UP",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w700)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
