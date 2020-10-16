import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterloginui/Screen.dart';

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
              accountName: Text("Ravindu"),
              accountEmail: Text("ravindujayakodi71@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
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
                ),
              },
              child: ListTile(
                title: Text("Home Page"),
                leading: Icon(
                  Icons.home,
                  color: Color(0xFFBD34C59),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(
                  Icons.person,
                  color: Color(0xFFBD34C59),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My orders"),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Color(0xFFBD34C59),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("About"),
                leading: Icon(
                  Icons.help,
                  color: Color(0xFFBD34C59),
                ),
              ),
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
          //Input for the sizes
          Column(
            children: [
              Row(children: [
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
                      DropdownMenuItem(child: Text("Third Item"), value: 3),
                      DropdownMenuItem(child: Text("Fourth Item"), value: 4)
                    ],
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    },
                  ),
                ),
                SizedBox(width: 8.0),
                Container(
                  width: 80.0,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter size',
                    ),
                  ),
                )
              ]),
              Row(children: [
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
                      DropdownMenuItem(child: Text("Third Item"), value: 3),
                      DropdownMenuItem(child: Text("Fourth Item"), value: 4)
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
                )
              ]),
              Row(children: [
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
                      DropdownMenuItem(child: Text("Third Item"), value: 3),
                      DropdownMenuItem(child: Text("Fourth Item"), value: 4)
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
                )
              ]),
              Row(children: [
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
                      DropdownMenuItem(child: Text("Third Item"), value: 3),
                      DropdownMenuItem(child: Text("Fourth Item"), value: 4)
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
                )
              ]),
              Row(children: [
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
                      DropdownMenuItem(child: Text("Third Item"), value: 3),
                      DropdownMenuItem(child: Text("Fourth Item"), value: 4)
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
                )
              ]),
              Row(children: [
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
                      DropdownMenuItem(child: Text("Third Item"), value: 3),
                      DropdownMenuItem(child: Text("Fourth Item"), value: 4)
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
                )
              ]),
              Text("Hint")
            ],
          ),

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
