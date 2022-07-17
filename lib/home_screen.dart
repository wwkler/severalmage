import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              getText('Material Icon', Colors.blue),
              getSizedBox(15.0),
              getRow1(),
              getSizedBox(45.0),
              getText('Cupertino Icon', Colors.red),
              getSizedBox(15.0),
              getRow2()
            ],
          ),
        ),
      ),
    );
  }

  // Custom Text Function
  Text getText(String text, Color color) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontWeight: FontWeight.w500, fontSize: 30.0),
    );
  }

  // Custom SizedBox Function
  SizedBox getSizedBox(double height) {
    return SizedBox(
      height: height,
    );
  }

  // Custom Row Function
  Row getRow1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        getMaterialIcon(Icons.house),
        getMaterialIcon(Icons.account_circle),
        getMaterialIcon(Icons.settings),
        getMaterialIcon(Icons.done),
      ],
    );
  }

  // Custom Row Function
  Row getRow2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        getCupertinolIcon(CupertinoIcons.add),
        getCupertinolIcon(CupertinoIcons.circle),
        getCupertinolIcon(CupertinoIcons.bolt),
        getCupertinolIcon(CupertinoIcons.rays),
      ],
    );
  }

  // Custom Icon Function
  Icon getMaterialIcon(IconData icon) {
    return Icon(
      icon,
      color: Colors.blue,
      size: 50,
    );
  }

  // Custom Icon Function
  Icon getCupertinolIcon(IconData icon) {
    return Icon(
      icon,
      color: Colors.red,
      size: 50,
    );
  }
}
