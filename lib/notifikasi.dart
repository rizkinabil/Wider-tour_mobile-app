
import 'package:flutter/material.dart';
import 'package:wider/constants.dart';
import 'package:wider/data.dart';

class ListPage extends StatefulWidget {
  // const ListPage({Key key, this.title}) : super(key: key);

  // final String title;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<DataNotif> notifikasi = getListNotifikasi();  

  // @override
  // void initState() {
    
  //   super.initState();
  //   setState(() {
  //     selectedItem = navigationItems[0];
  //   });
  // }
  late List listtempat;

  @override
  void initState() {
    listtempat = getListNotifikasi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ListTile makeListTile(DataNotif lesson) => ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          leading: Container(
            padding: const EdgeInsets.only(right: 12.0),
            decoration: const BoxDecoration(
                border: Border(
                    right: BorderSide(width: 1.0, color: Colors.white24))),
            child: const Icon(Icons.image, color: Colors.white),
          ),
          title: Text(
            lesson.title,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

          subtitle: Row(
            children: <Widget>[
              // Expanded(
              //     flex: 1,
              //     child: Container(
              //       // tag: 'hero',
              //       child: const LinearProgressIndicator(
              //           backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
              //           // value: lesson.indicatorValue,
              //           valueColor: AlwaysStoppedAnimation(Colors.green)),
              //     )),
              Expanded(
                flex: 4,
                child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(lesson.content,
                        style: const TextStyle(color: Colors.white))),
              )
            ],
          ),
          // trailing:
          //     const Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
          // onTap: () {
          //   Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: (context) => DetailPage(tempat: lesson)));
          // },
        );

    Card makeCard(DataNotif lesson) => Card(
          elevation: 8.0,
          margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: Container(
            decoration: const BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
            child: makeListTile(lesson),
          ),
        );

    final makeBody = Container(
      // decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: listtempat.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(listtempat[index]);
        },
      ),
    );

    final makeBottom = SizedBox(
      height: 55.0,
      child: BottomAppBar(
        color: const Color.fromRGBO(58, 66, 86, 1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.blur_on, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.hotel, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.account_box, color: Colors.white),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
    final topAppBar = AppBar(
      elevation: 0.1,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      title: const Text("Notifikasi", style:TextStyle(color: Colors.black) ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.list, color: Colors.black),
          onPressed: () {},
        )
      ],
    );

    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: topAppBar,
      body: makeBody,
      // bottomNavigationBar: makeBottom,
    );
  }
}
