import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterloginui/Screen.dart';
import 'about.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutterloginui/Componets/wallet.dart';
import 'package:flutterloginui/pages/cart.dart';

class ProductDetails extends StatefulWidget {
  final product_name;
  final product_new_price;
  final product_old_price;
  final product_picture;
  ProductDetails({
    this.product_name,
    this.product_new_price,
    this.product_old_price,
    this.product_picture,
  });
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int _value = 1;
  bool _visibility = true;
  Color currentColor = Colors.black;

  void changeColor(Color color) => setState(() => currentColor = color);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("U Sketch"),
        backgroundColor: Color(0xFFBD34C59),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("U Sketch"),
              accountEmail: Text("usketh20@gmail.com"),
              currentAccountPicture: Image.asset("assets/images/uSketch.jpg"),
              decoration: BoxDecoration(
                color: Color(0xFFBD34C59),
              ),
            ),
            InkWell(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(),
                  ),
                )
              },
              child: ListTile(
                title: Text("Home Page"),
                leading: Icon(
                  Icons.home,
                  color: Color(0xFFBD34C59),
                ),
              ),
            ),
            // InkWell(
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => SecondPage(),
            //       ),
            //     );
            //   },
            //   child: ListTile(
            //     title: Text("My Account"),
            //     leading: Icon(
            //       Icons.person,
            //       color: Color(0xFFBD34C59),
            //     ),
            //   ),
            // ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => cart(),
                  ),
                );
              },
              child: ListTile(
                title: Text("My orders"),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Color(0xFFBD34C59),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => aboutPage(),
                  ),
                );
              },
              child: ListTile(
                title: Text("About"),
                leading: Icon(
                  Icons.help,
                  color: Color(0xFFBD34C59),
                ),
              ),
            ),
            // InkWell(
            //   onTap: () {
            //     // signOutGoogle().then((value) => Navigator.pushAndRemoveUntil(
            //     //     context,
            //     //     MaterialPageRoute(
            //     //       builder: (context) => LoginPage(),
            //     //     ),
            //     //     (route) => false));
            //   },
            //   child: ListTile(
            //     title: Text("Sign Out"),
            //     leading: Icon(
            //       Icons.settings_backup_restore,
            //       color: Color(0xFFBD34C59),
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 400.0,
            ),
            Container(
              color: Colors.black,
              width: double.infinity,
              height: 0.1,
            ),
            Container(
              color: Colors.limeAccent,
              alignment: Alignment.bottomLeft,
              child: Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Row(
                    children: [
                      Text("Made in "),
                      Container(
                          height: 20.0,
                          width: 20.0,
                          child: Image.asset("assets/images/srilanka.jpg")),
                      Text(" with"),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              color: Colors.black,
              width: double.infinity,
              height: 0.1,
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.product_name),
                ),
              ),
            ),
          ),
          // Row(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: RaisedButton(
          //         color: Colors.lime,
          //         onPressed: () {},
          //         child: Row(
          //           children: [
          //             Text("Add Sizes"),
          //             Icon(
          //               Icons.add,
          //               color: Colors.blue,
          //             )
          //           ],
          //         ),
          //       ),
          //     ),
          //     SizedBox(
          //       width: 10.0,
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: RaisedButton(
          //         onPressed: () {},
          //         child: Row(
          //           children: [
          //             Text("Remove Sizes"),
          //             Icon(
          //               Icons.cancel,
          //               color: Colors.red,
          //             )
          //           ],
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 10.0),
            child: Text("Type your Sizes"),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 30.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red, //this has no effect
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: "Enter Your Sizes",
              ),
            ),
          ),

          Row(
            children: [
              Container(
                padding: EdgeInsets.all(30.0),
                child: Text("Select Color"),
              ),
              SizedBox(width: 8.0),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  color: Colors.white,
                  width: 80.0,
                  child: RaisedButton(
                      elevation: 3.0,
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              titlePadding: const EdgeInsets.all(0.0),
                              contentPadding: const EdgeInsets.all(0.0),
                              content: SingleChildScrollView(
                                child: ColorPicker(
                                  pickerColor: currentColor,
                                  onColorChanged: changeColor,
                                  colorPickerWidth: 300.0,
                                  pickerAreaHeightPercent: 0.7,
                                  enableAlpha: true,
                                  displayThumbColor: true,
                                  showLabel: true,
                                  paletteType: PaletteType.hsv,
                                  pickerAreaBorderRadius:
                                      const BorderRadius.only(
                                    topLeft: const Radius.circular(2.0),
                                    topRight: const Radius.circular(2.0),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: const Text(''),
                      color: currentColor,
                      textColor: Colors.black54),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  width: 80.0,
                  child: Text("Select Your Supplier"),
                ),
              ),
              Container(
                padding: EdgeInsets.all(30.0),
                child: DropdownButton(
                  iconSize: 20.0,
                  value: _value,
                  items: [
                    DropdownMenuItem(
                      child: Row(
                        children: [
                          Container(
                            child: Image.asset("assets/images/sup1.jpeg"),
                            width: 50.0,
                            height: 50.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text("Aurelia")
                        ],
                      ),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Row(
                        children: [
                          Container(
                            child: Image.asset("assets/images/sup2.png"),
                            width: 50.0,
                            height: 50.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text("Leema Tailors")
                        ],
                      ),
                      value: 2,
                    ),
                    DropdownMenuItem(
                      child: Row(
                        children: [
                          Container(
                            child: Image.asset("assets/images/sup3.png"),
                            width: 50.0,
                            height: 50.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text("Ishi Apparels")
                        ],
                      ),
                      value: 3,
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                ),
              ),
              SizedBox(width: 8.0),
            ],
          ),
          //Input for the sizes
          // Column(
          //   children: [
          //     SizeDetails(),
          //     Visibility(visible: _visibility, child: SizeDetails()),
          //   ],
          // ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: RaisedButton(
                color: Color(0xFFBD34C59),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Wallet(),
                    ),
                  );
                },
                child: Text(
                  "PAY",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w800),
                ),
              ),
              height: 30.0,
              width: 30.0,
            ),
          )

          // Row(
          //   children: [
          //     Expanded(
          //       child: MaterialButton(
          //         onPressed: () {},
          //         color: Colors.white,
          //         textColor: Colors.grey,
          //         elevation: 0.2,
          //         child: Row(
          //           children: [
          //             Expanded(
          //               child: Text("Size"),
          //             ),
          //             Expanded(
          //               child: Icon(
          //                 Icons.arrow_drop_down,
          //               ),
          //             )
          //           ],
          //         ),
          //       ),
          //     ),
          //     Expanded(
          //       child: MaterialButton(
          //         onPressed: () {},
          //         color: Colors.white,
          //         textColor: Colors.grey,
          //         elevation: 0.2,
          //         child: Row(
          //           children: [
          //             Expanded(
          //               child: Text("Size"),
          //             ),
          //             Expanded(
          //               child: Icon(
          //                 Icons.arrow_drop_down,
          //               ),
          //             )
          //           ],
          //         ),
          //       ),
          //     ),
          //     Expanded(
          //       child: MaterialButton(
          //         onPressed: () {},
          //         color: Colors.white,
          //         textColor: Colors.grey,
          //         elevation: 0.2,
          //         child: Row(
          //           children: [
          //             Expanded(
          //               child: Text("Size"),
          //             ),
          //             Expanded(
          //               child: Icon(
          //                 Icons.arrow_drop_down,
          //               ),
          //             )
          //           ],
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          // Row(
          //   children: [
          //     Expanded(
          //       child: MaterialButton(
          //         onPressed: () {},
          //         color: Colors.red,
          //         textColor: Colors.white,
          //         elevation: 0.2,
          //         child: Row(
          //           children: [
          //             Expanded(
          //               child: Text("Buy Now"),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //     Expanded(
          //       child: Icon(
          //         Icons.add_shopping_cart,
          //         color: Colors.red,
          //       ),
          //     ),
          //     Expanded(
          //       child: Icon(
          //         Icons.favorite_border,
          //         color: Colors.red,
          //       ),
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}

class SizeDetails extends StatefulWidget {
  @override
  _SizeDetailsState createState() => _SizeDetailsState();
}

class _SizeDetailsState extends State<SizeDetails> {
  int _value = 1;
  bool _visibility = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(30.0),
          child: DropdownButton(
            value: _value,
            items: [
              DropdownMenuItem(
                child: Text("First Item"),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("Second Item"),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text("Third Item"),
                value: 3,
              ),
              DropdownMenuItem(
                child: Text("Fourth Item"),
                value: 4,
              )
            ],
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
          ),
        ),
        SizedBox(width: 8.0),
        Padding(
          padding: const EdgeInsets.all(0.0),
          child: Container(
            width: 80.0,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter size',
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              _visibility = true;
            });
            return _visibility;
          },
          child: Icon(
            Icons.add,
            color: Colors.blue,
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        InkWell(
          onTap: () {},
          child: Icon(
            Icons.cancel,
            color: Colors.red,
          ),
        )
      ],
    );
  }
}
