import 'package:flutter/material.dart';
import 'package:wider/theme.dart';

class Notifikasi extends StatelessWidget {
  const Notifikasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.1,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: primaryColor,
                      ),
                      color: Colors.amber),
                  child: Text(
                    'Notifikasi',
                    style: blackTextStyle.copyWith(
                        fontSize: 30, fontWeight: semiBold),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.height * 0.08,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: primaryColor,
                        ),
                        color: Colors.grey,
                        // borderRadius: BorderRadius.circular(100.0)),
                      ),
                      // child: Text(
                      //   'Notifikasi',
                      //   style: blackTextStyle.copyWith(
                      //       fontSize: 30, fontWeight: semiBold),
                      //   textAlign: TextAlign.center,
                      // ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.08,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: Text(
                        'Notifikasi',
                        style: blackTextStyle.copyWith(
                            fontSize: 15, fontWeight: semiBold),
                        // textAlign: TextAlign.center
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: header(),
    );
  }
}
