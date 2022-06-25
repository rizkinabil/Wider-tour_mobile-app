import 'package:flutter/material.dart';
import 'package:wider/widget/rounded_bordered_container.dart';
// import 'package:flutter_ui_challenges/src/pages/invitation/inauth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CheckoutOnePage extends StatelessWidget {
  const CheckoutOnePage({Key? key}) : super(key: key);


  static const String path = "lib/src/pages/ecommerce/cart1.dart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Text(
              "Pilih Pembayaran",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                Expanded(
                  child: RoundedContainer(
                    margin: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 8.0,
                    ),
                    child: Column(
                      children: const <Widget>[
                        Text(
                          "1 day",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          "Rp. 500.000",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: RoundedContainer(
                    margin: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 8.0,
                    ),
                    child: Column(
                      children: const <Widget>[
                        Text(
                          "2 Day",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          "Rp. 750.000",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RoundedContainer(
                    color: Colors.indigo,
                    margin: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 8.0,
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "3 Day",
                          style: const TextStyle(fontWeight: FontWeight.bold).copyWith(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        const Text(
                          "Rp. 1.500.000",
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 12.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: RoundedContainer(
                    margin: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 8.0,
                    ),
                    child: Column(
                      children: const <Widget>[
                        Text(
                          "7 Day",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          "Rp.5.600.000",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            const RoundedContainer(
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(
                  FontAwesomeIcons.paypal,
                  color: Colors.indigo,
                ),
                title: Text("Paypal"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const RoundedContainer(
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(
                  FontAwesomeIcons.googleWallet,
                  color: Colors.indigo,
                ),
                title: Text("Google Pay"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const RoundedContainer(
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(
                  FontAwesomeIcons.applePay,
                  color: Colors.indigo,
                ),
                title: Text("Apple Pay"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 32.0,
              ),
              child: RaisedButton(
                elevation: 0,
                padding: const EdgeInsets.all(24.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.indigo,
                textColor: Colors.white,
                onPressed: () {},
                child: const Text("Bayar"),
              ),
            )
          ],
        ),
      ),
    );
  }
}