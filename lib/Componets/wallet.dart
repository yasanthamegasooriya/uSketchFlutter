import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
//import 'package:vector_math/vector_math.dart' as math;

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  String cardNumber = '';
  String cardHolderName = '';
  String expriryDate = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("U Sketch"),
        backgroundColor: Color(0xFFBD34C59),
      ),
      body: SafeArea(
        child: Column(
          children: [
            CreditCardWidget(
              cardNumber: cardNumber,
              cardHolderName: cardHolderName,
              expiryDate: expriryDate,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
              height: 200,
              width: MediaQuery.of(context).size.width,
              animationDuration: Duration(microseconds: 1000),
            ),
            // OutlineButton(
            //   child: Text(
            //     "Proceed to Pay",
            //     style: TextStyle(color: Color(0xFFBD34C59)),
            //   ),
            //   onPressed: null,
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(30.0),
            //   ),
            // ),
            Expanded(
              child: SingleChildScrollView(
                child: CreditCardForm(
                  cursorColor: Color(0xFFBD34C59),
                  themeColor: Color(0xFFBD34C59),
                  onCreditCardModelChange: onModeChange,
                ),
              ),
            ),
            SizedBox(height: 8.0),
            OutlineButton(
              child: Text(
                "Proceed to Pay",
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => FunkyOverlay(),
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onModeChange(CreditCardModel model) {
    setState(() {
      cardNumber = model.cardNumber;
      expriryDate = model.expiryDate;
      cardHolderName = model.cardHolderName;
      cvvCode = model.cvvCode;
      isCvvFocused = model.isCvvFocused;
    });
  }
}

class FunkyOverlay extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FunkyOverlayState();
}

class FunkyOverlayState extends State<FunkyOverlay>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> scaleAnimation;
  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticInOut);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Container(
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Text("Your order has been placed."),
            ),
          ),
        ),
      ),
    );
  }
}
