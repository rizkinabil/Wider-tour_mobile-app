import 'package:flutter/material.dart';
import 'package:wider/constants.dart';
import 'package:wider/data.dart';

class Detail extends StatefulWidget {

  final Place place;

  const Detail({required this.place});

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {

  int _currentImage = 0;

  List<Widget> buildPageIndicator(){
    List<Widget> list = [];
    for (var i = 0; i < widget.place.images.length; i++) {
      list.add(buildIndicator(i == _currentImage));
    }
    return list;
  }

  Widget buildIndicator(bool isActive){
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 3.0),
      height: 4.0,
      width: isActive ? 24.0 : 12.0,
      decoration: BoxDecoration(
        color: isActive ? kPrimaryColor : Colors.grey[400],
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: const <Widget>[

          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),

        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Stack(
            children: <Widget>[

              Hero(
                tag: widget.place.images[0],
                child: PageView(
                  onPageChanged: (int page){
                    setState(() {
                      _currentImage = page;
                    });
                  },
                  children: widget.place.images.map((image) {
                    return ColorFiltered(
                      colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(image), 
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[

                    GestureDetector(
                      onTap: () {
                        setState(() {
                          widget.place.favorite = !widget.place.favorite;
                        });
                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(
                          widget.place.favorite ? Icons.favorite : Icons.favorite_border,
                          color: kPrimaryColor,
                          size: 36,
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 16,
                    ),

                    Container(
                      child: Text(
                        widget.place.description,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 16,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        
                        Row(
                          children: <Widget>[

                            const Icon(
                              Icons.location_on,
                              color: Colors.white,
                              size: 24,
                            ),

                            const SizedBox(
                              width: 8,
                            ),

                            Text(
                              widget.place.country,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),

                          ],
                        ),

                        widget.place.images.length > 1
                        ? Row(
                          children: buildPageIndicator(),
                        )
                        : Container(),

                      ],
                    ),

                    const SizedBox(
                      height: 16,
                    ),

                    Row(
                      children: <Widget>[

                        const Text(
                          "Starting from",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),

                        const SizedBox(
                          width: 8,
                        ),

                        Text(
                          r"Rp " + widget.place.price.toStringAsFixed(3) + "/Malam",
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),
                        ),

                      ],
                    ),

                    const SizedBox(
                      height: 16,
                    ),

                    Container(
                      height: 60,
                      margin: const EdgeInsets.symmetric(vertical: 8,),
                      // decoration: BoxDecoration(
                      //   color: kPrimaryColor,
                      //   borderRadius: const BorderRadius.only(
                      //     topLeft: Radius.circular(10),
                      //     topRight: Radius.circular(10),
                      //     bottomLeft: Radius.circular(30),
                      //     bottomRight: Radius.circular(30),
                      //   )
                      child: Center(
                        
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, "/checkout");
                          },
                          style: ElevatedButton.styleFrom(
                            primary: kPrimaryColor,
                            padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 20),
                            
                          ),
                          child: const Text('Booking'),
                          
                        ),
                      ),
                      ),
                    

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}