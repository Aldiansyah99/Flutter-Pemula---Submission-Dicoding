import 'package:flutter/material.dart';
import 'package:movie_catalogue/theme/theme.dart';
import 'package:movie_catalogue/ui/page/profile_page.dart';
import 'package:movie_catalogue/ui/widget/list_now_playing.dart';
import 'package:movie_catalogue/ui/widget/list_popular.dart';
import 'package:movie_catalogue/ui/widget/list_upcoming.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  color: Color(0xff1c203b),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfilePage()));
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 16),
                            width: 50,
                            height: 50,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image(
                                    fit: BoxFit.cover,
                                    image: AssetImage('images/aldi.jpg'))),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Aldiansyah Fahmi',
                                style: whiteTextFont.copyWith(fontSize: 16)),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Android Developer',
                              style: whiteTextFont.copyWith(fontSize: 12),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'IDR 100.000',
                              style: whiteTextFont.copyWith(
                                  fontSize: 14,
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 30,
                      width: 75,
                      margin: EdgeInsets.only(right: 16),
                      child: FlatButton(
                        color: Colors.green,
                        child: Text(
                          'Top Up',
                          style: whiteTextFont.copyWith(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Container(
                                  padding: EdgeInsets.all(16),
                                  height: 250,
                                  child: Column(
                                    children: [
                                      Text(
                                        'Top Up',
                                        style: whiteTextFont.copyWith(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ItemTopUp(
                                            jumlah: '50.000',
                                          ),
                                          SizedBox(
                                            width: 16,
                                          ),
                                          ItemTopUp(
                                            jumlah: '100.000',
                                          ),
                                          SizedBox(
                                            width: 16,
                                          ),
                                          ItemTopUp(
                                            jumlah: '150.000',
                                          ),
                                        ],
                                      ),
                                      // SizedBox(height: 16,),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ItemTopUp(
                                            jumlah: '200.000',
                                          ),
                                          SizedBox(
                                            width: 16,
                                          ),
                                          ItemTopUp(
                                            jumlah: '250.000',
                                          ),
                                          SizedBox(
                                            width: 16,
                                          ),
                                          ItemTopUp(
                                            jumlah: '300.000',
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width: 200,
                                        child: FlatButton(
                                            color: Colors.green[300],
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            onPressed: () {},
                                            child: Text('Confirm',
                                                style: whiteTextFont.copyWith(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold))),
                                      )
                                    ],
                                  ),
                                );
                              });
                        },
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                margin: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Now Playing',
                            style: whiteTextFont.copyWith(fontSize: 16),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          ListNowPlaying(),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Popular',
                            style: whiteTextFont.copyWith(fontSize: 16),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          ListPopular(),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Upcoming',
                            style: whiteTextFont.copyWith(fontSize: 16),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          ListUpComing(),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ItemTopUp extends StatefulWidget {
  final String jumlah;
  ItemTopUp({this.jumlah});

  @override
  _ItemTopUpState createState() => _ItemTopUpState();
}

class _ItemTopUpState extends State<ItemTopUp> {
  bool onpress = false;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: onpress ? Colors.yellow[700] : Colors.grey[350],
      onPressed: () {
        setState(() {
          onpress = !onpress;
        });
      },
      child: Text(
        widget.jumlah,
        textAlign: TextAlign.center,
      ),
    );
  }
}
