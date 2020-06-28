import 'package:flutter/material.dart';
import 'package:movie_catalogue/model/upcoming.dart';
import 'package:movie_catalogue/theme/theme.dart';
import 'package:movie_catalogue/ui/widget/favorite_button.dart';
import 'package:movie_catalogue/ui/widget/rate_button.dart';

class DetailUpcoming extends StatefulWidget {
  final UpComing upComing;

  DetailUpcoming({@required this.upComing});

  @override
  _DetailUpcomingState createState() => _DetailUpcomingState();
}

class _DetailUpcomingState extends State<DetailUpcoming> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff151626),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SafeArea(
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Image.network(
                        widget.upComing.backdrop,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: <Color>[
                              Color(0xff151626),
                              Colors.transparent,
                            ])),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16, top: 8, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                  size: 25,
                                )),
                          ),
                          FavoriteButton(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(widget.upComing.title,
                style: whiteTextFont.copyWith(fontSize: 25)),
            SizedBox(
              height: 4,
            ),
            Text('Release Date : ' + widget.upComing.release,
                style: whiteTextFont.copyWith(fontSize: 12)),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.language,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      widget.upComing.language,
                      style: whiteTextFont.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 30,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      widget.upComing.vote,
                      style: whiteTextFont.copyWith(
                          color: Colors.yellow, fontSize: 16),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RateButton(),
                    Text(
                      'Rate',
                      style: whiteTextFont.copyWith(fontSize: 16),
                    ),
                  ],
                )
              ],
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style: whiteTextFont.copyWith(fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.upComing.description,
                      style: whiteTextFont,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 24,),
            Container(
              height: 40,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: FlatButton(
                color: Colors.yellow[700],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Text(
                  'Buy Ticket',
                  style: whiteTextFont.copyWith(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                            padding: EdgeInsets.all(24),
                            height: 200,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Buy Ticket',
                                  style: whiteTextFont.copyWith(
                                      color: Colors.grey[900], fontSize: 20),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if (number >= 0) {
                                            number--;
                                          } else {
                                            number = 0;
                                          }
                                        });
                                      },
                                      child: Container(
                                          width: 30,
                                          height: 30,
                                          child:
                                              Image.asset('images/minus.png')),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      number.toString(),
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          number++;
                                        });
                                      },
                                      child: Container(
                                          width: 30,
                                          height: 30,
                                          child: Image.asset('images/add.png')),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                FlatButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    color: Colors.green[300],
                                    onPressed: () {},
                                    child: Text('Confirm')),
                              ],
                            ));
                      });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
