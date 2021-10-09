import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_payment_app/component/colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Container(
        height: h,
        child: Stack(
          children: [
            _headSection(),
          ],
        ),
      ),
    );
  }
  _headSection(){
    return Container(
      height: 310,
      child: Stack(
        children: [
          _mainBackground(),
          _curveImageContainer(),
          _buttonContainer(),
        ],
      ),
    );
  }
  _mainBackground(){
    return Positioned(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "images/background.png"
            ),
          ),
        ),
      ),
    );
  }
  _curveImageContainer(){
    return Positioned(
      left: 0,
        right: -2,
        bottom: 0,
        child: Container(
          height: MediaQuery.of(context).size.height*0.1,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                  "images/curve.png"
              ),
            ),
          ),
    )
    );
  }
  _buttonContainer(){
    return Positioned(child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "images/lines.png"
          )
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 15,
            offset: Offset(0, 1),
            color: Color(0xFF11324d).withOpacity(0.2)
          )
        ]
      ),
    ));
  }
}
