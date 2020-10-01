import 'package:flutter/material.dart';
import 'package:flutterloginui/Componets/cart_product.dart';

class cart extends StatefulWidget {
  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("U Sketch"),
        backgroundColor: Color(0xFFBD34C59),
      ),
      body: cart_product(),
    );
  }
}
